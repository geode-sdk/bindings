// Sync your RE'd addresses to & from GeometryDash.bro 
// @author HJfod
// @category GeodeSDK

import ghidra.app.script.GhidraScript;
import ghidra.program.model.data.AbstractFloatDataType;
import ghidra.program.model.data.CategoryPath;
import ghidra.program.model.data.DataType;
import ghidra.program.model.data.DataTypeConflictHandler;
import ghidra.program.model.data.DataTypePath;
import ghidra.program.model.data.DoubleDataType;
import ghidra.program.model.data.EnumDataType;
import ghidra.program.model.data.FloatDataType;
import ghidra.program.model.data.PointerDataType;
import ghidra.program.model.data.StructureDataType;
import ghidra.program.model.listing.ParameterImpl;
import ghidra.program.model.listing.ReturnParameterImpl;
import ghidra.program.model.listing.Variable;
import ghidra.program.model.listing.VariableStorage;
import ghidra.program.model.listing.Function.FunctionUpdateType;
import ghidra.program.model.symbol.Namespace;
import ghidra.program.model.symbol.SourceType;

import java.io.File;
import java.nio.file.Files;
import java.text.MessageFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// https://www.baeldung.com/java-lambda-exceptions
@FunctionalInterface
interface ThrowingConsumer<T, E extends Exception> {
    void accept(T t) throws E;
}

class Regexes {
    static final Pattern GRAB_NAMED_GROUP = Pattern.compile("(?<=\\(\\?)<\\w+>", 0);
    
    static final<T> String removeNamedGroups(T pattern) {
        return GRAB_NAMED_GROUP.matcher(pattern.toString()).replaceAll(":");
    }
    static final<T> String formatRegex(String fmt, T... args) {
        return MessageFormat.format(
            fmt,
            Arrays.asList(args).stream().map(p -> removeNamedGroups(p)).toArray()
        );
    }
    static final Pattern generateRecursiveRegex(String format, int depth, String basecase, int flags) {
        var result = MessageFormat.format(format, basecase);
        while (depth > 0) {
            result = MessageFormat.format(format, removeNamedGroups(result));
            depth -= 1;
        }
        return Pattern.compile(result, flags);
    }

    public static final Pattern GRAB_LINK_ATTR = Pattern.compile(
        "link\\((?<platforms>.*?)\\)",
        Pattern.DOTALL
    );
    public static final Pattern GRAB_CLASSES = Pattern.compile(
        // Grab attributes
        "(?<attrs>\\[\\[.*?\\]\\]\\s*)?" + 
        // Grab name
        "class (?<name>(?:\\w+::)*\\w+)\\s+(?::.*?)?" + 
        // Grab body (assuming closing brace is on its own line without any preceding whitespace)
        "\\{(?<body>.*?)^\\}",
        Pattern.DOTALL | Pattern.MULTILINE
    );
    public static final Pattern GRAB_TYPE = generateRecursiveRegex(
        "(?<lconst>\\bconst\\s+)?(?<name>(?:\\w+::)*\\w+)(?<template><(?:{0})(?:\\s*,\\s*(?:{0}))*>)?(?<rconst>\\s+const\\b)?(?<ptr>\\**)(?<ref>&*)",
        2,
        "__depth_limit",
        Pattern.DOTALL
    );
    public static final Pattern GRAB_PARAM = Pattern.compile(
        formatRegex(
            "(?<type>{0})(?:\\s+(?<name>\\w+))?",
            GRAB_TYPE
        ),
        Pattern.DOTALL
    );
    public static final Pattern GRAB_FUNCTION = Pattern.compile(
        formatRegex(
            // Must match start of line (MULTILINE flag required) - also requires that the 
            // function not be intended more than 4 spaces or a single tab
            // "(?<=^(?:(?: {0,4})|\\t))" + 
            // Get the dispatch modifier keyword if one is defined
            "(?<dispatch>(?:inline|virtual|static|callback)\\s+)?" +
            // Grab the return type and name of the function, or the name if it's a destructor
            "(?:(?:(?<return>{0})\\s+(?<name>\\w+))|(?<destructor>~\\w+))" + 
            // Grab the parameters
            "\\(\\s*(?<params>(?:{1},?)*)\\)" +
            // Grab the platforms
            "(?:\\s*=\\s*(?<platforms>(?:[a-z]+\\s+0x[0-9a-fA-F]+\\s*,?\\s*)+))?",
            GRAB_TYPE, GRAB_PARAM
        ),
        Pattern.DOTALL | Pattern.MULTILINE
    );
    public static final Pattern GRAB_WIN_ADDRESS = Pattern.compile(
        "win\\s+0x(?<addr>[0-9a-fA-F]+)",
        Pattern.DOTALL
    );
    public static final Pattern GRAB_MAC_ADDRESS = Pattern.compile(
        "mac\\s+0x(?<addr>[0-9a-fA-F]+)",
        Pattern.DOTALL
    );
}

