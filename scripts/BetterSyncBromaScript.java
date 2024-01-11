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
import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import docking.widgets.dialogs.InputWithChoicesDialog;
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
import ghidra.program.model.listing.Function.FunctionUpdateType;
import ghidra.program.model.listing.ParameterImpl;
import ghidra.program.model.listing.ReturnParameterImpl;
import ghidra.program.model.listing.Variable;
import ghidra.program.model.listing.VariableStorage;
import ghidra.program.model.symbol.Namespace;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.model.symbol.SymbolType;
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
    CDECL("__cdecl"),
    THISCALL("__thiscall"),
    MEMBERCALL("__thiscall"),
    FASTCALL("__fastcall"),
    OPTCALL("__fastcall");

    private final String ghidraName;
    private CConv(String ghidraName) {
        this.ghidraName = ghidraName;
    }
    public String getGhidraName() {
        return this.ghidraName;
    }
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
                    "|(?<insertplatformshere>\\s*(?=;))" + 
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
    static int PLACEHOLDER_ADDR = 0x9999999;

    public class Range {
        public final int start;
        public final int end;
        Range() {
            this.start = 0;
            this.end = 0;
        }
        Range(int start, int end) {
            this.start = start;
            this.end = end;
        }
    }

    /**
     * A match in the source Broma string, parsed from Regex. The start and end of 
     * the match are in relation to the full original Broma file, not whatever Regex 
     * matched them
     */
    public class Match {
        public final Range range;
        public final String value;

        private Match(Range r, String v) {
            range = r;
            value = v;
        }
        private Match(String v) {
            range = new Range();
            value = v;
        }
        private Match(Matcher matcher, String group) {
            range = new Range(matcher.start(group), matcher.end(group));
            value = matcher.group(group);
        }
        private static Optional<Match> maybe(Broma broma, Matcher matcher, String group) {
            if (matcher.group(group) == null) {
                return Optional.empty();
            }
            return Optional.of(broma.new Match(matcher, group));
        }
    }

    /**
     * A replacement string to be applied to the source Broma string
     */
    private class Patch {
        public final Range range;
        public final String patch;

        private Patch(Range range, String patch) {
            this.range = range;
            this.patch = patch;
        }
    }

    public class Type {
        public final Range range;
        public final Match name;
        public final Optional<Match> template;
        public final Optional<Match> ptr;
        public final Optional<Match> ref;

        private Type(String name) {
            this.range = new Range();
            this.name = new Match(name);
            this.template = Optional.empty();
            this.ptr = Optional.of(new Match("*"));
            this.ref = Optional.empty();
        }

        /**
         * Make a pointer type (for passing <code>this</code> args)
         * @param name
         */
        public static Type ptr(Broma broma, String name) {
            return broma.new Type(name);
        }

        private Type(Broma broma, Platform platform, Matcher matcher) {
            range = new Range(matcher.start(), matcher.end());
            name = broma.new Match(matcher, "name");
            template = Match.maybe(broma, matcher, "template");
            ptr = Match.maybe(broma, matcher, "ptr");
            ref = Match.maybe(broma, matcher, "ref");
        }
    }

    public class Param {
        public final Range range;
        public final Type type;
        public final Optional<Match> name;

        private Param(Broma broma, Platform platform, Matcher matcher) {
            range = new Range(matcher.start(), matcher.end());
            type = new Type(broma, platform, broma.forkMatcher(Regexes.GRAB_TYPE, matcher, "type", true));
            name = Match.maybe(broma, matcher, "name");
        }
    }

    public class Function {
        public final Range range;
        public final Optional<Match> dispatch;
        public final Optional<Type> returnType;
        public final Optional<Match> name;
        public final Optional<Match> destructor;
        public final List<Param> params;
        public final Optional<Match> platformOffset;
        public final Optional<Match> platformOffsetInsertPoint;

        private Function(Broma broma, Platform platform, Matcher matcher) {
            range = new Range(matcher.start(), matcher.end());
            dispatch = Match.maybe(broma, matcher, "dispatch");
            if (matcher.group("return") != null) {
                returnType = Optional.of(
                    new Type(broma, platform, broma.forkMatcher(Regexes.GRAB_TYPE, matcher, "return", true))
                );
            }
            else {
                returnType = Optional.empty();
            }
            name = Match.maybe(broma, matcher, "name");
            destructor = Match.maybe(broma, matcher, "destructor");
            platformOffsetInsertPoint = Match.maybe(broma, matcher, "insertplatformshere");
            params = new ArrayList<Param>();

            // Match parameters
            var paramMatcher = Regexes.GRAB_PARAM.matcher(broma.data);
            paramMatcher.region(matcher.start("params"), matcher.end("params"));
            while (paramMatcher.find()) {
                params.add(broma.new Param(broma, platform, paramMatcher));
            }

            if (matcher.group("platforms") != null) {
                platformOffset = Match.maybe(
                    broma,
                    broma.forkMatcher(Regexes.grabPlatformAddress(platform), matcher, "platforms", true),
                    "addr"
                );
            }
            else {
                platformOffset = Optional.empty();
            }
        }

        public String getName() {
            return this.name.orElseGet(() -> this.destructor.get()).value;
        }
    }
    
    public class Class {
        public final Range range;
        public final boolean linked;
        public final Match name;
        public final List<Function> functions;

        private Class(Broma broma, Platform platform, Matcher matcher) {
            range = new Range(matcher.start(), matcher.end());
            name = new Match(matcher, "name");
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
            var funMatcher = broma.forkMatcher(Regexes.GRAB_FUNCTION, matcher, "body", false);
            while (funMatcher.find()) {
                functions.add(broma.new Function(broma, platform, funMatcher));
            }
        }

        /**
         * Get a function by name
         * @param name
         * @return The function, or {@code Optional.empty()}
         */
        public Optional<Function> getFunction(String name) {
            return this.functions.stream().filter(i -> i.getName().equals(name)).findFirst();
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

    private Matcher forkMatcher(Pattern regex, Matcher of, String group, boolean find) {
        var matcher = regex.matcher(this.data);
        matcher.region(of.start(group), of.end(group));
        if (find) {
            matcher.find();
        }
        return matcher;
    }
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
     * Get a class by name
     * @param name
     * @return A reference to the class, or <code>Optional.empty()</code> if none found
     */
    public Optional<Class> getClass(String name) {
        return this.classes.stream().filter(i -> i.name.value.equals(name)).findFirst();
    }

    /**
     * Add a new patch to this Broma file. The patch will be applied when 
     * <code>save</code> is called. <b>It is assumed that no patches overlap!</b>
     * @param range The range of the patch in the Broma file
     * @param patch The string contents of the patch
     */
    public void addPatch(Range range, String patch) {
        this.patches.add(new Patch(range, patch));
    }

    /**
     * Commit this Broma's patches and save the changes to disk
     * @throws IOException
     */
    public void save() throws IOException {
        this.patches.sort((a, b) -> a.range.end - b.range.end);
        var result = new StringBuffer(this.data);
        for (var patch : this.patches) {
            result.replace(patch.range.start, patch.range.end, patch.patch);
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
        map.defineChoice("Broma file (Windows-only)", null, bromaFiles.toArray(String[]::new));
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
    List<Broma> bromas = new ArrayList<Broma>();
    
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
        printfmt("Loading addresses from Bindings...");
        var importedAddCount = 0;
        var importedUpdateCount = 0;
        final var listing = currentProgram.getListing();
        for (var bro : bromas) {
            printfmt("Reading {0}...", bro.path.getFileName());
            for (var cls : bro.classes) for (var fun : cls.functions) {
                var name = fun.getName();
                var className = cls.name.value;
                var fullName = className + "::" + name;

                // Only add functions that have an offset on this platform
                if (fun.platformOffset.isEmpty()) {
                    continue;
                }
                var offset = Long.parseLong(fun.platformOffset.get().value, 16);
                if (offset == Broma.PLACEHOLDER_ADDR) {
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
                final var conv = getCallingConvention(cls.linked, fun.dispatch);
                
                // Parse return type, or null if this is a destructor
                ReturnParameterImpl bromaRetType = null;
                if (fun.returnType.isPresent()) {
                    bromaRetType = new ReturnParameterImpl(addOrGetType(fun.returnType.get()), currentProgram);
                }

                // Parse args
                List<Variable> bromaParams = new ArrayList<Variable>();
                // Add `this` arg
                if (fun.dispatch.isEmpty() || fun.dispatch.get().value.equals("static")) {
                    bromaParams.add(new ParameterImpl("this", addOrGetType(Broma.Type.ptr(bro, className)), currentProgram));
                }
                // Struct return
                if (bromaRetType != null && bromaRetType.getDataType() instanceof StructureDataType) {
                    bromaParams.add(new ParameterImpl("ret", bromaRetType.getDataType(), currentProgram));
                }
                // Params
                for (var param : fun.params) {
                    bromaParams.add(new ParameterImpl(
                        param.name.map(p -> p.value).orElse(null),
                        addOrGetType(param.type),
                        currentProgram
                    ));
                }

                // Check for mismatches between the Broma and Ghidra signatures
                var signatureConflict = false;
                for (var i = 0; i < data.getParameterCount(); i += 1) {
                    var param = data.getParameter(i);
                    // We only care about mismatches against user-defined params
                    if (param.getSource() != SourceType.USER_DEFINED) {
                        continue;
                    }
                    // More params in Ghidra is automatic signature mismatch
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
                if (data.getReturn().getSource() == SourceType.USER_DEFINED && bromaRetType != null) {
                    if (!data.getReturnType().isEquivalent(bromaRetType.getDataType())) {
                        signatureConflict = true;
                    }
                }
                // Destructor signatures are weird
                if (fun.destructor != null) {
                    signatureConflict = false;
                }
                if (signatureConflict) {
                    switch (askBromaConflict(
                        fullName, "signature",
                        fmtParameters(bromaParams),
                        fmtParameters(Arrays.asList(data.getParameters()))
                    )) {
                        case BROMA: {
                            didUpdateThis = true;
                        } break;
                        case GHIDRA: {
                            // Set parameters as the existing list in Ghidra
                            bromaParams = Arrays.asList(data.getParameters());
                            // Make return type not be overridden
                            bromaRetType = null;
                        } break;
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
                    conv.getGhidraName(),
                    bromaRetType,
                    updateType,
                    true,
                    SourceType.ANALYSIS,
                    bromaParams.toArray(Variable[]::new)
                );
            }
        }
        printfmt("Added {0} functions & updated {1} functions from Broma", importedAddCount, importedUpdateCount);
    }

    private void handleExport() throws Exception {
        printfmt("Adding new addresses to Bindings...");

        final var table = currentProgram.getSymbolTable();
        var clsIter = table.getClassNamespaces();
        while (clsIter.hasNext()) {
            var cls = clsIter.next();
            // Skip imported classes
            if (cls.isExternal() || cls.isLibrary()) {
                continue;
            }
            // Skip any non-GD or non-Cocos classes
            if (cls.getName(true).matches(".*(switch|llvm|tinyxml2|<|__|fmt|std::|pugi|typeinfo).*")) {
                continue;
            }
            Broma broma = null;
            Broma.Class bromaClass = null;
            for (var bro : bromas) {
                bromaClass = bro.getClass(cls.getName(true)).orElse(null);
                if (bromaClass != null) {
                    broma = bro;
                    break;
                }
            }
            if (bromaClass == null) {
                printfmt("Warning: class {0} not found", cls.getName(true));
                continue;
            }
            for (var child : table.getChildren(cls.getSymbol())) {
                // Skip non-functions
                if (child.getSymbolType() != SymbolType.FUNCTION) {
                    continue;
                }

                final var fullName = child.getName(true);
                final var name = child.getName();

                var bromaFun = bromaClass.getFunction(name).orElse(null);
                if (bromaFun == null) {
                    printfmt("Warning: function {0} not found", fullName);
                    continue;
                }

                var fun = currentProgram.getListing().getFunctionAt(
                    child.getProgramLocation().getAddress()
                );

                // Update return type if Ghidra has an user-defined type and 
                // Broma has TodoReturn
                if (
                    bromaFun.returnType.isPresent() && bromaFun.returnType.get().name.value.equals("TodoReturn") &&
                    fun.getReturn().getSource() == SourceType.USER_DEFINED
                ) {
                    broma.addPatch(bromaFun.returnType.get().range, fun.getReturnType().getDisplayName());
                }

                // todo: check signature mismatch

                final var ghidraOffset = child.getProgramLocation().getAddress()
                    .subtract(currentProgram.getImageBase());
                
                // Add address
                if (bromaFun.platformOffset.isPresent()) {
                    Long commitOffset = 0l;
                    var bromaOffset = Long.parseLong(bromaFun.platformOffset.get().value, 16);
                    if (bromaOffset != Broma.PLACEHOLDER_ADDR && bromaOffset != ghidraOffset) {
                        switch (askBromaConflict(
                            fullName, "address",
                            String.format("0x%x", bromaOffset),
                            String.format("0x%x", ghidraOffset)
                        )) {
                            case BROMA: {
                                commitOffset = bromaOffset;
                            } break;
                            case GHIDRA: {
                                commitOffset = ghidraOffset;
                            }
                        }
                    }
                    broma.addPatch(bromaFun.platformOffset.get().range, String.format("0x%x", commitOffset));
                }
                else if (bromaFun.platformOffsetInsertPoint.isPresent()) {
                    broma.addPatch(
                        bromaFun.platformOffsetInsertPoint.get().range,
                        String.format(" = %s 0x%x", args.platform.getShortName(), ghidraOffset)
                    );
                }
                else {
                    printfmt("Warning: function {0} is inlined in Broma - refusing to add address", fullName);
                }
            }
        }

        // Save results
        printfmt("Saving Broma files...");
        for (var bro : this.bromas) {
            bro.save();
        }
    }

    void printfmt(String fmt, Object... args) {
        println(MessageFormat.format(fmt, args));
    }

    static String fmtParameters(List<Variable> params) {
        return "(" + String.join(", ", params.stream()
            .map(p -> p.getDataType().getDisplayName() + " " + p.getName())
            .toArray(String[]::new)
        ) + ")";
    }

    CConv getCallingConvention(Boolean link, Optional<Broma.Match> dispatch) {
        if (args.platform != Platform.WINDOWS) {
            return null;
        }
        if (dispatch.isPresent()) {
            switch (dispatch.get().value) {
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
        if (type.ptr.isPresent()) {
            // Make sure to support multi-level pointers like int**
            for (var i = 0; i < type.ptr.get().value.length(); i++) {
                result = new PointerDataType(result);
            }
        }
        if (type.ref.isPresent()) {
            for (var i = 0; i < type.ref.get().value.length(); i++) {
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
