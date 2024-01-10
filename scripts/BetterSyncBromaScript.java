// Sync your RE'd addresses to & from GeometryDash.bro 
// @author HJfod
// @category GeodeSDK

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import docking.widgets.dialogs.InputWithChoicesDialog;
import ghidra.app.script.GhidraScript;
import ghidra.features.base.values.GhidraValuesMap;
import ghidra.program.model.data.CategoryPath;
import ghidra.program.model.data.DataType;
import ghidra.program.model.data.DataTypeConflictHandler;
import ghidra.program.model.data.DataTypePath;
import ghidra.program.model.data.EnumDataType;
import ghidra.program.model.data.IntegerDataType;
import ghidra.program.model.data.PointerDataType;
import ghidra.program.model.data.StructureDataType;
import ghidra.program.model.symbol.Namespace;
import ghidra.program.model.symbol.SourceType;
import ghidra.util.Swing;
import ghidra.util.exception.CancelledException;

enum Platform {
    WINDOWS("Windows", "win", false),
    MAC("MacOS", "mac", true);

    private final String longName;
    private final String shortName;
    private final boolean singleBinary;
    private Platform(String longName, String shortName, boolean singleBinary) {
        this.longName = longName;
        this.shortName = shortName;
        this.singleBinary = singleBinary;
    }
    public static Platform parse(String longName) {
        for (var v : Platform.values()) {
            if (v.getLongName().equals(longName)) {
                return v;
            }
        }
        throw new Error("Invalid platform to parse; this error should be unreachable");
    }
    public String getLongName() {
        return this.longName;
    }
    public String getShortName() {
        return this.shortName;
    }
    public boolean hasSingleBinary() {
        return this.singleBinary;
    }
}

enum CConv {
    CDECL,
    THISCALL,
    MEMBERCALL,
    FASTCALL,
    OPTCALL,
}

class Regexes {
    // Helpers

    static final Pattern GRAB_NAMED_GROUP = Pattern.compile("(?<=\\(\\?)<\\w+>", 0);
    