enum CConv {
    CDECL,
    THISCALL,
    MEMBERCALL,
    FASTCALL,
    OPTCALL,
}

public class SyncBromaScript extends GhidraScript {
    int importedCount = 0;

    public void run() throws Exception {
        // Get the bindings directory from the location of this script
        // todo: maybe ask the user for this if the script is not in the expected place?
        var bindingsDir = new File(this.sourceFile.getParentFile().getParentFile().toString() + "/bindings");
        if (!bindingsDir.isDirectory()) {
            throw new Error("SyncBromaScript should be located in <Geode bindings>/scripts!");
        }
        print("Bindings directory: {0}", bindingsDir.toPath().toString());

        // Get all available bindings versions from the bindings directory
        List<File> versions = new ArrayList<File>();
        for (var file : bindingsDir.listFiles()) {
            if (file.isDirectory()) {
                versions.add(file);
            }
        }
        var targetBromas = List.of("Cocos2d.bro", "GeometryDash.bro");

        // Get the target platform and version from the user
        var platform = askChoice(
            "Select target platform",
            "Please select the platform you want to sync bindings for",
            getPlatformOptions(),
            // todo: try to automatically figure out
            null
        );
        // Since Windows has Cocos addresses elsewhere, only one can be merged at a time
        if (platform.equals("Windows")) {
            targetBromas = List.of(askChoice(
                "Select Broma",
                "Please select the Broma file to merge",
                targetBromas,
                null
            ));
        }
        var platformAddrGrab = getPlatformAddrPattern(platform);
        var version = askChoice(
            "Select game version",
            "Please select the game version you want to sync bindings for",
            versions.stream().map(e -> e.getName().toString()).toList(),
            versions.get(versions.size() - 1).getName().toString()
        );

        print("Loading addresses from Bindings...");
        var bindingsVerDir = new File(bindingsDir.toPath().toString() + "/" + version);
        var listing = currentProgram.getListing();

        // Read the broma files and merge function addresses & their signatures into Ghidra
        for (var bro : targetBromas) {
            var file = new File(bindingsVerDir.toPath().toString() + "/" + bro);
            print("Reading {0}...", bro);
            matchAll(
                Regexes.GRAB_CLASSES,
                new String(Files.readAllBytes(file.toPath())),
                cls -> {
                    var linkValue = false;
                    var attrs = cls.group("attrs");
                    if (attrs != null) {
                        var attr = Regexes.GRAB_LINK_ATTR.matcher(attrs);
                        if (attr.find()) {
                            if (attr.group("platforms").contains(getPlatformLinkName(platform))) {
                                linkValue = true;
                            }
                        }
                    }
                    final var link = linkValue;
                    matchAll(
                        Regexes.GRAB_FUNCTION, 
                        cls.group("body"),
                        fun -> {
                            // Get function name either from destructor or custom name
                            var name = fun.group("destructor");
                            if (name == null) {
                                name = fun.group("name");
                            }
                            final var fullName = cls.group("name") + "::" + name;

                            // Get the address of this function on the platform, 
                            // or if it's not defined, then skip this function 
                            // (since there's nothing to import)
                            var platforms = fun.group("platforms");
                            if (platforms == null) {
                                return;
                            }
                            var plat = platformAddrGrab.matcher(platforms);
                            if (!plat.find()) {
                                return;
                            }
                            var offset = Integer.parseInt(plat.group("addr"), 16);
                            // The hardcoded placeholder addr
                            if (offset == 0x9999999) {
                                return;
                            }
                            var addr = currentProgram.getImageBase().add(offset);

                            print("Importing {0}...", name);

                            // Get the function defined at the address, or 
                            var data = listing.getFunctionAt(addr);
                            if (data == null) {
                                data = createFunction(addr, name);
                                if (data == null) {
                                    throw new Error("Unable to create a function at address " + addr.toString());
                                }
                                data.setParentNamespace(parseNamespace(cls.group("name")));
                            }

                            // Get the calling convention
                            final var cconv = getCallingConvention(platform, link, fun);
                            
                            // Parse return type, or null if this is a destructor
                            ReturnParameterImpl bromaRetType = null;
                            var retTypeStr = fun.group("return");
                            if (retTypeStr != null) {
                                bromaRetType = new ReturnParameterImpl(
                                    parseType(retTypeStr),
                                    currentProgram
                                );
                            }

                            // Parse args
                            var bromaParams = new ArrayList<Variable>();
                            matchAll(
                                Regexes.GRAB_PARAM,
                                fun.group("params"),
                                param -> {
                                    bromaParams.add(new ParameterImpl(
                                        param.group("name"),
                                        parseType(param.group("type")),
                                        currentProgram
                                    ));
                                }
                            );

                            // Ask for mismatches between the incoming signature
                            var autoParamCount = 0;
                            for (var i = 0; i < data.getParameterCount(); i += 1) {
                                var param = data.getParameter(i);
                                if (param.isAutoParameter()) {
                                    autoParamCount += 1;
                                    continue;
                                }
                                var bromaParam = bromaParams.get(i - autoParamCount);
                                // Only care about mismatches against user-defined types
                                if (param.getSource() == SourceType.USER_DEFINED) {
                                    if (
                                        !param.getDataType().isEquivalent(bromaParam.getDataType()) ||
                                        (
                                            param.getName() != null && bromaParam.getName() != null &&
                                            !param.getName().equals(bromaParam.getName())
                                        )
                                    ) {
                                        if (!askBromaConflict(fullName, "parameter", bromaParam, param)) {
                                            bromaParams.set(i - autoParamCount, param);
                                        }
                                    }
                                }
                            }
                            if (data.getReturn().getSource() == SourceType.USER_DEFINED) {
                                if (!data.getReturnType().isEquivalent(bromaRetType.getDataType())) {
                                    if (!askBromaConflict(fullName, "return type", bromaRetType.getDataType(), data.getReturnType())) {
                                        bromaRetType = null;
                                    }
                                }
                            }

                            // First update function with dynamic storage
                            data.updateFunction(
                                getCConvName(cconv),
                                bromaRetType,
                                getCConvStorage(cconv),
                                // FunctionUpdateType.DYNAMIC_STORAGE_ALL_PARAMS,
                                true,
                                SourceType.ANALYSIS,
                                bromaParams.toArray(Variable[]::new)
                            );
                            
                            // todo: handle struct reordering & float storage for __optcall and __membercall

                            // If this function actually passes some floats through 
                            // XMM, apply that afterwards
                            // if (getCConvStorage(cconv) == FunctionUpdateType.DYNAMIC_STORAGE_ALL_PARAMS) {
                            //     data.setCustomVariableStorage(true);
                            //     var stackOffset = 0;
                            //     for (var i = 0; i < data.getParameterCount(); i += 1) {
                            //         var param = data.getParameter(i);
                            //         final var type = param.getDataType();
                            //         if (i < 5 && type instanceof AbstractFloatDataType) {
                            //             // (p)rocessor (reg)ister
                            //             String preg = null;
                            //             if (type instanceof FloatDataType) {
                            //                 preg = "XMM" + i + "_Da";
                            //             }
                            //             else if (type instanceof DoubleDataType) {
                            //                 preg = "XMM" + i + "_Qa";
                            //             }
                            //             else {
                            //                 throw new Error(
                            //                     "Parameter has type " + type.toString() +
                            //                     ", which is floating-point type but has an unknown register location"
                            //                 );
                            //             }
                            //             param.setDataType(
                            //                 type,
                            //                 new VariableStorage(currentProgram, currentProgram.getRegister(preg)),
                            //                 true,
                            //                 SourceType.ANALYSIS
                            //             );
                            //             stackOffset += type.getLength();
                            //         }
                            //         // Offset stack variables by the amount the floats caused
                            //         else {
                            //             var storage = param.getVariableStorage();
                            //             if (storage.isStackStorage()) {

                            //             }
                            //         }
                            //     }
                            // }

                            importedCount += 1;
                        }
                    );
                }
            );
        }

        print("Imported {0} functions from Broma", importedCount);
    }

