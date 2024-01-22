// Sync your RE'd addresses to & from GeometryDash.bro 
// @author HJfod
// @category GeodeSDK

import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.awt.BorderLayout;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import docking.DialogComponentProvider;
import docking.widgets.dialogs.InputWithChoicesDialog;
import docking.widgets.label.GHtmlLabel;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.data.AbstractFloatDataType;
import ghidra.program.model.data.ArrayDataType;
import ghidra.program.model.data.ByteDataType;
import ghidra.program.model.data.CategoryPath;
import ghidra.program.model.data.CharDataType;
import ghidra.program.model.data.Composite;
import ghidra.program.model.data.DataType;
import ghidra.program.model.data.DataTypeConflictHandler;
import ghidra.program.model.data.DataTypePath;
import ghidra.program.model.data.DoubleDataType;
import ghidra.program.model.data.EnumDataType;
import ghidra.program.model.data.FloatDataType;
import ghidra.program.model.data.FunctionDefinitionDataType;
import ghidra.program.model.data.IntegerDataType;
import ghidra.program.model.data.ParameterDefinition;
import ghidra.program.model.data.ParameterDefinitionImpl;
import ghidra.program.model.data.PointerDataType;
import ghidra.program.model.data.StructureDataType;
import ghidra.program.model.data.Undefined1DataType;
import ghidra.program.model.data.UnionDataType;
import ghidra.program.model.data.VoidDataType;
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