    static final<T> String removeNamedGroups(T pattern) {
        return GRAB_NAMED_GROUP.matcher(pattern.toString()).replaceAll(":");
    }
    @SuppressWarnings("unchecked")
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
    public static final Pattern grabPlatformAddress(Platform platform) {
        return Pattern.compile(
            formatRegex("{0}\\s+0x(?<addr>[0-9a-fA-F]+)", platform.getShortName()),
            Pattern.DOTALL
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
}

class Broma {
    /**
     * A match in the source Broma string, parsed from Regex. The start and end of 
     * the match are in relation to the full original Broma file, not whatever Regex 
     * matched them
     */
    public class Match {
        public final int start;
        public final int end;
        public final String value;

        private Match(int s, int e, String v) {
            start = s;
            end = e;
            value = v;
        }

        private static Match from(Broma broma, Matcher matcher, String group) {
            if (matcher.group(group) == null) {
                return null;
            }
            return broma.new Match(matcher.start(group), matcher.end(group), matcher.group(group));
        }
    }

    /**
     * A replacement string to be applied to the source Broma string
     */
    private class Patch {
        public final int start;
        public final int end;
        public final String patch;

        private Patch(int start, int end, String patch) {
            this.start = start;
            this.end = end;
            this.patch = patch;
        }
    }

    public class Type {
        public final int start;
        public final int end;
        public final Match name;
        public final Match template;
        public final Match ptr;
        public final Match ref;

        private Type(Broma broma, Platform platform, Matcher matcher) {
            start = matcher.start();
            end = matcher.end();
            name = Match.from(broma, matcher, "name");
            template = Match.from(broma, matcher, "template");
            ptr = Match.from(broma, matcher, "ptr");
            ref = Match.from(broma, matcher, "ref");
        }
    }

    public class Param {
        public final int start;
        public final int end;
        public final Type type;
        public final Match name;

        private Param(Broma broma, Platform platform, Matcher matcher) {
            start = matcher.start();
            end = matcher.end();
            var tyMatcher = Regexes.GRAB_TYPE.matcher(broma.data);
            tyMatcher.region(matcher.start("type"), matcher.end("type"));
            type = new Type(broma, platform, tyMatcher);
            name = Match.from(broma, matcher, "name");
        }
    }

    public class Function {
        public final int start;
        public final int end;
        public final Match dispatch;
        public final Type returnType;
        public final Match name;
        public final Match destructor;
        public final List<Param> params;
        public final boolean inlined;
        public final Match platformOffset;

        private Function(Broma broma, Platform platform, Matcher matcher) {
            start = matcher.start();
            end = matcher.end();
            dispatch = Match.from(broma, matcher, "dispatch");
            if (matcher.group("return") != null) {
                var tyMatcher = Regexes.GRAB_TYPE.matcher(broma.data);
                tyMatcher.region(matcher.start("return"), matcher.end("return"));
                returnType = new Type(broma, platform, tyMatcher);
            }
            else {
                returnType = null;
            }
            name = Match.from(broma, matcher, "name");
            destructor = Match.from(broma, matcher, "destructor");
            inlined = matcher.group("inlinebody") != null;
            params = new ArrayList<Param>();

            // Match parameters
            var paramMatcher = Regexes.GRAB_PARAM.matcher(broma.data);
            paramMatcher.region(matcher.start("params"), matcher.end("params"));
            while (paramMatcher.find()) {
                params.add(broma.new Param(broma, platform, paramMatcher));
            }

            if (matcher.group("platforms") != null) {
                var addrMatcher = Regexes.grabPlatformAddress(platform).matcher(broma.data);
                addrMatcher.region(matcher.start("platforms"), matcher.end("platforms"));
                platformOffset = Match.from(broma, addrMatcher, "addr");
            }
            else {
                platformOffset = null;
            }
        }
    }
    
    public class Class {
        public final boolean linked;
        public final Match name;
        public final List<Function> functions;

        private Class(Broma broma, Platform platform, Matcher matcher) {
            name = Match.from(broma, matcher, "name");
            functions = new ArrayList<Function>();

            // Check if this class is linked
            var attrs = matcher.group("attrs");
            if (attrs != null) {
                var attr = Regexes.GRAB_LINK_ATTR.matcher(attrs);
                if (attr.find() && attr.group("platforms").contains(platform.getShortName())) {
                    linked = true;
                }
                else {
                    linked = false;
                }
            }
            else {
                linked = false;
            }

            // Match functions
            var funMatcher = Regexes.GRAB_FUNCTION.matcher(broma.data);
            funMatcher.region(matcher.start("body"), matcher.end("body"));
            while (funMatcher.find()) {
                functions.add(broma.new Function(broma, platform, funMatcher));
            }
        }
    }

    /**
     * Path to the Broma file
     */
    public final Path path;
    /**
     * The Broma file's data as a string
     */
    private String data;
    /**
     * A list of edits to apply to the Broma file when saving
     */
    private List<Patch> patches;
    public final List<Class> classes;

    private void applyRegexes(Platform platform) {
        var matcher = Regexes.GRAB_CLASS.matcher(this.data);
        while (matcher.find()) {
            this.classes.add(new Class(this, platform, matcher));
        }
    }

    /**
     * Open up a new Broma file for reading & editing
     * @param path Path to the Broma file
     * @throws IOException
     */
    public Broma(Path path, Platform platform) throws IOException {
        this.path = path;
        data = Files.readString(path);
        patches = new ArrayList<Patch>();
        classes = new ArrayList<Class>();
        this.applyRegexes(platform);
    }

    /**
     * Add a new patch to this Broma file. The patch will be applied when 
     * <code>save</code> is called. <b>It is assumed that no patches overlap!</b>
     * @param start The start index of the patch
     * @param end The end index of the patch
     * @param patch The string contents of the patch
     */
    public void addPatch(int start, int end, String patch) {
        this.patches.add(new Patch(start, end, patch));
    }

    /**
     * Commit this Broma's patches and save the changes to disk
     * @throws IOException
     */
    public void save() throws IOException {
        this.patches.sort((a, b) -> a.end - b.end);
        var result = new StringBuffer(this.data);
        for (var patch : this.patches) {
            result.replace(patch.start, patch.end, patch.patch);
        }
        this.patches.clear();
        Files.writeString(this.path, result.toString());
    }
}

class InputParameters {
    Platform platform;
    List<Path> bromaFiles;
    String gameVersion;
    boolean importFromBroma;
    boolean exportToBroma;

    private InputParameters() {}

    /**
     * Ask the user for input parameters
     * @param script Current GhidraScript instance
     * @param bindingsDir Bindings directory
     * @returns InputParameters struct with the responses
     */
    public static InputParameters ask(GhidraScript script, Path bindingsDir) throws IOException, CancelledException {
        var result = new InputParameters();

        // Get all available bindings versions from the bindings directory
        List<String> versions = new ArrayList<String>();
        for (var file : Files.list(bindingsDir).toArray(Path[]::new)) {
            if (Files.isDirectory(file)) {
                versions.add(file.getFileName().toString());
            }
        }

        var bromaFiles = List.of("Cocos2d.bro", "GeometryDash.bro");

        // Get the target platform and version from the user
        var map = new GhidraValuesMap();
        map.defineChoice(
            "Target platform",
            null,
            Arrays.asList(Platform.values()).stream()
                .map(p -> p.getLongName())
                .toArray(String[]::new)
        );
        map.defineChoice(
            "Broma file (Windows-only)",
            null,
            result.bromaFiles.toArray(String[]::new)
        );
        map.defineChoice(
            "Game version",
            versions.get(versions.size() - 1),
            versions.toArray(String[]::new)
        );
        map.defineBoolean("Import to Broma", true);
        map.defineBoolean("Export to Broma", true);
        script.askValues(
            "Sync Broma",
            "Import addresses & signatures from Broma, and add new ones " + 
            "from the current project to it. Doesn't handle members or generating " +
            "vtables yet, but support is planned in the future",
            map
        );
        result.platform = Platform.parse(map.getChoice("Target platform"));
        result.gameVersion = map.getChoice("Game version");
        result.importFromBroma = map.getBoolean("Import to Broma");
        result.exportToBroma = map.getBoolean("Export to Broma");

        if (result.platform == Platform.WINDOWS) {
            bromaFiles = List.of(map.getChoice("Broma file (Windows-only)"));
        }
        result.bromaFiles = bromaFiles.stream()
            .map(f -> Paths.get(bindingsDir.toString(), result.gameVersion, f))
            .toList();
        
        if (!result.importFromBroma && !result.exportToBroma) {
            throw new Error("Either importing from or exporting to Broma has to be checked!");
        }

        return result;
    }
}

public class BetterSyncBromaScript extends GhidraScript {
    Path bindingsDir;
    InputParameters args;
    ArrayList<Broma> bromas;
    
    public void run() throws Exception {
        // Get the bindings directory from the location of this script
        this.bindingsDir = Paths.get(this.sourceFile.getParentFile().getParentFile().toString(), "bindings");
        if (!Files.isDirectory(bindingsDir)) {
            throw new Error("SyncBromaScript should be located in <Geode bindings>/scripts!");
        }
        printfmt("Bindings directory: {0}", bindingsDir);

        this.args = InputParameters.ask(this, bindingsDir);
        for (var bro : this.args.bromaFiles) {
            this.bromas.add(new Broma(bro, args.platform));
        }

        // Do the imports and exports
        if (this.args.importFromBroma) {
            this.handleImport();
        }
        if (this.args.exportToBroma) {
            this.handleExport();
        }
    }

    private void handleImport() throws Exception {
        final var listing = currentProgram.getListing();
        for (var bro : bromas) {
            printfmt("Reading {0}...", bro.path.getFileName());
            for (var cls : bro.classes) {
                for (var fun : cls.functions) {
                    // Get function name either from destructor or custom name
                    var name = fun.destructor != null ? fun.destructor.value : fun.name.value;
                    var className = cls.name.value;
                    var fullName = className + "::" + name;

                    // Only add functions that have an offset on this platform
                    if (fun.platformOffset == null) {
                        continue;
                    }
                    var offset = Long.parseLong(fun.platformOffset.value, 16);
                    // The hardcoded placeholder addr
                    if (offset == 0x9999999) {
                        continue;
                    }
                    var addr = currentProgram.getImageBase().add(offset);
        
                    var didUpdateThis = false;
                    var didAddThis = false;

                    // Get the function defined at the address, or create one
                    var data = listing.getFunctionAt(addr);
                    if (data == null) {
                        didAddThis = true;
                        data = createFunction(addr, name);
                        if (data == null) {
                            throw new Error("Unable to create a function at address " + addr.toString());
                        }
                        data.setParentNamespace(addOrGetNamespace(className));
                    }

                    // Check if function already has an user-provided name
                    if (data.getSymbol().getSource() == SourceType.USER_DEFINED && !data.getName(true).equals(fullName)) {
                        switch (askBromaConflict(fullName, "function name", fullName, data.getName(true))) {
                            case BROMA: {
                                didUpdateThis = true;
                            } break;

                            case GHIDRA: {
                                className = data.getParentNamespace().getName(true);
                                fullName = data.getName(true);
                                name = data.getName();
                            } break;
                        }
                    }

                    // If the 
                    if (!data.getName(true).equals(fullName)) {
                        didAddThis = true;
                    }
                    data.setName(name, SourceType.ANALYSIS);
                    data.setParentNamespace(addOrGetNamespace(className));

                    // Get the calling convention
                    final var conv = getCallingConvention(args.platform, cls.linked, fun.dispatch);
                }
            }
        }
    }

    private void handleExport() throws Exception {
        

        // Save results
        printfmt("Saving Broma files...");
        for (var bro : this.bromas) {
            bro.save();
        }
    }

    void printfmt(String fmt, Object... args) {
        println(MessageFormat.format(fmt, args));
    }

    CConv getCallingConvention(Platform platform, Boolean link, Broma.Match dispatch) {
        if (platform != Platform.WINDOWS) {
            return null;
        }
        if (dispatch != null) {
            switch (dispatch.value) {
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

    Namespace addOrGetNamespace(String string) throws Exception {
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

    DataType addOrGetType(Broma.Type type) {
        final var manager = currentProgram.getDataTypeManager();

        // Get the name and category
        var nameIter = Arrays.asList(type.name.value.split("::")).listIterator();
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
                var templates = type.template;
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
        var result = manager.getDataType(typePath);
        if (result == null) {
            // Try to guess the type; if the guess is wrong, the user can fix it manually
            // If the type is passed without pointer or reference, assume it's an enum
            if (type.ptr == null && type.ref == null) {
                result = manager.addDataType(
                    new EnumDataType(category, name, new IntegerDataType().getLength()),
                    DataTypeConflictHandler.DEFAULT_HANDLER
                );
                printfmt("Created new type {0}, assumed it's an enum", typePath);
            }
            // Otherwise it's probably a struct
            else {
                result = manager.addDataType(
                    new StructureDataType(category, name, 0),
                    DataTypeConflictHandler.DEFAULT_HANDLER
                );
                printfmt("Created new type {0}, assumed it's a struct", typePath);
            }
        }

        // Apply any modifiers

        // Constants don't exist in Ghidra lol

        // Make the type a pointer if it's a ptr or ref
        if (type.ptr != null) {
            // Make sure to support multi-level pointers like int**
            for (var i = 0; i < type.ptr.value.length(); i++) {
                result = new PointerDataType(result);
            }
        }
        if (type.ref != null) {
            for (var i = 0; i < type.ref.value.length(); i++) {
                result = new PointerDataType(result);
            }
        }

        return result;
    }

    enum ConflictResolution {
        BROMA,
        GHIDRA,
    }

    <A, B> ConflictResolution askBromaConflict(String in, String what, A broma, B ghidra) throws Exception {
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
			throw new CancelledException();
		}
        switch (choice) {
            case "Use Broma": return ConflictResolution.BROMA;
            case "Keep Ghidra": return ConflictResolution.GHIDRA;
            default: throw new Error("askBromaConflict is invalid in SyncBromaScript - missing cases");
        }
    }
}