    void print(String fmt, Object... args) {
        println(MessageFormat.format(fmt, args));
    }

    void matchAll(Pattern regex, String against, ThrowingConsumer<Matcher, Exception> forEach) throws Exception {
        var matcher = regex.matcher(against);
        while (matcher.find()) {
            forEach.accept(matcher);
        }
    }

    List<String> getPlatformOptions() {
        return List.of("Windows", "Mac");
    }

    String getPlatformLinkName(String platform) {
        switch (platform) {
            case "Windows": return "win";
            case "Mac": return "mac";
            default: throw new Error(
                "Invalid platform option - SyncBromaScript.getPlatformLinkName " + 
                "should be updated to match SyncBromaScript.getPlatformOptions"
            );
        }
    }

    Pattern getPlatformAddrPattern(String platform) {
        switch (platform) {
            case "Windows": return Regexes.GRAB_WIN_ADDRESS;
            case "Mac": return Regexes.GRAB_MAC_ADDRESS;
            default: throw new Error(
                "Invalid platform option - SyncBromaScript.getPlatformAddrPattern " + 
                "should be updated to match SyncBromaScript.getPlatformOptions"
            );
        }
    }

    CConv getCallingConvention(String platform, Boolean link, Matcher funMatcher) {
        if (!platform.equals("Windows")) {
            return null;
        }
        final var dispatch = funMatcher.group("dispatch");
        if (dispatch != null) {
            switch (dispatch) {
                case "virtual": case "callback": {
                    return CConv.THISCALL;
                }
                case "static": {
                    if (link) {
                        return CConv.CDECL;
                    }
                    return CConv.OPTCALL;
                }
            }
        }
        if (link) {
            return CConv.THISCALL;
        }
        return CConv.MEMBERCALL;
    }

