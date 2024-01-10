// Sync your RE'd addresses to & from GeometryDash.bro 
// @author HJfod
// @category GeodeSDK

import ghidra.app.script.GhidraScript;
import ghidra.features.base.values.GhidraValuesMap;
import ghidra.program.model.data.AbstractFloatDataType;
import ghidra.program.model.data.CategoryPath;
import ghidra.program.model.data.DataType;
import ghidra.program.model.data.DataTypeConflictHandler;
import ghidra.program.model.data.DataTypePath;
import ghidra.program.model.data.DoubleDataType;
import ghidra.program.model.data.EnumDataType;
import ghidra.program.model.data.FloatDataType;
import ghidra.program.model.data.IntegerDataType;
import ghidra.program.model.data.PointerDataType;
import ghidra.program.model.data.StructureDataType;
import ghidra.program.model.listing.ParameterImpl;
import ghidra.program.model.listing.ReturnParameterImpl;
import ghidra.program.model.listing.Variable;
import ghidra.program.model.listing.VariableStorage;
import ghidra.program.model.listing.Function.FunctionUpdateType;
import ghidra.program.model.symbol.Namespace;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.model.symbol.SymbolType;
import ghidra.util.Swing;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.text.MessageFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import docking.widgets.dialogs.InputWithChoicesDialog;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// https://www.baeldung.com/java-lambda-exceptions
@FunctionalInterface
interface ThrowingConsumer<T, E extends Exception> {
    void accept(T t) throws E;
}

class Regexes {
    // Helpers

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

    // Generic regexes

    public static final Pattern grabClass(String className) {
        return Pattern.compile(
            formatRegex(
                // Grab attributes
                "(?<attrs>\\[\\[.*?\\]\\]\\s*)?" + 
                // Grab name
                "class (?<name>{0})\\s+(?::.*?)?" + 
                // Grab body (assuming closing brace is on its own line without any preceding whitespace)
                "\\'{'(?<body>.*?)^\\'}'",
                className
            ),
            Pattern.DOTALL | Pattern.MULTILINE
        );
    }
    // Pass class name as funName if you want to grab destructor
    public static final Pattern grabFunction(String funName) {
        return Pattern.compile(
            formatRegex(
                // Must match start of line (MULTILINE flag required) - also requires that the 
                // function not be intended more than 4 spaces or a single tab
                "(?<=^(?:(?: '{'0,4'}')|\\t))" + 
                // Get the dispatch modifier keyword if one is defined
                "(?<dispatch>(?:inline|virtual|static|callback)\\s+)?" +
                // Grab the return type and name of the function, or the name if it's a destructor
                "(?:(?:(?<return>{0})\\s+(?<name>{2}))|(?<destructor>~{2}))" + 
                // Grab the parameters
                "\\(\\s*(?<params>(?:{1},?)*)\\)" +
                "(?:"+
                    // Grab the platforms
                    "(?:\\s*=\\s*(?<platforms>(?:[a-z]+\\s+0x[0-9a-fA-F]+\\s*,?\\s*)+))" + 
                    // Or the body
                    "|(?<inlinebody>(?=\\s*\\'{'))" +
                    // Or where we can add platforms
                    "|(?<insertplatformshere>(?=\\s*;))" + 
                ")",
                GRAB_TYPE, GRAB_PARAM, funName
            ),
            Pattern.DOTALL | Pattern.MULTILINE
        );
    }

    // Fixed regexes