public class SyncBromaScript extends GhidraScript {
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
        DEFAULT(null),
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
                    "\\(\\s*(?<params>(?:{1}\\s*,?\\s*)*)\\)" +
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
                "(?<type>{0})(?:(?:\\s+(?<name>\\w+))|(?<insertnamehere>\\s*))",
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
            boolean overlaps(Range other) {
                return start < other.end && other.start < end;
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
    
        public abstract class Parseable {
            public final Range range;
            public final Broma broma;
    
            Parseable(int ignore) {
                this.range = new Range();
                this.broma = null;
            }
            Parseable(Broma broma, Matcher matcher) {
                this.broma = broma;
                this.range = new Range(matcher.start(), matcher.end());
            }
            public String toString() {
                if (broma == null) {
                    return "<generated by SyncBromaScript - this should not be visible!>";
                }
                return broma.data.substring(range.start, range.end);
            }
        }
    
        public class Type extends Parseable {
            public final Match name;
            public final Optional<Match> template;
            public final Optional<Match> ptr;
            public final Optional<Match> ref;
    
            private Type(String name) {
                super(0);
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
                super(broma, matcher);
                name = broma.new Match(matcher, "name");
                template = Match.maybe(broma, matcher, "template");
                ptr = Match.maybe(broma, matcher, "ptr");
                ref = Match.maybe(broma, matcher, "ref");
            }
        }
    
        public class Param extends Parseable {
            public final Type type;
            public final Optional<Match> name;
            public final Optional<Match> nameInsertionPoint;
    
            private Param(Broma broma, Platform platform, Matcher matcher) {
                super(broma, matcher);
                type = new Type(broma, platform, broma.forkMatcher(Regexes.GRAB_TYPE, matcher, "type", true));
                name = Match.maybe(broma, matcher, "name");
                nameInsertionPoint = Match.maybe(broma, matcher, "insertnamehere");
            }
        }
    
        public class Function extends Parseable {
            public final Class parent;
            public final Optional<Match> dispatch;
            public final Optional<Type> returnType;
            public final Optional<Match> name;
            public final Optional<Match> destructor;
            public final List<Param> params;
            public final Optional<Match> platformOffset;
            public final Optional<Match> platformOffsetInsertPoint;
    
            private Function(Broma broma, Class parent, Platform platform, Matcher matcher) {
                super(broma, matcher);
                this.parent = parent;
    
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
                var paramMatcher = broma.forkMatcher(Regexes.GRAB_PARAM, matcher, "params", false);
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
        
        public class Class extends Parseable {
            public final boolean linked;
            public final Match name;
            public final List<Function> functions;
    
            private Class(Broma broma, Platform platform, Matcher matcher) {
                super(broma, matcher);
    
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
                    functions.add(broma.new Function(broma, this, platform, funMatcher));
                }
            }
    
            /**
             * Get matching function overloads by name
             * @param name
             * @return The functions
             */
            public List<Function> getFunctions(String name) {
                return this.functions.stream().filter(i -> i.getName().equals(name)).toList();
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
        public void save() throws IOException, Error {
            this.patches.sort((a, b) -> b.range.end - a.range.end);
            Range prev = null;
            for (var patch : this.patches) {
                if (prev != null) {
                    rtassert(
                        !patch.range.overlaps(prev),
                        "There are overlapping patches: {0}..{1} and {2}..{3}",
                        patch.range.start, patch.range.end, 
                        prev.start, prev.end
                    );
                }
                prev = patch.range;
            }
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
        boolean setOptcall;
        boolean updateTypeDB;
        boolean createVTables;
        Class<?> mapClass = null;
        Object valuesMapObject = null;
        HashMap<String, Object> resultMap = null;
    
        private InputParameters() {}

        private void initAsk(SyncBromaScript script) throws Exception {
            try {
                mapClass = Class.forName("ghidra.features.base.values.GhidraValuesMap");
                valuesMapObject = mapClass.getConstructor().newInstance();
            }
            catch(Exception ignore) {
                resultMap = new HashMap<String,Object>();
                this.showIntroOrAskAll(script);
            }
        }

        private void defineOrAskChoice(SyncBromaScript script, String title, String value, List<String> options) throws Exception {
            if (this.valuesMapObject != null) {
                var defineChoice = mapClass.getMethod("defineChoice", String.class, String.class, String[].class);
                defineChoice.invoke(
                    this.valuesMapObject,
                    title, value, options.toArray(String[]::new)
                );
            }
            else {
                resultMap.put(title, script.askChoice(    
                    "Input values to SyncBromaScript",
                    title, options, value
                ));
            }
        }

        private void defineOrAskBoolean(SyncBromaScript script, String title, boolean value) throws Exception {
            if (this.valuesMapObject != null) {
                var defineBoolean = mapClass.getMethod("defineBoolean", String.class, boolean.class);
                defineBoolean.invoke(this.valuesMapObject, title, value);
            }
            else {
                resultMap.put(title, script.askYesNo(
                    "Input values to SyncBromaScript",
                    "Should the script " + title + "?"
                ));
            }
        }

        private void showIntroOrAskAll(SyncBromaScript script) throws Exception {
            var msg =
                "Import addresses & signatures from Broma, and add new ones " + 
                "from the current project to it. Doesn't handle members or generating " +
                "vtables yet, but support is planned in the future!\n\n" + 
                "Note that it is recommended to save your Ghidra project before " + 
                "running the script, so if it messes something up you can safely " + 
                "undo the mistake.\n\n" + 
                "You will need to manually git pull / push your local copy of the " + 
                "bindings repository!\n\n" + 
                "See the README for detailed explanations of all the options.";
            if (this.valuesMapObject != null) {
                var askValues = script.getClass().getMethod("askValues", String.class, String.class, mapClass);
                askValues.invoke(script, "Sync Broma", msg, this.valuesMapObject);
            }
            else {
                script.askContinue(
                    "Sync Addresses to Broma",
                    msg + 
                    "\n\nNote: It is recommended to run this script " + 
                    "under Ghidra 11 so you get all of these inputs in one dialog :-)"
                );
            }
        }

        private String getFinalChoice(String title) throws Exception {
            if (this.valuesMapObject != null) {
                var getChoice = mapClass.getMethod("getChoice", String.class);
                return (String)getChoice.invoke(this.valuesMapObject, title);
            }
            else {
                return (String)this.resultMap.get(title);
            }
        }

        private boolean getFinalBoolean(String title) throws Exception {
            if (this.valuesMapObject != null) {
                var getBoolean = mapClass.getMethod("getBoolean", String.class);
                return (Boolean)getBoolean.invoke(this.valuesMapObject, title);
            }
            else {
                return (Boolean)this.resultMap.get(title);
            }
        }

        private boolean getFinalBoolean(String title, Platform exclusiveTo) throws Exception {
            if (this.getFinalBoolean(title) && this.platform != exclusiveTo) {
                printfmt("Warning: \"{0}\" is not supported on {1}", title, exclusiveTo.longName);
            }
            return false;
        }
    
        /**
         * Ask the user for input parameters
         * @param script Current GhidraScript instance
         * @param bindingsDir Bindings directory
         * @returns InputParameters struct with the responses
         */
        public void ask(SyncBromaScript script, Path bindingsDir) throws Exception {
            // Get all available bindings versions from the bindings directory
            List<String> versions = new ArrayList<String>();
            for (var file : Files.list(bindingsDir).toArray(Path[]::new)) {
                if (Files.isDirectory(file)) {
                    versions.add(file.getFileName().toString());
                }
            }
    
            var bromaFiles = List.of("Cocos2d.bro", "GeometryDash.bro");

            this.initAsk(script);

            // Get the target platform and version from the user
            this.defineOrAskChoice(
                script,
                "Target platform",
                null,
                Arrays.asList(Platform.values()).stream().map(p -> p.getLongName()).toList()
            );
            this.defineOrAskChoice(script, "Broma file (Windows-only)", null, bromaFiles);
            this.defineOrAskChoice(script, "Game version", versions.get(versions.size() - 1), versions);
            this.defineOrAskBoolean(script, "Import from Broma", true);
            this.defineOrAskBoolean(script, "Export to Broma", true);
            this.defineOrAskBoolean(script, "Set optcall & membercall", true);
            this.defineOrAskBoolean(script, "Set known types", true);
            this.defineOrAskBoolean(script, "Create VTables", true);

            this.showIntroOrAskAll(script);

            this.platform = Platform.parse(this.getFinalChoice("Target platform"));
            this.gameVersion = this.getFinalChoice("Game version");
            this.importFromBroma = this.getFinalBoolean("Import from Broma");
            this.exportToBroma = this.getFinalBoolean("Export to Broma");
            this.setOptcall = this.getFinalBoolean("Set optcall & membercall", Platform.WINDOWS);
            this.updateTypeDB = this.getFinalBoolean("Set known types", Platform.WINDOWS);
            this.createVTables = this.getFinalBoolean("Create VTables", Platform.WINDOWS);
    
            if (this.platform == Platform.WINDOWS) {
                bromaFiles = List.of(this.getFinalChoice("Broma file (Windows-only)"));
            }
            this.bromaFiles = bromaFiles.stream()
                .map(f -> Paths.get(bindingsDir.toString(), this.gameVersion, f))
                .toList();
            
            if (!this.importFromBroma && !this.exportToBroma) {
                throw new Error("Either importing from or exporting to Broma has to be checked!");
            }
        }
    }
    
    class InputWithButtonsDialog extends DialogComponentProvider {
        Optional<Integer> value = Optional.empty();

        InputWithButtonsDialog(String title, String content, List<String> buttons) {
            super(title, true, false, true, false);
            this.setTransient(true);

            for (var i = 0; i < buttons.size(); i += 1) {
                final var tag = i;
                var btn = new JButton(buttons.get(i));
                btn.setName(buttons.get(i));
                btn.addActionListener(e -> {
                    this.value = Optional.of(tag);
                    this.close();
                });
                this.addButton(btn);
            }
            this.addCancelButton();

            this.setRememberSize(false);
            this.setRememberLocation(false);
            this.buildMainPanel(content, buttons);
        }
        public Optional<Integer> getValue() {
            return this.value;
        }
        private void buildMainPanel(String labelText, List<String> optionValues) {
            JPanel workPanel = new JPanel(new BorderLayout());
            workPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
            JLabel messageLabel = new GHtmlLabel(labelText);
            messageLabel.setBorder(BorderFactory.createEmptyBorder(0, 0, 5, 0));
            JPanel dataPanel = new JPanel(new BorderLayout());
            dataPanel.add(messageLabel, "North");
            workPanel.add(dataPanel, "Center");
            this.addWorkPanel(workPanel);
        }
    }

    Path bindingsDir;
    InputParameters args = new InputParameters();
    List<Broma> bromas = new ArrayList<Broma>();
    
    public void run() throws Exception {
        // Get the bindings directory from the location of this script
        this.bindingsDir = Paths.get(this.sourceFile.getParentFile().getParentFile().toString(), "bindings");
        if (!Files.isDirectory(bindingsDir)) {
            throw new Error("SyncBromaScript should be located in <Geode bindings>/scripts!");
        }
        printfmt("Bindings directory: {0}", bindingsDir);

        this.args.ask(this, bindingsDir);
        for (var bro : this.args.bromaFiles) {
            this.bromas.add(new Broma(bro, args.platform));
        }

        // Update type database with known types like `gd::string` and `CCPoint`
        if (this.args.updateTypeDB) {
            this.addKnownDataTypes();
        }

        // Do the imports and exports
        if (this.args.importFromBroma) {
            this.handleImport();
        }
        if (this.args.exportToBroma) {
            this.handleExport();
        }
    
        // Create vtables from virtuals.json
        if (this.args.createVTables) {
            this.createVTables();
        }
    }

    private class Signature {
        public Optional<Variable> returnType;
        public List<Variable> parameters;

        Signature(Variable ret, List<Variable> params) {
            returnType = Optional.ofNullable(ret);
            parameters = params;
        }
        public String toString() {
            return
                returnType.map(r -> r.getDataType().getDisplayName()).orElse("undefined") +
                "(" + String.join(", ", parameters.stream()
                    .map(p -> p.getDataType().getDisplayName() + " " + p.getName())
                    .toArray(String[]::new)
                ) + ")";
        }
    }

    private Signature getBromaSignature(Broma.Function fun) throws Exception {
        // Parse args
        List<Variable> bromaParams = new ArrayList<Variable>();
        // Add `this` arg
        if (fun.dispatch.isEmpty() || !fun.dispatch.get().value.contains("static")) {
            bromaParams.add(new ParameterImpl(
                "this",
                addOrGetType(Broma.Type.ptr(fun.parent.broma, fun.parent.name.value)),
                currentProgram,
                SourceType.USER_DEFINED
            ));
        }
        // Parse return type, or null if this is a destructor
        ReturnParameterImpl bromaRetType = null;
        if (fun.returnType.isPresent() && !fun.returnType.get().name.value.contains("TodoReturn")) {
            var type = addOrGetType(fun.returnType.get());
            // Struct return
            if (type instanceof Composite) {
                type = new PointerDataType(type);
                bromaParams.add(new ParameterImpl("__return", type, currentProgram, SourceType.USER_DEFINED));
            }
            bromaRetType = new ReturnParameterImpl(type, currentProgram);
        }
        // Params
        for (var param : fun.params) {
            bromaParams.add(new ParameterImpl(
                param.name.map(p -> p.value).orElse(null),
                addOrGetType(param.type),
                currentProgram,
                SourceType.USER_DEFINED
            ));
        }
        return new Signature(bromaRetType, bromaParams);
    }

    enum SignatureImport {
        NOCHANGES,
        ADDED_MERGED,
        UPDATED,
        ADDED;

        public SignatureImport promoted(SignatureImport to) {
            if (this.ordinal() < to.ordinal()) {
                return to;
            }
            else {
                return this;
            }
        }
    }

    private SignatureImport importSignatureFromBroma(Address addr, Broma.Function fun, boolean force) throws Exception {
        final var name = fun.getName();
        final var className = fun.parent.name.value;
        final var fullName = className + "::" + name;
        final var listing = currentProgram.getListing();

        var status = SignatureImport.NOCHANGES;

        // Get the function defined at the address, or create one
        var data = listing.getFunctionAt(addr);
        if (data == null) {
            status = status.promoted(SignatureImport.ADDED);
            data = createFunction(addr, name);
            if (data == null) {
                throw new Error(MessageFormat.format(
                    "Unable to create a function at address {0} (offset 0x{1}, function {2})",
                    addr, fun.platformOffset.get().value, fullName
                ));
            }
            data.setParentNamespace(addOrGetNamespace(className));
        }

        // Check if function already has an user-provided name - in this case, it might be merged
        if (
            !force &&
            data.getSymbol().getSource() == SourceType.USER_DEFINED &&
            !data.getName(true).equals(fullName) && 
            !(data.getComment() != null && data.getComment().contains("NOTE: Merged with " + fullName))
        ) {
            int choice = askContinueConflict(
                "Function has a different name",
                List.of("Add to merged functions list", "Overwrite Ghidra name"),
                "The function {0} at {1} from Broma already has the name " + 
                "{2} in Ghidra - is this function merged with that?",
                fullName, Long.toHexString(addr.getOffset()), data.getName(true)
            );
            if (choice == 0) {
                data.setComment(
                    (data.getComment() != null ? (data.getComment() + "\n") : "") + 
                    "NOTE: Merged with " + fullName
                );
                printfmt("Added {0} to merged function list for {1}", fullName, data.getName(true));
                return SignatureImport.ADDED_MERGED;
            }
        }

        if (data.getSymbol().getSource() != SourceType.USER_DEFINED) {
            status = status.promoted(SignatureImport.ADDED);
        }
        data.getSymbol().setName(name, SourceType.USER_DEFINED);
        data.setParentNamespace(addOrGetNamespace(className));

        // Get the calling convention
        final var conv = getCallingConvention(fun.parent.linked, fun.dispatch);
        final var bromaSig = getBromaSignature(fun);

        // Check for mismatches between the Broma and Ghidra signatures
        var signatureConflict = false;
        for (var i = 0; i < data.getParameterCount(); i += 1) {
            var param = data.getParameter(i);
            // We only care about mismatches against user-defined params
            if (param.getSource() != SourceType.USER_DEFINED) {
                continue;
            }
            // More params in Ghidra is automatic signature mismatch
            if (i >= bromaSig.parameters.size()) {
                signatureConflict = true;
            }
            else {
                var bromaParam = bromaSig.parameters.get(i);
                if (
                    !param.getDataType().isEquivalent(bromaParam.getDataType()) ||
                    (
                        param.getName() != null && bromaParam.getName() != null &&
                        !param.getName().equals(bromaParam.getName())
                    )
                ) {
                    signatureConflict = true;
                }
                // Keep existing Ghidra name for args without names in Broma
                else if (bromaParam.getName() == null && param.getName() != null) {
                    bromaParam.setName(param.getName(), SourceType.USER_DEFINED);
                }
            }
        }
        if (data.getReturn().getSource() == SourceType.USER_DEFINED && bromaSig.returnType.isPresent()) {
            if (!data.getReturnType().isEquivalent(bromaSig.returnType.get().getDataType())) {
                signatureConflict = true;
            }
        }
        // Destructor signatures are weird
        if (fun.destructor != null) {
            signatureConflict = false;
        }
        if (signatureConflict) {
            askContinueConflict(
                "Signature doesn't match",
                "Ghidra has a function signature {0} that doesn't match Broma's signature {1} - do you want to override it?",
                new Signature(data.getReturn(), Arrays.asList(data.getParameters())),
                bromaSig
            );
            status = status.promoted(SignatureImport.UPDATED);
        }

        // todo: Figure this out
        // So for some undecipherable reason `EditorUI::init` will *not* decompile 
        // in Ghidra unless `ButtonSprite::create` has a meaningless unused arg 
        // at the end of its stack list. Why? I spent an entire day trying to 
        // figure that one out, and I couldn't. If someone can, please let me know 
        // so I can remove this ugly hotfix :'(
        // Same hotfix is in overload resolution in handleExport
        if (addr.subtract(currentProgram.getImageBase()) == 0x1fb90) {
            bromaSig.parameters.add(new ParameterImpl(
                "__see_SyncBromaScript_line_" + getLineNumber(),
                new Undefined1DataType(),
                currentProgram,
                SourceType.USER_DEFINED
            ));
        }

        var shouldReorderParams = 
            (conv == CConv.MEMBERCALL || conv == CConv.OPTCALL) && 
            // Only do manual storage if there's actually a need for it
            bromaSig.parameters.stream().anyMatch(p ->
                p.getDataType() instanceof Composite ||
                p.getDataType() instanceof FloatDataType
            );

        FunctionUpdateType updateType;
        // Manual storage for custom calling conventions
        if (shouldReorderParams) {
            if (!this.args.setOptcall) {
                updateType = FunctionUpdateType.DYNAMIC_STORAGE_ALL_PARAMS;
                printfmt(
                    "Warning: not handling optcall/membercall for {0} - " + 
                    "parameter order / registers will be wrong!",
                    fullName
                );
            }
            else {
                printfmt("cconv for {0} at {1}", fullName, addr);
                updateType = FunctionUpdateType.CUSTOM_STORAGE;
                var reorderedParams = new ArrayList<Variable>(bromaSig.parameters);
                // Thanks stable sort <3
                reorderedParams.sort((a, b) -> {
                    final var aIs = a.getDataType() instanceof Composite;
                    final var bIs = b.getDataType() instanceof Composite;
                    if (aIs && bIs) return 0;
                    if (aIs) return 1;
                    if (bIs) return -1;
                    return 0;
                });
                // First stack offset is 0x4 (0x0 is for return address)
                var stackOffset = 0x4;
                for (var i = 0; i < bromaSig.parameters.size(); i += 1) {
                    var param = reorderedParams.get(i);
                    final var type = param.getDataType();
                    VariableStorage storage;
                    if (i < 4 && type instanceof AbstractFloatDataType) {
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
                        if (i == 0 && !(type instanceof Composite)) {
                            storage = new VariableStorage(currentProgram, currentProgram.getRegister("ECX"));
                        }
                        else if (conv == CConv.OPTCALL && i == 1 && !(type instanceof Composite)) {
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
                            // https://github.com/geode-sdk/TulipHook/blob/main/src/convention/WindowsConvention.cpp#L69-L70
                            stackOffset += (type.getLength() + 3) / 4 * 4;
                        }
                    }
                    param.setDataType(type, storage, true, SourceType.USER_DEFINED);
                }
            }
        }
        // Use dynamic storage for calling conventions Ghidra knows
        else {
            updateType = FunctionUpdateType.DYNAMIC_STORAGE_ALL_PARAMS;
        }

        // Apply new signature
        data.updateFunction(
            conv.getGhidraName(),
            bromaSig.returnType.orElse(null),
            updateType,
            true,
            SourceType.USER_DEFINED,
            bromaSig.parameters.toArray(Variable[]::new)
        );

        // Set return type storage for custom cconvs
        if (shouldReorderParams && bromaSig.returnType.isPresent()) {
            var ret = bromaSig.returnType.get();
            final var type = ret.getDataType();
            VariableStorage storage;
            if (type instanceof AbstractFloatDataType) {
                // (p)rocessor (reg)ister
                String preg = null;
                if (type instanceof FloatDataType) {
                    preg = "XMM0_Da";
                }
                else if (type instanceof DoubleDataType) {
                    preg = "XMM0_Qa";
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
                if (ret instanceof VoidDataType) {
                    storage = VariableStorage.VOID_STORAGE;
                }
                else {
                    storage = new VariableStorage(currentProgram, currentProgram.getRegister("EAX"));
                }
            }
            data.setReturn(type, storage, SourceType.USER_DEFINED);
        }

        return status;
    }

    private void handleImport() throws Exception {
        printfmt("Loading addresses from Bindings...");
        var importedAddCount = 0;
        var importedUpdateCount = 0;
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

                switch (importSignatureFromBroma(addr, fun, false)) {
                    case ADDED: {
                        importedAddCount += 1;
                        printfmt("Added {0} at {1}", fullName, Long.toHexString(addr.getOffset()));
                    } break;
                    case UPDATED: {
                        importedUpdateCount += 1;
                        printfmt("Updated {0} at {1}", fullName, Long.toHexString(addr.getOffset()));
                    } break;
                    default: break;
                }
            }
        }
        printfmt("Added {0} functions & updated {1} functions from Broma", importedAddCount, importedUpdateCount);
    }

    private void handleExport() throws Exception {
        printfmt("Adding new addresses to Bindings...");

        var exportedAddrCount = 0;
        var exportedTypeCount = 0;

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
                final var fun = currentProgram.getListing().getFunctionAt(child.getAddress());
                final var ghidraOffset = child.getProgramLocation().getAddress()
                    .subtract(currentProgram.getImageBase());

                final var fullName = child.getName(true);
                final var name = child.getName();
                
                var bromaFuns = bromaClass.getFunctions(name);
                if (bromaFuns.isEmpty()) {
                    printfmt("Warning: function {0} not found", fullName);
                    continue;
                }
                Broma.Function bromaFun = null;
                if (bromaFuns.size() > 1) {
                    // Try to auto-detect overload
                    // For this to be possible, every arg must match type exactly
                    tryMatchFun:
                    for (var tryMatch : bromaFuns) {
                        var sig = getBromaSignature(tryMatch);
                        // Same hotfix as the other reference to offset 0x1fb90
                        var paramCount = fun.getParameterCount();
                        if (ghidraOffset == 0x1fb90) {
                            paramCount -= 1;
                        }
                        if (paramCount != sig.parameters.size()) {
                            continue tryMatchFun;
                        }
                        for (var i = 0; i < paramCount; i += 1) {
                            var param = fun.getParameter(i);
                            if (!param.getDataType().isEquivalent(sig.parameters.get(i).getDataType())) {
                                printfmt(
                                    "types {0} and {1} are not equal",
                                    param.getDataType().getDisplayName(),
                                    sig.parameters.get(i).getDataType().getDisplayName()
                                );
                                continue tryMatchFun;
                            }
                        }
                        // Found a match!
                        bromaFun = tryMatch;
                        break;
                    }
                    // If no match found, ask for manual resolution
                    if (bromaFun == null) {
                        bromaFun = bromaFuns.get(askChoiceBetter(
                            "Select overload",
                            bromaFuns.stream()
                                .map(f -> f.getName() + "(" + 
                                    String.join(
                                        ", ", f.params.stream()
                                            .map(p -> p.toString())
                                            .toArray(String[]::new)
                                    ) + 
                                    ")"
                                )
                                .toList(),
                            "Function <code>{0}</code> has multiple overloads, and the correct one couldn''t be " + 
                            "inferred from the Ghidra arguments. Please select the correct one for " + 
                            "address {1}." + 
                            "<br><b>Signature at address</b>: {2}" + 
                            "<br><em>If you need to cancel the script to check, make sure to manually set the " + 
                            "parameter types so next time the overload is automatically detected!</em>",
                            fullName, fun.getEntryPoint(),
                            new Signature(fun.getReturn(), List.of(fun.getParameters()))
                        ));
                    }
                }
                else {
                    bromaFun = bromaFuns.get(0);
                }

                // Update return type if Ghidra has an user-defined type and 
                // Broma has TodoReturn
                if (
                    bromaFun.returnType.isPresent() && bromaFun.returnType.get().name.value.contains("TodoReturn") &&
                    fun.getReturn().getSource() == SourceType.USER_DEFINED
                ) {
                    broma.addPatch(bromaFun.returnType.get().range, fun.getReturnType().getDisplayName());
                    exportedTypeCount += 1;
                }

                // Get the function signature from Broma
                importSignatureFromBroma(child.getAddress(), bromaFun, false);

                // Export parameter names
                int skipCount = 0;
                for (var i = 0; i < fun.getParameterCount() && (i - skipCount) < bromaFun.params.size(); i += 1) {
                    var param = fun.getParameter(i);
                    if (param.getName() != null && param.getName().matches("(this|__return)") || param.isAutoParameter()) {
                        skipCount += 1;
                        continue;
                    }
                    var bromaParam = bromaFun.params.get(i - skipCount);
                    if (
                        param.getName() != null &&
                        !param.getName().matches("(param_[0-9]+|int|float|bool|void|char|const)") &&
                        bromaParam.nameInsertionPoint.isPresent()
                    ) {
                        broma.addPatch(bromaParam.nameInsertionPoint.get().range, " " + param.getName());
                    }
                }
                
                // Add address
                if (bromaFun.platformOffset.isPresent()) {
                    var bromaOffset = Long.parseLong(bromaFun.platformOffset.get().value, 16);
                    if (bromaOffset != Broma.PLACEHOLDER_ADDR && bromaOffset != ghidraOffset) {
                        askContinueConflict(
                            "Address mismatch",
                            "Function {0} has the address 0x{1} in the Broma but the address 0x{2} in Ghidra - do you want to override the Broma's address?",
                            fullName, Long.toHexString(bromaOffset), Long.toHexString(ghidraOffset)
                        );
                        exportedAddrCount += 1;
                        broma.addPatch(bromaFun.platformOffset.get().range, String.format("%x", ghidraOffset));
                    }
                }
                else if (bromaFun.platformOffsetInsertPoint.isPresent()) {
                    broma.addPatch(
                        bromaFun.platformOffsetInsertPoint.get().range,
                        String.format(" = %s 0x%x", args.platform.getShortName(), ghidraOffset)
                    );
                    exportedAddrCount += 1;
                }
                else {
                    printfmt("Warning: function {0} is inlined in Broma - refusing to add address", fullName);
                }
            }
        }
        
        printfmt("Exported {0} addresses & {1} return types to Broma", exportedAddrCount, exportedTypeCount);

        // Save results
        printfmt("Saving Broma files...");
        for (var bro : this.bromas) {
            bro.save();
        }
    }

    void printfmt(String fmt, Object... args) {
        println(MessageFormat.format(fmt, args));
    }

    CConv getCallingConvention(Boolean link, Optional<Broma.Match> dispatch) {
        if (args.platform != Platform.WINDOWS) {
            return CConv.DEFAULT;
        }
        if (dispatch.isPresent()) {
            if (dispatch.get().value.contains("virtual")) {
                return CConv.THISCALL;
            }
            if (dispatch.get().value.contains("callback")) {
                return CConv.THISCALL;
            }
            if (dispatch.get().value.contains("static")) {
                return CConv.OPTCALL;
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
                    ret = currentProgram.getSymbolTable().createNameSpace(ret, ns, SourceType.USER_DEFINED);
                }
                else {
                    ret = currentProgram.getSymbolTable().createClass(ret, ns, SourceType.USER_DEFINED);
                }
            }
            else {
                ret = get;
            }
        }
        rtassert(
            ret != null,
            "Unable to add or get namespace \"{0}\"",
            string
        );
        return ret;
    }