    String getCConvName(CConv conv) {
        if (conv == null) {
            return null;
        }
        switch (conv) {
            case CDECL: return "__cdecl";
            case OPTCALL:
            case FASTCALL: return "__fastcall";
            case MEMBERCALL:
            case THISCALL: return "__thiscall";
        }
        return null;
    }

    FunctionUpdateType getCConvStorage(CConv conv) {
        if (conv == CConv.MEMBERCALL || conv == CConv.OPTCALL) {
            return FunctionUpdateType.CUSTOM_STORAGE;
        }
        return FunctionUpdateType.DYNAMIC_STORAGE_ALL_PARAMS;
    }

    Namespace parseNamespace(String string) throws Exception {
        Namespace ret = null;
        var iter = Arrays.asList(string.split("::")).listIterator();
        while (iter.hasNext()) {
            var ns = iter.next();
            var get = getNamespace(ret, ns);
            if (get == null) {
                if (iter.hasNext()) {
                    ret = currentProgram.getSymbolTable().createNameSpace(ret, ns, SourceType.ANALYSIS);
                }
                else {
                    ret = currentProgram.getSymbolTable().createClass(ret, ns, SourceType.ANALYSIS);
                }
            }
            ret = get;
        }
        return ret;
    }

    DataType parseType(String string) {
        final var manager = currentProgram.getDataTypeManager();
        var matcher = Regexes.GRAB_TYPE.matcher(string);

        // Get the name and category
        var nameIter = Arrays.asList(matcher.group("name").split("::")).listIterator();
        String name = null;
        DataTypePath typePath = null;
        CategoryPath category = new CategoryPath("/");
        while (nameIter.hasNext()) {
            var ns = nameIter.next();
            if (nameIter.hasNext()) {
                category.extend(ns);
                if (manager.getCategory(category) == null) {
                    manager.createCategory(category);
                }
            }
            else {
                // Add template parameters to the name
                var templates = matcher.group("template");
                if (templates != null) {
                    ns += templates;
                }
                name = ns;
                typePath = new DataTypePath(category, ns);
            }
        }
        if (name == null) {
            throw new Error("Data type doesn't have a name - this is an error in the SyncBromaScript GRAB_TYPE regex");
        }

        // Try to get this type
        var type = manager.getDataType(typePath);
        if (type == null) {
            // Try to guess the type; if the guess is wrong, the user can fix it manually
            // If the type is passed without pointer or reference, assume it's an enum
            if (matcher.group("ptr") == null && matcher.group("ref") == null) {
                type = manager.addDataType(
                    new EnumDataType(category, name, 0),
                    DataTypeConflictHandler.DEFAULT_HANDLER
                );
                print("Created new type {0}, assumed it's an enum", typePath);
            }
            // Otherwise it's probably a struct
            else {
                type = manager.addDataType(
                    new StructureDataType(category, name, 0),
                    DataTypeConflictHandler.DEFAULT_HANDLER
                );
                print("Created new type {0}, assumed it's a struct", typePath);
            }
        }

        // Apply any modifiers

        if (matcher.group("lconst") != null || matcher.group("rconst") != null) {
            // Constants don't exist in Ghidra lol
        }
        // Make the type a pointer if it's a ptr or ref
        if (matcher.group("ptr") != null || matcher.group("ref") != null) {
            type = new PointerDataType(type);
        }

        return type;
    }

    <A, B> Boolean askBromaConflict(String in, String what, A broma, B ghidra) {
        return askYesNo(
            "Conflict between Broma and Ghidra",
            MessageFormat.format(
                "Conflict between {1}s in {0}:\n" + 
                "Broma: {2}\n" +
                "Ghidra: {3}\n" + 
                "Should Broma's {1} be used (Yes) or keep Ghidra's {1} (No)?",
                in, what, broma, ghidra
            )
        );
    }
}