    public static final Pattern GRAB_LINK_ATTR = Pattern.compile(
        "link\\((?<platforms>.*?)\\)",
        Pattern.DOTALL
    );
    public static final Pattern GRAB_CLASS = grabClass("(?:\\w+::)*\\w+");
    public static final Pattern GRAB_TYPE = generateRecursiveRegex(
        "(?<lconst>\\bconst\\s+)?(?<name>(?:\\w+::)*\\w+)(?<template><(?:{0})(?:\\s*,\\s*(?:{0}))*>)?(?<rconst>\\s+const\\b)?(?<ptr>\\s*\\*+)?(?<ref>\\s*&+)?",
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
    public static final Pattern GRAB_FUNCTION = grabFunction("\\w+");
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

class RegexMutator {
    StringBuffer result;
    
    public class RegexMatchMutator {
        private Matcher matcher;
        private ArrayList<Patch> patches;

        private class Patch {
            int start;
            int end;
            String patch;
            protected Patch(int start, int end, String patch) {
                this.start = start;
                this.end = end;
                this.patch = patch;
            }
        }

        private RegexMatchMutator(Matcher matcher) {
            this.matcher = matcher;
            this.patches = new ArrayList<Patch>();
        }
        public boolean has(String group) {
            return this.matcher.group(group) != null;
        }
        public String get(String group) {
            return this.matcher.group(group);
        }
        public boolean replace(String group, String replacement) {
            if (this.has(group)) {
                this.patches.add(new Patch(matcher.start(group), matcher.end(group), replacement));
                return true;
            }
            else {
                return false;
            }
        }
        public boolean replace(String group, ThrowingConsumer<RegexMutator, Exception> replacer) throws Exception {
            if (this.has(group)) {
                var mutator = new RegexMutator(matcher.group(group));
                replacer.accept(mutator);
                this.patches.add(new Patch(matcher.start(group), matcher.end(group), mutator.result()));
                return true;
            }
            else {
                return false;
            }
        }
        private String finish() {
            var result = new StringBuffer(matcher.group());
            this.patches.sort((a, b) -> a.end - b.end);
            for (var patch : this.patches) {
                result.replace(patch.start, patch.end, patch.patch);
            }
            return result.toString();
        }
    }
    
    public RegexMutator(String original) {
        result = new StringBuffer(original);
    }
    public boolean mutate(Pattern regex, ThrowingConsumer<RegexMatchMutator, Exception> consumer) throws Exception {
        var matcher = regex.matcher(this.result);
        var found = false;
        var offset = 0;
        while (matcher.find()) {
            var mutator = new RegexMatchMutator(matcher);
            found = true;
            consumer.accept(mutator);
            var replaceWith = mutator.finish();
            this.result.replace(matcher.start() + offset, matcher.end() + offset, replaceWith);
            offset += replaceWith.length() - (matcher.end() - matcher.start());
        }
        return found;
    }
    public void replace(String replacement) {
        this.result = new StringBuffer(replacement);
    }
    public String result() {
        return this.result.toString();
    }
}

public class SyncBromaScript extends GhidraScript {
    int importedAddCount = 0;
    int importedUpdateCount = 0;

    // todo: automatically generate vtable structs for each class
    // todo: merge members

    @Override
    public void run() throws Exception {
        // Get the bindings directory from the location of this script
        // todo: maybe ask the user for this if the script is not in the expected place?
        var bindingsDir = new File(this.sourceFile.getParentFile().getParentFile().toString() + "/bindings");
        if (!bindingsDir.isDirectory()) {
            throw new Error("SyncBromaScript should be located in <Geode bindings>/scripts!");
        }
        printfmt("Bindings directory: {0}", bindingsDir.toPath().toString());

        // Get all available bindings versions from the bindings directory
        List<File> versions = new ArrayList<File>();
        for (var file : bindingsDir.listFiles()) {
            if (file.isDirectory()) {
                versions.add(file);
            }
        }
        var targetBromas = List.of("Cocos2d.bro", "GeometryDash.bro");

        // Get the target platform and version from the user
        var map = new GhidraValuesMap();
        map.defineChoice("Target platform", null, getPlatformOptions().toArray(String[]::new));
        map.defineChoice("Broma file (Windows-only)", null, targetBromas.toArray(String[]::new));
        map.defineChoice(
            "Game version",
            versions.get(versions.size() - 1).getName().toString(),
            versions.stream().map(e -> e.getName().toString()).toArray(String[]::new)
        );
        map.defineBoolean("Import to Broma", true);
        map.defineBoolean("Export to Broma", true);
        askValues(
            "Sync Broma",
            "Import addresses & signatures from Broma, and add new ones " + 
            "from the current project to it",
            map
        );
        var platform = map.getChoice("Target platform");
        var version = map.getChoice("Game version");
        if (platform == "Windows") {
            targetBromas = List.of(map.getChoice("Broma file (Windows-only)"));
        }
        var platformAddrGrab = getPlatformAddrPattern(platform);
        var doImport = map.getBoolean("Import to Broma");
        var doExport = map.getBoolean("Export to Broma");

        var bindingsVerDir = new File(bindingsDir.toPath().toString() + "/" + version);
        var listing = currentProgram.getListing();

        if (doImport) {
            printfmt("Loading addresses from Bindings...");

            // Read the broma files and merge function addresses & their signatures into Ghidra
            for (var bro : targetBromas) {
                var file = new File(bindingsVerDir.toPath().toString() + "/" + bro);
                printfmt("Reading {0}...", bro);
                matchAll(
                    Regexes.GRAB_CLASS,
                    new String(Files.readAllBytes(file.toPath())),
                    cls -> {
                        var linkValue = false;
                        var attrs = cls.group("attrs");
                        if (attrs != null) {
                            var attr = Regexes.GRAB_LINK_ATTR.matcher(attrs);
                            if (attr.find() && attr.group("platforms").contains(getPlatformLinkName(platform))) {
                                linkValue = true;
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
                                var className = cls.group("name");
                                var fullName = className + "::" + name;

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
                                var offset = Long.parseLong(plat.group("addr"), 16);
                                // The hardcoded placeholder addr
                                if (offset == 0x9999999) {
                                    return;
                                }
                                var addr = currentProgram.getImageBase().add(offset);

                                var didUpdateThis = false;
                                var didAddThis = false;

                                // Get the function defined at the address, or 
                                var data = listing.getFunctionAt(addr);
                                if (data == null) {
                                    didAddThis = true;
                                    data = createFunction(addr, name);
                                    if (data == null) {
                                        throw new Error("Unable to create a function at address " + addr.toString());
                                    }
                                    data.setParentNamespace(parseNamespace(className));
                                }

                                if (data.getSymbol().getSource() == SourceType.USER_DEFINED && !data.getName(true).equals(fullName)) {
                                    if (!askBromaConflict(
                                        fullName,
                                        "function name",
                                        fullName,
                                        data.getName(true)
                                    )) {
                                        className = data.getParentNamespace().toString();
                                        fullName = data.getName(true);
                                        name = data.getName();
                                    }
                                    else {
                                        didUpdateThis = true;
                                    }
                                }

                                if (!data.getName(true).equals(fullName)) {
                                    didAddThis = true;
                                }
                                data.setName(name, SourceType.ANALYSIS);
                                data.setParentNamespace(parseNamespace(className));

                                // Get the calling convention
                                final var conv = getCallingConvention(platform, link, fun);
                                
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
                                var collectBromaParams = new ArrayList<Variable>();

                                // Add `this` arg
                                final var dispatch = fun.group("dispatch");
                                if (dispatch == null || !dispatch.equals("static")) {
                                    collectBromaParams.add(new ParameterImpl(
                                        "this",
                                        parseType(className + "*"),
                                        currentProgram
                                    ));
                                }

                                // Struct return
                                if (
                                    bromaRetType != null &&
                                    bromaRetType.getDataType() instanceof StructureDataType
                                ) {
                                    collectBromaParams.add(new ParameterImpl(
                                        "ret",
                                        bromaRetType.getDataType(),
                                        currentProgram
                                    ));
                                }
                                
                                matchAll(
                                    Regexes.GRAB_PARAM,
                                    fun.group("params"),
                                    param -> {
                                        collectBromaParams.add(new ParameterImpl(
                                            param.group("name"),
                                            parseType(param.group("type")),
                                            currentProgram
                                        ));
                                    }
                                );
                                // Have to assign this outside the closure because otherwise Java
                                // complains about effective finality...
                                var bromaParams = collectBromaParams;

                                // Check for mismatches between the incoming signature
                                var signatureConflict = false;
                                for (var i = 0; i < data.getParameterCount(); i += 1) {
                                    var param = data.getParameter(i);
                                    // Only care about mismatches against user-defined types
                                    if (param.getSource() == SourceType.USER_DEFINED) {
                                        if (i >= bromaParams.size()) {
                                            signatureConflict = true;
                                        }
                                        else {
                                            var bromaParam = bromaParams.get(i);
                                            if (
                                                !param.getDataType().isEquivalent(bromaParam.getDataType()) ||
                                                (
                                                    param.getName() != null && bromaParam.getName() != null &&
                                                    !param.getName().equals(bromaParam.getName())
                                                )
                                            ) {
                                                signatureConflict = true;
                                            }
                                        }
                                    }
                                }
                                // Destructor signatures are weird
                                if (fun.group("destructor") != null) {
                                    signatureConflict = false;
                                }
                                if (signatureConflict) {
                                    if (!askBromaConflict(
                                        fullName, "signature",
                                        "(" + String.join(", ", bromaParams
                                            .stream()
                                            .map(p -> p.getDataType().toString() + " " + p.getName())
                                            .toArray(String[]::new)
                                        ) + ")",
                                        "(" + String.join(", ", Arrays.asList(data.getParameters())
                                            .stream()
                                            .map(p -> p.getDataType() + " " + p.getName())
                                            .toArray(String[]::new)
                                        ) + ")"
                                    )) {
                                        bromaParams = new ArrayList<Variable>(Arrays.asList(data.getParameters()));
                                    }
                                    else {
                                        didUpdateThis = true;
                                    }
                                }
                                if (data.getReturn().getSource() == SourceType.USER_DEFINED && bromaRetType != null) {
                                    if (!data.getReturnType().isEquivalent(bromaRetType.getDataType())) {
                                        if (!askBromaConflict(
                                            fullName, "return type",
                                            bromaRetType.getDataType(), data.getReturnType()
                                        )) {
                                            bromaRetType = null;
                                        }
                                        else {
                                            didUpdateThis = true;
                                        }
                                    }
                                }

                                FunctionUpdateType updateType;
                                // Manual storage for custom calling conventions
                                if (
                                    (conv == CConv.MEMBERCALL || conv == CConv.OPTCALL) && 
                                    // Only do manual storage if there's actually a need for it
                                    bromaParams.stream().anyMatch(p ->
                                        p.getDataType() instanceof StructureDataType ||
                                        p.getDataType() instanceof FloatDataType
                                    )
                                ) {
                                    updateType = FunctionUpdateType.CUSTOM_STORAGE;
                                    var reorderedParams = new ArrayList<Variable>(bromaParams);
                                    // Thanks stable sort <3
                                    reorderedParams.sort((a, b) -> {
                                        final var aIs = a.getDataType() instanceof StructureDataType;
                                        final var bIs = b.getDataType() instanceof StructureDataType;
                                        if (aIs && bIs) return 0;
                                        if (aIs) return 1;
                                        if (bIs) return -1;
                                        return 0;
                                    });
                                    var stackOffset = 0;
                                    for (var i = 0; i < bromaParams.size(); i += 1) {
                                        var param = bromaParams.get(i);
                                        final var type = param.getDataType();
                                        VariableStorage storage;
                                        if (i < 5 && type instanceof AbstractFloatDataType) {
                                            // (p)rocessor (reg)ister
                                            String preg = null;
                                            if (type instanceof FloatDataType) {
                                                preg = "XMM" + i + "_Da";
                                            }
                                            else if (type instanceof DoubleDataType) {
                                                preg = "XMM" + i + "_Qa";
                                            }
                                            else {
                                                throw new Error(
                                                    "Parameter has type " + type.toString() +
                                                    ", which is floating-point type but has an unknown register location"
                                                );
                                            }
                                            storage = new VariableStorage(currentProgram, currentProgram.getRegister(preg));
                                        }
                                        else {
                                            if (i == 0) {
                                                storage = new VariableStorage(currentProgram, currentProgram.getRegister("ECX"));
                                            }
                                            else if (conv == CConv.OPTCALL && i == 1 && !(type instanceof StructureDataType)) {
                                                storage = new VariableStorage(currentProgram, currentProgram.getRegister("EDX"));
                                            }
                                            else {
                                                if (type.isNotYetDefined()) {
                                                    printfmt(
                                                        "Warning: function {0} has parameter {1} of an undefined " + 
                                                        "struct type - you will need to manually fix this later!",
                                                        fullName, param.getName()
                                                    );
                                                }
                                                storage = new VariableStorage(currentProgram, stackOffset, type.getLength());
                                                stackOffset += reorderedParams.get(i).getLength();
                                            }
                                        }
                                        param.setDataType(type, storage, true, SourceType.ANALYSIS);
                                    }
                                }
                                // Use dynamic storage for calling conventions Ghidra knows
                                else {
                                    updateType = FunctionUpdateType.DYNAMIC_STORAGE_ALL_PARAMS;
                                }

                                if (didAddThis) {
                                    importedAddCount += 1;
                                    printfmt("Added {0}", fullName);
                                }
                                else if (didUpdateThis) {
                                    importedUpdateCount += 1;
                                    printfmt("Updated {0}", fullName);
                                }

                                // Apply new signature
                                data.updateFunction(
                                    getCConvName(conv),
                                    bromaRetType,
                                    updateType,
                                    true,
                                    SourceType.ANALYSIS,
                                    bromaParams.toArray(Variable[]::new)
                                );
                            }
                        );
                    }
                );
            }
            printfmt("Added {0} functions & updated {1} functions from Broma", importedAddCount, importedUpdateCount);
        }

        if (doExport) {
            printfmt("Adding new addresses to Bindings...");

            class EditedBroma {
                Path path;
                String contents;
                EditedBroma(Path p, String c) {
                    path = p;
                    contents = c;
                }
            }

            var editedBromas = targetBromas.stream()
                .map(bro -> {
                    var p = Path.of(bindingsVerDir.toPath().toString() + "/" + bro);
                    try {
                        return new EditedBroma(p, new String(Files.readAllBytes(p)));
                    }
                    catch(Exception ignore) {
                        return null;
                    }
                })
                .toList();

            final var table = currentProgram.getSymbolTable();
            var clsIter = table.getClassNamespaces();
            while (clsIter.hasNext()) {
                var cls = clsIter.next();
                // Skip imported functions
                if (cls.isExternal() || cls.isLibrary()) {
                    continue;
                }
                if (cls.getName(true).contains("switch")) continue;
                if (cls.getName(true).contains("llvm")) continue;
                if (cls.getName(true).contains("tinyxml2")) continue;
                if (cls.getName(true).contains("<")) continue;
                if (cls.getName(true).contains("__")) continue;
                if (cls.getName(true).contains("fmt")) continue;
                if (cls.getName(true).contains("std::")) continue;
                if (cls.getName(true).contains("pugi")) continue;
                for (var bro : editedBromas) {
                    var mutator = new RegexMutator(bro.contents);
                    if (!mutator.mutate(
                        Regexes.grabClass(cls.getName(true)),
                        m -> m.replace("body", body -> {
                            for (var child : table.getChildren(cls.getSymbol())) {
                                if (child.getSymbolType() != SymbolType.FUNCTION) {
                                    continue;
                                }
                                var fullName = child.getName(true);

                                if (!body.mutate(
                                    // Remove the ~ if this is a destructor
                                    Regexes.grabFunction(child.getName().replaceFirst("^~", "")),
                                    fm -> {
                                        var fun = currentProgram.getListing().getFunctionAt(
                                            child.getProgramLocation().getAddress()
                                        );

                                        // Update return type if Ghidra has an user-defined type and 
                                        // Broma has TodoReturn
                                        if (
                                            fm.has("return") && fm.get("return").equals("TodoReturn") &&
                                            fun.getReturn().getSource() == SourceType.USER_DEFINED
                                        ) {
                                            fm.replace("return", fun.getReturnType().toString());
                                            printfmt("Updated return type for {0}", fullName);
                                        }

                                        final var goffset = child.getProgramLocation().getAddress()
                                            .subtract(currentProgram.getImageBase());
                                        final var plinkname = getPlatformLinkName(platform);
                                        // Check if Broma already has this address, and check for conflict if so
                                        if (fm.replace("platforms", p -> {
                                            if (!p.mutate(
                                                platformAddrGrab,
                                                pm -> {
                                                    var commit = goffset;
                                                    var offset = Long.parseLong(pm.get("addr"), 16);
                                                    // The hardcoded placeholder addr
                                                    if (offset != 0x9999999 && goffset != offset) {
                                                        if (askBromaConflict(
                                                            fullName, "address",
                                                            String.format("0x%X", offset),
                                                            String.format("0x%X", goffset)
                                                        )) {
                                                            commit = offset;
                                                        }
                                                    }
                                                    pm.replace("addr", String.format("0x%X", commit));
                                                    printfmt("Updated address for {0}", fullName);
                                                }
                                            )) {
                                                p.replace(
                                                    fm.get("platforms") + ", " + plinkname + " " +
                                                    String.format("0x%X", goffset)
                                                );
                                                printfmt("Added address for {0}", fullName);
                                            }
                                        })) {
                                            if (fm.replace(
                                                "insertplatformshere",
                                                " = " + plinkname + " " + String.format("0x%X", goffset)
                                            )) {
                                                printfmt("Added address for {0}", fullName);
                                            }
                                            else {
                                                printfmt("Warning: function {0} is inlined in Broma", fullName);
                                            }
                                        }
                                    }
                                )) {
                                    printfmt("Warning: function {0} not found", fullName);
                                }
                            }
                        })
                    )) {
                        printfmt(
                            "Warning: class {0} not found in any of the target Bromas ({1})",
                            cls.getName(true), String.join(", ", targetBromas)
                        );
                        continue;
                    }
                    bro.contents = mutator.result();
                }
            }

            printfmt("Writing results...");
            for (var bro : editedBromas) {
                Files.writeString(bro.path, bro.contents);
            }
        }
    }

    void printfmt(String fmt, Object... args) {
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
        if (!matcher.find()) {
            throw new Error(
                "Unable to match data type \"" + string + "\" with regex " + Regexes.GRAB_TYPE.pattern()
            );
        }

        // Get the name and category
        var nameIter = Arrays.asList(matcher.group("name").split("::")).listIterator();
        String name = null;
        DataTypePath typePath = null;
        CategoryPath category = new CategoryPath("/");
        while (nameIter.hasNext()) {
            var ns = nameIter.next();
            if (nameIter.hasNext()) {
                category = category.extend(ns);
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
                    new EnumDataType(category, name, new IntegerDataType().getLength()),
                    DataTypeConflictHandler.DEFAULT_HANDLER
                );
                printfmt("Created new type {0}, assumed it's an enum", typePath);
            }
            // Otherwise it's probably a struct
            else {
                type = manager.addDataType(
                    new StructureDataType(category, name, 0),
                    DataTypeConflictHandler.DEFAULT_HANDLER
                );
                printfmt("Created new type {0}, assumed it's a struct", typePath);
            }
        }

        // Apply any modifiers

        if (matcher.group("lconst") != null || matcher.group("rconst") != null) {
            // Constants don't exist in Ghidra lol
        }
        // Make the type a pointer if it's a ptr or ref
        if (matcher.group("ptr") != null) {
            // Make sure to support multi-level pointers like int**
            for (var i = 0; i < matcher.group("ptr").length(); i++) {
                type = new PointerDataType(type);
            }
        }
        if (matcher.group("ref") != null) {
            for (var i = 0; i < matcher.group("ref").length(); i++) {
                type = new PointerDataType(type);
            }
        }

        return type;
    }

    <A, B> Boolean askBromaConflict(String in, String what, A broma, B ghidra) throws Exception {
		var choice = Swing.runNow(() -> {
			InputWithChoicesDialog dialog = new InputWithChoicesDialog(
                "Conflict between Broma and Ghidra",
                MessageFormat.format(
                    "<html>Conflict between {1}s in {0}:<br>" + 
                    "Broma: {2}<br>" +
                    "Ghidra: {3}<br>" + 
                    "<b>Should Broma's {1} be used or keep Ghidra's {1}?</b></html>",
                    in, what, broma, ghidra
                ),
                new String[] { "Use Broma", "Keep Ghidra" }, "Use Broma", null
            );
			state.getTool().showDialog(dialog);
			return dialog.getValue();
		});
		if (choice == null) {
			throw new Error("Script cancelled");
		}
        return choice.equals("Use Broma");
    }
}