    DataType addOrGetType(Broma.Type type) throws Exception {
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
                if (templates.isPresent()) {
                    ns += templates.get().value;
                }
                name = ns;
                typePath = new DataTypePath(category, ns);
            }
        }
        
        rtassert(name != null, "Data type doesn't have a name (GRAB_TYPE regex is invalid)");

        // Try to get this type
        var result = manager.getDataType(typePath);
        if (result == null) {
            // Try to guess the type; if the guess is wrong, the user can fix it manually
            // If the type is passed without pointer or reference, assume it's an enum
            if (type.ptr.isEmpty() && type.ref.isEmpty()) {
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

    void addKnownDataTypes() throws Exception {
        printfmt("Updating type database...");

        final var manager = currentProgram.getDataTypeManager();

        // gd::string

        var stringDataUnion = new UnionDataType(new CategoryPath("/gd"), "string_data_union");
        stringDataUnion.add(new PointerDataType(new CharDataType()), 0x4, "ptr", "");
        stringDataUnion.add(new ArrayDataType(new CharDataType(), 0x10, 0x1), 0x10, "data", "SSO");

        var string = new StructureDataType(new CategoryPath("/gd"), "string", 0x0);
        string.add(stringDataUnion, 0x10, "data", "String data with SSO");
        string.add(new IntegerDataType(), 0x4, "length", "The length of the string without the terminating null byte");
        string.add(new IntegerDataType(), 0x4, "capacity", "The capacity of the string buffer");

        manager.addDataType(string, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::CCPoint

        var point = new StructureDataType(new CategoryPath("/cocos2d"), "CCPoint", 0x0);
        point.add(new FloatDataType(), 0x4, "x", "X position of the point");
        point.add(new FloatDataType(), 0x4, "y", "Y position of the point");
        manager.addDataType(point, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::CCSize

        var size = new StructureDataType(new CategoryPath("/cocos2d"), "CCSize", 0x0);
        size.add(new FloatDataType(), 0x4, "width", "Width of the size");
        size.add(new FloatDataType(), 0x4, "height", "Height of the size");
        manager.addDataType(size, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::CCRect

        var rect = new StructureDataType(new CategoryPath("/cocos2d"), "CCRect", 0x0);
        rect.add(new FloatDataType(), 0x4, "x", "X position of the rect");
        rect.add(new FloatDataType(), 0x4, "y", "Y position of the rect");
        rect.add(new FloatDataType(), 0x4, "width", "Width of the rect");
        rect.add(new FloatDataType(), 0x4, "height", "Height of the rect");
        manager.addDataType(rect, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::ccColor3B

        var color3B = new StructureDataType(new CategoryPath("/cocos2d"), "ccColor3B", 0x0);
        color3B.add(new ByteDataType(), 0x1, "r", "Red component");
        color3B.add(new ByteDataType(), 0x1, "g", "Green component");
        color3B.add(new ByteDataType(), 0x1, "b", "Blue component");
        color3B.add(new Undefined1DataType());
        manager.addDataType(color3B, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::ccColor4B

        var color4B = new StructureDataType(new CategoryPath("/cocos2d"), "ccColor4B", 0x0);
        color4B.add(new ByteDataType(), 0x1, "r", "Red component");
        color4B.add(new ByteDataType(), 0x1, "g", "Green component");
        color4B.add(new ByteDataType(), 0x1, "b", "Blue component");
        color4B.add(new ByteDataType(), 0x1, "a", "Alpha component");
        manager.addDataType(color4B, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::ccHSVValue

        var ccHSVValue = new StructureDataType(new CategoryPath("/cocos2d"), "ccHSVValue", 0x0);
        ccHSVValue.add(new FloatDataType(), 0x4, "h", "Hue");
        ccHSVValue.add(new FloatDataType(), 0x4, "s", "Saturation");
        ccHSVValue.add(new FloatDataType(), 0x4, "v", "Lightness");
        ccHSVValue.add(new ByteDataType(), 0x1, "saturationChecked", "");
        ccHSVValue.add(new ByteDataType(), 0x1, "brightnessChecked", "");
        ccHSVValue.add(new Undefined1DataType());
        ccHSVValue.add(new Undefined1DataType());
        manager.addDataType(ccHSVValue, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::SEL_MenuHandler

        var menuHandlerSelector = new FunctionDefinitionDataType(new CategoryPath("/cocos2d"), "SEL_MenuHandler");
        menuHandlerSelector.setArguments(new ParameterDefinition[] {
            new ParameterDefinitionImpl(
                "this",
                this.addOrGetType(Broma.Type.ptr(this.bromas.get(0), "cocos2d::CCObject")),
                "The target object for this callback"
            ),
            new ParameterDefinitionImpl(
                "sender",
                this.addOrGetType(Broma.Type.ptr(this.bromas.get(0), "cocos2d::CCObject")),
                "The menu item that was activated to trigger this callback"
            ),
        });
        menuHandlerSelector.setReturnType(new VoidDataType());
        menuHandlerSelector.setCallingConvention("__thiscall");
        manager.addDataType(menuHandlerSelector, DataTypeConflictHandler.REPLACE_HANDLER);
    }

    void createVTables() throws Exception {
        final var manager = currentProgram.getDataTypeManager();

        printfmt("Creating VTables...");

        final var jsonPath = Paths.get(this.bindingsDir.toString(), "scripts", "virtuals.json");
        final var json = (JSONObject) new JSONParser().parse(new FileReader(jsonPath.toFile()));

        printfmt("Creating function definitions...");
        for (var key : json.keySet()) {
            var tables = (JSONArray) json.get(key);
            for (var i = 0; i < tables.size(); i += 1) {
                var table = (JSONArray) tables.get(i);
                // var fun = 
                // unfinished because 2.205 dropped on android holy crap
            }
        }
    }

    void askContinue(String title, String fmt, Object... args) throws Exception {
		var choice = Swing.runNow(() -> {
			var dialog = new InputWithButtonsDialog(
                title,
                MessageFormat.format(("<html>" + fmt + "</html>").replace("\n\n", "<br>"), args),
                List.of("Continue")
            );
			state.getTool().showDialog(dialog);
			return dialog.getValue();
		});
        if (choice.isEmpty()) {
            throw new CancelledException();
        }
    }

    void askContinueConflict(String title, String fmt, Object... args) throws Exception {
        if (!askYesNo(title, MessageFormat.format(
            fmt + "\nIf this is not the case, please fix the conflict manually in the Broma file!",
            args
        ))) {
			throw new CancelledException();
        }
    }

    int askContinueConflict(String title, List<String> options, String fmt, Object... args) throws Exception {
		var choice = Swing.runNow(() -> {
			var dialog = new InputWithButtonsDialog(
                title,
                MessageFormat.format(
                    "<html>" + fmt + "<br>If this is not the case, please fix " + 
                    "the conflict manually in the Broma file!" + "</html>",
                    args
                ),
                options
            );
			state.getTool().showDialog(dialog);
			return dialog.getValue();
		});
        if (choice.isEmpty()) {
            throw new CancelledException();
        }
        return choice.get();
    }

    int askChoiceBetter(String title, List<String> options, String fmt, Object... args) throws Exception {
		var choice = Swing.runNow(() -> {
			InputWithChoicesDialog dialog = new InputWithChoicesDialog(
                title,
                MessageFormat.format("<html>" + fmt + "</html>", args),
                options.toArray(String[]::new),
                options.get(0),
                null
            );
			state.getTool().showDialog(dialog);
			return dialog.getValue();
		});
		if (choice == null) {
			throw new CancelledException();
		}
        return options.indexOf(choice);
    }

    /**
     * Java {@code assert}s don't run in Ghidra scripts... so here's this function instead 
     * to assert that the script code is running correctly!
     * @param cond Condition to require to be true
     * @param fmt Format string for error message
     * @param args Args for format string
     * @throws Error If the condition is false
     */
    void rtassert(boolean cond, String fmt, Object... args) throws Error {
        if (!cond) {
            throw new Error(MessageFormat.format(
                fmt + " - this is an error in SyncBromaScript itself, " + 
                "please report it to the Geode devs!", args
            ));
        }
    }

    // https://stackoverflow.com/questions/17473148/dynamically-get-the-current-line-number

    /** @return The line number of the code that ran this method
     * @author Brian_Entei */
    public static int getLineNumber() {
        return ___8drrd3148796d_Xaf();
    }

    /** This methods name is ridiculous on purpose to prevent any other method
     * names in the stack trace from potentially matching this one.
     * 
     * @return The line number of the code that called the method that called
     *         this method(Should only be called by getLineNumber()).
     * @author Brian_Entei */
    private static int ___8drrd3148796d_Xaf() {
        boolean thisOne = false;
        int thisOneCountDown = 1;
        StackTraceElement[] elements = Thread.currentThread().getStackTrace();
        for(StackTraceElement element : elements) {
            String methodName = element.getMethodName();
            int lineNum = element.getLineNumber();
            if(thisOne && (thisOneCountDown == 0)) {
                return lineNum;
            } else if(thisOne) {
                thisOneCountDown--;
            }
            if(methodName.equals("___8drrd3148796d_Xaf")) {
                thisOne = true;
            }
        }
        return -1;
    }
}
