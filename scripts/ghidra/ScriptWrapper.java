
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.regex.Pattern;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.data.ArrayDataType;
import ghidra.program.model.data.BooleanDataType;
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
import ghidra.program.model.data.LongDataType;
import ghidra.program.model.data.LongLongDataType;
import ghidra.program.model.data.UnsignedLongLongDataType;
import ghidra.program.model.data.ParameterDefinition;
import ghidra.program.model.data.ParameterDefinitionImpl;
import ghidra.program.model.data.Pointer;
import ghidra.program.model.data.PointerDataType;
import ghidra.program.model.data.ShortDataType;
import ghidra.program.model.data.Structure;
import ghidra.program.model.data.StructureDataType;
import ghidra.program.model.data.Undefined1DataType;
import ghidra.program.model.data.UnionDataType;
import ghidra.program.model.data.UnsignedCharDataType;
import ghidra.program.model.data.UnsignedIntegerDataType;
import ghidra.program.model.data.UnsignedLongDataType;
import ghidra.program.model.data.UnsignedShortDataType;
import ghidra.program.model.data.VoidDataType;
import ghidra.program.model.lang.CompilerSpecID;
import ghidra.program.model.lang.LanguageID;
import ghidra.program.model.listing.ParameterImpl;
import ghidra.program.model.listing.ReturnParameterImpl;
import ghidra.program.model.listing.Variable;
import ghidra.program.model.symbol.Namespace;
import ghidra.program.model.symbol.SourceType;
import ghidra.util.exception.CancelledException;

public class ScriptWrapper {
    List<String> classes = new ArrayList<String>();
    List<String> enums = new ArrayList<String>();
    List<String> functions = new ArrayList<String>();
    GhidraScript wrapped;
    Path bindingsDir;
    boolean fillStandardTypes;

    ScriptWrapper(GhidraScript script) throws CancelledException {
        this.wrapped = script;

        // Check if RecoverClassesFromRttiScript has been run
        final var manager = script.getCurrentProgram().getDataTypeManager();
        final var category = new CategoryPath("/ClassDataTypes");
        if (
            manager.getCategory(category) == null &&
            // Mac has no symbol information to RE
            this.autoDetectPlatform().map(p -> p != Platform.MAC_INTEL && p != Platform.MAC_ARM).orElse(true)
        ) {
            InputWithButtonsDialog.show(
                this,
                "Ghidra environment has not been set up",
                "<html>It appears you have not run RecoverClassesFromRttiScript yet!<br>" + 
                "It is highly recommended to run the script before doing any Broma " + 
                "synchronization, as it makes decompilations much better by adding " + 
                "vtables, and it is also required for importing/exporting members.<br>" + 
                "If you would like to proceed anyway, you may do so, but note that " + 
                "some things may not work properly.</html>",
                List.of("Proceed Anyway")
            );
        }

        // Get the bindings directory from the location of this script
        this.bindingsDir = Paths.get(script.getSourceFile().getParentFile().getParentFile().getParentFile().toString(), "bindings");
        if (!Files.isDirectory(bindingsDir)) {
            throw new Error("SyncBromaScript should be located in <Geode bindings>/scripts/ghidra!");
        }
        this.printfmt("Bindings directory: {0}", bindingsDir);
    }

    Optional<Platform> autoDetectPlatform() {
        String id = wrapped.getCurrentProgram().getCompilerSpec().getCompilerSpecID().getIdAsString();
        switch (wrapped.getCurrentProgram().getLanguageID().getIdAsString()) {
            case "x86:LE:32:default": return Optional.of(Platform.WINDOWS32);
            case "x86:LE:64:default": return Optional.of(id.equals("windows") ? Platform.WINDOWS64 : Platform.MAC_INTEL);
            case "AARCH64:LE:64:AppleSilicon": return Optional.of(Platform.MAC_ARM);
            case "ARM:LE:32:v8":      return Optional.of(Platform.ANDROID32);
            case "AARCH64:LE:64:v8A": return Optional.of(Platform.ANDROID64);
        }
        return Optional.empty();
    }

    /**
     * Java {@code assert}s don't run in Ghidra scripts... so here's this function instead 
     * to assert that the script code is running correctly!
     * @param cond Condition to require to be true
     * @param fmt Format string for error message
     * @param args Args for format string
     * @throws Error If the condition is false
     */
    static void rtassert(boolean cond, String fmt, Object... args) throws Error {
        if (!cond) {
            throw new Error(MessageFormat.format(
                fmt + " - this is an error in SyncBromaScript itself, " + 
                "please report it to the Geode devs!", args
            ));
        }
    }

    void printfmt(String fmt, Object... args) {
        wrapped.println(MessageFormat.format(fmt, args));
    }

    Namespace addOrGetNamespace(String string) throws Exception {
        Namespace ret = null;
        var iter = Arrays.asList(string.split("::")).listIterator();
        while (iter.hasNext()) {
            var ns = iter.next();
            var get = wrapped.getNamespace(ret, ns);
            if (get == null) {
                if (iter.hasNext()) {
                    ret = wrapped.getCurrentProgram().getSymbolTable().createNameSpace(ret, ns, SourceType.USER_DEFINED);
                }
                else {
                    ret = wrapped.getCurrentProgram().getSymbolTable().createClass(ret, ns, SourceType.USER_DEFINED);
                }
            }
            else {
                ret = get;
            }
        }
        ScriptWrapper.rtassert(
            ret != null,
            "Unable to add or get namespace \"{0}\"",
            string
        );
        return ret;
    }

    DataType getArrayType(String name, Platform platform) throws Exception {
        var arrayMatch = Pattern.compile("^array<(.+), *(\\d+)>$").matcher(name);
        if (!arrayMatch.matches()) {
            printfmt("Array type {0} doesn't match the expected format", name);
            return new ArrayDataType(new PointerDataType(VoidDataType.dataType), 0, 0);
        }

        DataType inner = this.addOrGetType(arrayMatch.group(1), platform);

        return new ArrayDataType(
            inner != null ? inner : new PointerDataType(VoidDataType.dataType),
            inner != null ? Integer.parseInt(arrayMatch.group(2)) : 0,
            inner != null ? inner.getLength() : 0
        );
    }

    DataType addOrGetPair(String name, Platform platform) throws Exception {
        final var manager = wrapped.getCurrentProgram().getDataTypeManager();
        var cat = this.createCategoryAll(new CategoryPath("/ClassDataTypes/std/pair"));
        var existing = manager.getDataType(cat, name);
        if (existing != null) {
            return existing;
        }

        var pair = new StructureDataType(cat, name, 0);

        var template = name.substring(5, name.length() - 1);
        var templateCount = 0;
        var firstMatch = "";
        var secondMatch = "";
        for (var i = 0; i < template.length(); i++) {
            if (template.charAt(i) == '<') {
                templateCount++;
            }
            else if (template.charAt(i) == '>') {
                templateCount--;
            }
            else if (template.charAt(i) == ',' && templateCount == 0) {
                firstMatch = template.substring(0, i).trim();
                secondMatch = template.substring(i + 1).trim();
                break;
            }
        }

        if (firstMatch.isEmpty() || secondMatch.isEmpty()) {
            printfmt("Pair type {0} doesn't match the expected format", name);
            return manager.addDataType(pair, DataTypeConflictHandler.REPLACE_HANDLER);
        }

        var first = this.addOrGetType(firstMatch, platform);
        var second = this.addOrGetType(secondMatch, platform);

        if (first == null || second == null) {
            printfmt("Pair type {0} doesn't match the expected format", name);
            return manager.addDataType(pair, DataTypeConflictHandler.REPLACE_HANDLER);
        }

        pair.add(first, "first", "First element of the pair");
        pair.add(second, "second", "Second element of the pair");
        pair.setPackingEnabled(true);
        return manager.addDataType(pair, DataTypeConflictHandler.REPLACE_HANDLER);
    }

    DataType addOrGetType(String name, Platform platform) throws Exception {
        return this.addOrGetType(Broma.fakeType(name), platform);
    }

    DataType addOrGetType(Broma.Type type, Platform platform) throws Exception {
        final var manager = wrapped.getCurrentProgram().getDataTypeManager();

        DataType result = null;
        var normalizedTemplate = type.template.isPresent() ? type.template.get().value.replaceAll("\\s*,\\s*", ",") : "";

        // Built-in types
        if (type.name.value.matches("bool|char|short|int|long|float|double|void|longlong")) {
            switch (type.name.value) {
                case "bool": result = BooleanDataType.dataType; break;
                case "char": result = type.unsigned ? UnsignedCharDataType.dataType : CharDataType.dataType; break;
                case "short": result = type.unsigned ? UnsignedShortDataType.dataType : ShortDataType.dataType; break;
                case "int": result = type.unsigned ? UnsignedIntegerDataType.dataType : IntegerDataType.dataType; break;
                case "long": result = type.unsigned ? UnsignedLongDataType.dataType : LongDataType.dataType; break;
                case "longlong": result = type.unsigned ? UnsignedLongLongDataType.dataType : LongLongDataType.dataType; break;
                case "float": result = FloatDataType.dataType; break;
                case "double": result = DoubleDataType.dataType; break;
                case "void": result = VoidDataType.dataType; break;
            }
        }
        else if (type.name.value.matches("int8_t|uint8_t|int16_t|uint16_t|int32_t|uint32_t|int64_t|uint64_t|intptr_t|uintptr_t|size_t|time_t")) {
            switch (type.name.value) {
                case "int8_t": result = ByteDataType.dataType; break;
                case "uint8_t": result = UnsignedCharDataType.dataType; break;
                case "int16_t": result = ShortDataType.dataType; break;
                case "uint16_t": result = UnsignedShortDataType.dataType; break;
                case "int32_t": result = IntegerDataType.dataType; break;
                case "uint32_t": result = UnsignedIntegerDataType.dataType; break;
                case "int64_t": result = LongLongDataType.dataType; break;
                case "uint64_t": result = UnsignedLongLongDataType.dataType; break;
                case "intptr_t": switch (platform) {
                    case WINDOWS32:
                    case ANDROID32:
                        result = IntegerDataType.dataType;
                        break;
                    case WINDOWS64:
                        result = LongLongDataType.dataType;
                        break;
                    case ANDROID64:
                    case MAC_INTEL:
                    case MAC_ARM:
                    case IOS:
                        result = LongDataType.dataType;
                        break;
                } break;
                case "uintptr_t": switch (platform) {
                    case WINDOWS32:
                    case ANDROID32:
                        result = UnsignedIntegerDataType.dataType;
                        break;
                    case WINDOWS64:
                        result = UnsignedLongLongDataType.dataType;
                        break;
                    case ANDROID64:
                    case MAC_INTEL:
                    case MAC_ARM:
                    case IOS:
                        result = UnsignedLongDataType.dataType;
                        break;
                } break;
                case "size_t": switch (platform) {
                    case WINDOWS32:
                        result = UnsignedIntegerDataType.dataType;
                        break;
                    case WINDOWS64:
                        result = UnsignedLongLongDataType.dataType;
                        break;
                    case ANDROID32:
                    case ANDROID64:
                    case MAC_INTEL:
                    case MAC_ARM:
                    case IOS:
                        result = UnsignedLongDataType.dataType;
                        break;
                } break;
                case "time_t": switch (platform) {
                    case WINDOWS64:
                        result = LongLongDataType.dataType;
                        break;
                    case WINDOWS32:
                    case ANDROID32:
                    case ANDROID64:
                    case MAC_INTEL:
                    case MAC_ARM:
                    case IOS:
                        result = LongDataType.dataType;
                        break;
                } break;
            }
        }
        // STL containers are fully known
        else if (type.name.value.startsWith("gd::")) {
            result = this.updateTypeDatabaseWithSTL(type.name.value.substring(4), normalizedTemplate, platform);
        }
        // STL pair
        else if (type.name.value.startsWith("std::pair")) {
            result = this.addOrGetPair(type.name.value.substring(5) + normalizedTemplate, platform);
        }
        // Array types
        else if (type.name.value.startsWith("std::array")) {
            result = this.getArrayType(type.name.value.substring(5) + normalizedTemplate, platform);
        }
        // Broma-specific type
        else if (type.name.value.equals("TodoReturn")) {
            var path = new CategoryPath("/ClassDataTypes/broma/TodoReturn");
            // Make enum rather than struct so it doesn't get subjected to struct return
            result = manager.addDataType(
                new EnumDataType(path, path.getName(), 0x1),
                DataTypeConflictHandler.REPLACE_HANDLER
            );
        }
        // Class types
        else {
            // Get the name and category
            var nameIter = Arrays.asList(type.name.value.split("::")).listIterator();
            String name = null;
            DataTypePath typePath = null;
    
            // Root category is the same as where RecoverClassesFromRTTIScript places them
            CategoryPath category = new CategoryPath("/ClassDataTypes");

            // Ensure root category exists
            if (manager.getCategory(category) == null) {
                manager.createCategory(category);
            }
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
                    // RecoverClassesFromRTTIScript puts class types in a self-titled folder
                    category = category.extend(name);
                    typePath = new DataTypePath(category, ns);
                }
            }
        
            ScriptWrapper.rtassert(name != null, "Data type doesn't have a name (GRAB_TYPE regex is invalid)");

            // Try to get this type
            result = manager.getDataType(typePath);
            if (
                result == null || (classes.contains(type.name.value) && !(result instanceof Structure)) ||
                (enums.contains(type.name.value) && !(result instanceof ghidra.program.model.data.Enum))
            ) {
                if (classes.contains(type.name.value)) {
                    result = manager.addDataType(
                        new StructureDataType(category, name, 0),
                        result == null ? DataTypeConflictHandler.DEFAULT_HANDLER : DataTypeConflictHandler.REPLACE_HANDLER
                    );
                    printfmt("Created new struct {0}", type.name.value);
                }
                else if (enums.contains(type.name.value)) {
                    result = manager.addDataType(
                        new EnumDataType(category, name, IntegerDataType.dataType.getLength()),
                        result == null ? DataTypeConflictHandler.DEFAULT_HANDLER : DataTypeConflictHandler.REPLACE_HANDLER
                    );
                    printfmt("Created new enum {0}", type.name.value);
                }
                // Try to guess the type; if the guess is wrong, the user can fix it manually
                // If the type is passed without pointer or reference, assume it's an enum
                else if (type.ptr.isEmpty() && type.ref.isEmpty()) {
                    result = manager.addDataType(
                        new EnumDataType(category, name, IntegerDataType.dataType.getLength()),
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

    CategoryPath createCategoryAll(CategoryPath path) {
        final var manager = wrapped.getCurrentProgram().getDataTypeManager();
        var build = new CategoryPath("/");
        for (var p : path.asList()) {
            build = build.extend(p);
            if (manager.getCategory(build) == null) {
                manager.createCategory(build);
            }
        }
        return path;
    }

    Signature getBromaSignature(Broma.Function fun, Platform platform, boolean ignoreReturnType) throws Exception {
        // Parse args
        List<Variable> bromaParams = new ArrayList<Variable>();
        // Add `this` arg
        boolean hasThis = fun.parent != null && (fun.dispatch.isEmpty() || !fun.dispatch.get().value.contains("static"));
        if (hasThis && platform != Platform.ANDROID32 && platform != Platform.MAC_INTEL) {
            bromaParams.add(new ParameterImpl(
                "this",
                addOrGetType(Broma.Type.ptr(fun.parent.broma, fun.parent.name.value), platform),
                wrapped.getCurrentProgram(),
                SourceType.USER_DEFINED
            ));
        }
        // Parse return type, or null if this is a destructor
        ReturnParameterImpl bromaRetType = null;
        boolean hasStructReturn = false;
        if (fun.returnType.isPresent() && !ignoreReturnType) {
            var type = addOrGetType(fun.returnType.get(), platform);
            // Struct return
            if (type instanceof Composite) {
                hasStructReturn = true;
                type = new PointerDataType(type);
                if (platform != Platform.ANDROID64 && platform != Platform.MAC_ARM && platform != Platform.IOS) {
                    bromaParams.add(new ParameterImpl("__return", type, wrapped.getCurrentProgram(), SourceType.USER_DEFINED));
                }
            }
            bromaRetType = new ReturnParameterImpl(type, wrapped.getCurrentProgram());
        }
        // Add `this` arg (Intel macOS / 32-bit Android)
        if (hasThis && (platform == Platform.ANDROID32 || platform == Platform.MAC_INTEL)) {
            bromaParams.add(new ParameterImpl(
                "this",
                addOrGetType(Broma.Type.ptr(fun.parent.broma, fun.parent.name.value), platform),
                wrapped.getCurrentProgram(),
                SourceType.USER_DEFINED
            ));
        }
        // Params
        for (var param : fun.params) {
            var paramType = addOrGetType(param.type, platform);
            bromaParams.add(new ParameterImpl(
                param.name.map(p -> p.value).orElse(null),
                paramType instanceof Composite ? new PointerDataType(paramType) : paramType,
                wrapped.getCurrentProgram(),
                SourceType.USER_DEFINED
            ));
        }
        Signature bromaSig = new Signature(bromaRetType, bromaParams);
        bromaSig.memberFunction = hasThis;
        bromaSig.returnsStruct = hasStructReturn;
        return bromaSig;
    }

    void askContinue(String title, String fmt, Object... args) throws Exception {
        InputWithButtonsDialog.show(
            this,
            title,
            MessageFormat.format(("<html>" + fmt + "</html>").replace("\n\n", "<br>"), args),
            List.of("Continue")
        );
    }
    
    void updateTypeDatabase(Platform platform) throws Exception {
        this.printfmt("Updating type database...");

        final var manager = wrapped.getCurrentProgram().getDataTypeManager();
        final var category = new CategoryPath("/ClassDataTypes");
        CategoryPath cat;

        // gd::string

        var pointerSize = manager.getDataOrganization().getPointerSize();
        DataType sizeType = null;
        switch (platform) {
            case WINDOWS32:
                sizeType = UnsignedIntegerDataType.dataType;
                break;
            case WINDOWS64:
                sizeType = UnsignedLongLongDataType.dataType;
                break;
            case ANDROID32:
            case ANDROID64:
            case MAC_INTEL:
            case MAC_ARM:
            case IOS:
                sizeType = UnsignedLongDataType.dataType;
                break;
        }

        if (platform == Platform.WINDOWS32 || platform == Platform.WINDOWS64) { // Microsoft Visual C++
            cat = this.createCategoryAll(category.extend("gd", "string_data_union"));
            var stringDataUnion = new UnionDataType(cat, cat.getName());
            stringDataUnion.add(new PointerDataType(CharDataType.dataType), pointerSize, "ptr", "");
            stringDataUnion.add(new ArrayDataType(CharDataType.dataType, 0x10, 0x1), 0x10, "data", "SSO");

            cat = this.createCategoryAll(category.extend("gd", "string"));
            var string = new StructureDataType(cat, cat.getName(), 0x0);
            string.add(stringDataUnion, 0x10, "data", "String data with SSO");
            string.add(sizeType, pointerSize, "length", "The length of the string without the terminating null byte");
            string.add(sizeType, pointerSize, "capacity", "The capacity of the string buffer");
            string.setPackingEnabled(true);

            manager.addDataType(string, DataTypeConflictHandler.REPLACE_HANDLER);
        }
        else if (platform == Platform.MAC_ARM || platform == Platform.MAC_INTEL || platform == Platform.IOS) { // libc++
            cat = this.createCategoryAll(category.extend("gd", "string_long"));
            var stringLong = new StructureDataType(cat, cat.getName(), 0x0);
            if (platform == Platform.MAC_INTEL) {
                stringLong.add(sizeType, pointerSize, "capacity", "The capacity of the string buffer");
            } else {
                stringLong.add(new PointerDataType(CharDataType.dataType), pointerSize, "ptr", "Pointer to the string data");
            }
            stringLong.add(sizeType, pointerSize, "length", "The length of the string without the terminating null byte");
            if (platform == Platform.MAC_INTEL) {
                stringLong.add(new PointerDataType(CharDataType.dataType), pointerSize, "ptr", "Pointer to the string data");
            } else {
                stringLong.add(sizeType, pointerSize, "capacity", "The capacity of the string buffer");
            }
            stringLong.setPackingEnabled(true);

            cat = this.createCategoryAll(category.extend("gd", "string_short"));
            var stringShort = new StructureDataType(cat, cat.getName(), 0x0);
            if (platform == Platform.MAC_INTEL) {
                stringShort.add(ByteDataType.dataType, 0x1, "size", "The size of the string data");
            }
            stringShort.add(new ArrayDataType(CharDataType.dataType, pointerSize * 3 - 1, 0x1), pointerSize * 3 - 1, "data", "The string data");
            if (platform != Platform.MAC_INTEL) {
                stringShort.add(ByteDataType.dataType, 0x1, "size", "The size of the string data");
            }

            cat = this.createCategoryAll(category.extend("gd", "string_data_union"));
            var stringDataUnion = new UnionDataType(cat, cat.getName());
            stringDataUnion.add(stringLong, pointerSize * 3, "long", "Long string data");
            stringDataUnion.add(stringShort, pointerSize * 3, "short", "Short string data");

            cat = this.createCategoryAll(category.extend("gd", "string"));
            var string = new StructureDataType(cat, cat.getName(), 0x0);
            string.add(stringDataUnion, pointerSize * 3, "data", "String data with SSO");
            string.setPackingEnabled(true);

            manager.addDataType(string, DataTypeConflictHandler.REPLACE_HANDLER);
        }
        else if (platform == Platform.ANDROID32 || platform == Platform.ANDROID64) { // libstdc++
            cat = this.createCategoryAll(category.extend("gd", "string_data"));
            var stringData = new StructureDataType(cat, cat.getName(), 0x0);
            stringData.add(sizeType, pointerSize, "length", "The length of the string without the terminating null byte");
            stringData.add(sizeType, pointerSize, "capacity", "The capacity of the string buffer");
            stringData.add(IntegerDataType.dataType, 0x4, "refcount", "Reference count for copy-on-write");
            stringData.setPackingEnabled(true);

            cat = this.createCategoryAll(category.extend("gd", "string_data_union"));
            var stringDataUnion = new UnionDataType(cat, cat.getName());
            stringDataUnion.add(new PointerDataType(stringData), pointerSize, "data", "Pointer to the string information");
            stringDataUnion.add(new PointerDataType(CharDataType.dataType), pointerSize, "ptr", "Pointer to the string data");

            cat = this.createCategoryAll(category.extend("gd", "string"));
            var string = new StructureDataType(cat, cat.getName(), 0x0);
            string.add(stringDataUnion, pointerSize, "data", "String data");
            string.setPackingEnabled(true);

            manager.addDataType(string, DataTypeConflictHandler.REPLACE_HANDLER);
        }

        // cocos2d::CCPoint

        cat = this.createCategoryAll(category.extend("cocos2d", "CCPoint"));
        var point = new StructureDataType(cat, cat.getName(), 0x0);
        point.add(FloatDataType.dataType, 0x4, "x", "X position of the point");
        point.add(FloatDataType.dataType, 0x4, "y", "Y position of the point");
        point.setPackingEnabled(true);
        manager.addDataType(point, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::CCSize

        cat = this.createCategoryAll(category.extend("cocos2d", "CCSize"));
        var size = new StructureDataType(cat, cat.getName(), 0x0);
        size.add(FloatDataType.dataType, 0x4, "width", "Width of the size");
        size.add(FloatDataType.dataType, 0x4, "height", "Height of the size");
        size.setPackingEnabled(true);
        manager.addDataType(size, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::CCRect

        cat = this.createCategoryAll(category.extend("cocos2d", "CCRect"));
        var rect = new StructureDataType(cat, cat.getName(), 0x0);
        rect.add(FloatDataType.dataType, 0x4, "x", "X position of the rect");
        rect.add(FloatDataType.dataType, 0x4, "y", "Y position of the rect");
        rect.add(FloatDataType.dataType, 0x4, "width", "Width of the rect");
        rect.add(FloatDataType.dataType, 0x4, "height", "Height of the rect");
        rect.setPackingEnabled(true);
        manager.addDataType(rect, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::ccColor3B

        cat = this.createCategoryAll(category.extend("cocos2d", "ccColor3B"));
        var color3B = new StructureDataType(cat, cat.getName(), 0x0);
        color3B.add(ByteDataType.dataType, 0x1, "r", "Red component");
        color3B.add(ByteDataType.dataType, 0x1, "g", "Green component");
        color3B.add(ByteDataType.dataType, 0x1, "b", "Blue component");
        color3B.setPackingEnabled(true);
        manager.addDataType(color3B, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::ccColor4B

        cat = this.createCategoryAll(category.extend("cocos2d", "ccColor4B"));
        var color4B = new StructureDataType(cat, cat.getName(), 0x0);
        color4B.add(ByteDataType.dataType, 0x1, "r", "Red component");
        color4B.add(ByteDataType.dataType, 0x1, "g", "Green component");
        color4B.add(ByteDataType.dataType, 0x1, "b", "Blue component");
        color4B.add(ByteDataType.dataType, 0x1, "a", "Alpha component");
        color4B.setPackingEnabled(true);
        manager.addDataType(color4B, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::ccHSVValue

        cat = this.createCategoryAll(category.extend("cocos2d", "ccHSVValue"));
        var ccHSVValue = new StructureDataType(cat, cat.getName(), 0x0);
        ccHSVValue.add(FloatDataType.dataType, 0x4, "h", "Hue");
        ccHSVValue.add(FloatDataType.dataType, 0x4, "s", "Saturation");
        ccHSVValue.add(FloatDataType.dataType, 0x4, "v", "Lightness");
        ccHSVValue.add(ByteDataType.dataType, 0x1, "saturationChecked", "");
        ccHSVValue.add(ByteDataType.dataType, 0x1, "brightnessChecked", "");
        ccHSVValue.setPackingEnabled(true);
        manager.addDataType(ccHSVValue, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::SEL_MenuHandler

        cat = this.createCategoryAll(category.extend("cocos2d", "SEL_MenuHandler"));
        var menuHandlerSelector = new FunctionDefinitionDataType(cat, cat.getName());
        menuHandlerSelector.setArguments(new ParameterDefinition[] {
            new ParameterDefinitionImpl(
                "this",
                this.addOrGetType(Broma.Type.ptr(Broma.fake(), "cocos2d::CCObject"), platform),
                "The target object for this callback"
            ),
            new ParameterDefinitionImpl(
                "sender",
                this.addOrGetType(Broma.Type.ptr(Broma.fake(), "cocos2d::CCObject"), platform),
                "The menu item that was activated to trigger this callback"
            ),
        });
        menuHandlerSelector.setReturnType(VoidDataType.dataType);
        menuHandlerSelector.setCallingConvention("__thiscall");
        manager.addDataType(menuHandlerSelector, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::SEL_CallFunc

        cat = this.createCategoryAll(category.extend("cocos2d", "SEL_CallFunc"));
        var callFuncSelector = new FunctionDefinitionDataType(cat, cat.getName());
        callFuncSelector.setArguments(new ParameterDefinition[] {
            new ParameterDefinitionImpl(
                "this",
                this.addOrGetType(Broma.Type.ptr(Broma.fake(), "cocos2d::CCObject"), platform),
                "The target object for this callback"
            ),
        });
        callFuncSelector.setReturnType(VoidDataType.dataType);
        callFuncSelector.setCallingConvention("__thiscall");
        manager.addDataType(callFuncSelector, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::extension::SEL_HttpResponse

        cat = this.createCategoryAll(category.extend("cocos2d", "extension", "SEL_HttpResponse"));
        var httpResponseSelector = new FunctionDefinitionDataType(cat, cat.getName());
        httpResponseSelector.setArguments(new ParameterDefinition[] {
            new ParameterDefinitionImpl(
                "this",
                this.addOrGetType(Broma.Type.ptr(Broma.fake(), "cocos2d::CCObject"), platform),
                "The target object for this callback"
            ),
            new ParameterDefinitionImpl(
                "client",
                this.addOrGetType(Broma.Type.ptr(Broma.fake(), "cocos2d::extension::CCHttpClient"), platform),
                "The HTTP client object"
            ),
            new ParameterDefinitionImpl(
                "response",
                this.addOrGetType(Broma.Type.ptr(Broma.fake(), "cocos2d::extension::CCHttpResponse"), platform),
                "The HTTP response object"
            ),
        });
        httpResponseSelector.setReturnType(VoidDataType.dataType);
        httpResponseSelector.setCallingConvention("__thiscall");
        manager.addDataType(httpResponseSelector, DataTypeConflictHandler.REPLACE_HANDLER);

        // geode::SeedValueSRV etc.

        for (var x : new String[] { "SR", "RS", "VRS", "VSR", "RVS", "RSV", "SVR", "SRV" }) {
            cat = this.createCategoryAll(category.extend("geode", "SeedValue" + x));
            var ty = new StructureDataType(cat, cat.getName(), 0x0);
            for (var c : x.chars().toArray()) {
                switch (c) {
                    case 'S': ty.add(IntegerDataType.dataType, 0x4, "seed", "The seed of the protected value"); break;
                    case 'R': ty.add(IntegerDataType.dataType, 0x4, "random", "The randomized number of the protected value"); break;
                    case 'V': ty.add(IntegerDataType.dataType, 0x4, "value", "The original value of the protected value"); break;
                }
            }
            ty.setPackingEnabled(true);
            manager.addDataType(ty, DataTypeConflictHandler.REPLACE_HANDLER);
        }
    }

    DataType updateTypeDatabaseWithSTL(String templated, String template, Platform platform) throws Exception {
        final var manager = wrapped.getCurrentProgram().getDataTypeManager();
        final var category = new CategoryPath("/ClassDataTypes");

        var cat = this.createCategoryAll(category.extend("gd", templated));
        var structureName = this.fillStandardTypes || (templated.startsWith("vector") && template.startsWith("<bool>")) ? templated + template : cat.getName();
        var existing = manager.getDataType(cat, structureName);
        if (existing != null) {
            return existing;
        }

        var pointerSize = manager.getDataOrganization().getPointerSize();
        DataType sizeType = null;
        switch (platform) {
            case WINDOWS32:
                sizeType = UnsignedIntegerDataType.dataType;
                break;
            case WINDOWS64:
                sizeType = UnsignedLongLongDataType.dataType;
                break;
            case ANDROID32:
            case ANDROID64:
            case MAC_INTEL:
            case MAC_ARM:
            case IOS:
                sizeType = UnsignedLongDataType.dataType;
                break;
        }

        if (templated.startsWith("vector") && template.startsWith("<bool>")) {
            var point = new StructureDataType(cat, "vector<bool>", 0x0);
            var uintptr = new PointerDataType(platform == Platform.WINDOWS32 || platform == Platform.WINDOWS64
                ? UnsignedIntegerDataType.dataType
                : UnsignedLongDataType.dataType);

            point.add(uintptr, pointerSize, "start", "Pointer to the first element in the vector");
            if (platform == Platform.WINDOWS32 || platform == Platform.WINDOWS64) {
                point.add(uintptr, pointerSize, "last", "Pointer to one past the last element in the vector");
            }
            else if (platform == Platform.MAC_ARM || platform == Platform.MAC_INTEL || platform == Platform.IOS) {
                point.add(sizeType, pointerSize, "size", "Size of the vector");
            }
            else if (platform == Platform.ANDROID32 || platform == Platform.ANDROID64) {
                point.add(UnsignedIntegerDataType.dataType, 0x4, "startoff", "Offset from the start of the vector to the first element");
                point.add(uintptr, pointerSize, "last", "Pointer to one past the last element in the vector");
                point.add(UnsignedIntegerDataType.dataType, 0x4, "lastoff", "Offset from the start of the vector to one past the last element");
            }
            point.add(uintptr, pointerSize, "capacity", "Pointer to the end of the current vector allocation");
            if (platform == Platform.WINDOWS32 || platform == Platform.WINDOWS64) {
                point.add(sizeType, pointerSize, "size", "Size of the vector");
            }
            point.setPackingEnabled(true);
            return manager.addDataType(point, DataTypeConflictHandler.REPLACE_HANDLER);
        }
        else if (templated.startsWith("vector")) {
            var point = new StructureDataType(cat, structureName, 0x0);
            var dataType = this.fillStandardTypes
                ? new PointerDataType(this.addOrGetType(template.substring(1, template.length() - 1), platform))
                : PointerDataType.dataType;
            point.add(dataType, pointerSize, "start", "Pointer to the first element in the vector");
            point.add(dataType, pointerSize, "last", "Pointer to one past the last element in the vector");
            point.add(dataType, pointerSize, "capacity", "Pointer to the end of the current vector allocation");
            point.setPackingEnabled(true);
            return manager.addDataType(point, DataTypeConflictHandler.REPLACE_HANDLER);
        }
        else if (templated.startsWith("unordered_map") || templated.startsWith("unordered_set")) {
            var isSet = templated.startsWith("unordered_set");
            var className = isSet ? "unordered_set" : "unordered_map";
            StructureDataType node = null;
            if (this.fillStandardTypes) {
                node = new StructureDataType(cat, className + "_node" + template, 0x0);
                node.add(new PointerDataType(node), pointerSize, "next", "Pointer to the next node in the bucket");
                if (platform == Platform.WINDOWS32 || platform == Platform.WINDOWS64) {
                    node.add(new PointerDataType(node), pointerSize, "prev", "Pointer to the previous node in the bucket");
                }
                else if (platform == Platform.MAC_ARM || platform == Platform.MAC_INTEL || platform == Platform.IOS) {
                    node.add(sizeType, pointerSize, "hash", "Hash value of the node");
                }
                var dataType = isSet
                    ? this.addOrGetType(template.substring(1, template.length() - 1), platform)
                    : this.addOrGetPair("pair" + template, platform);
                node.add(dataType, dataType.getLength(), "value", "The value of the node");
                if (platform == Platform.ANDROID32 || platform == Platform.ANDROID64) {
                    node.add(sizeType, pointerSize, "hash", "Hash value of the node");
                }
                node.setPackingEnabled(true);
                manager.addDataType(node, DataTypeConflictHandler.REPLACE_HANDLER);
            }

            var nodePointer = node != null ? new PointerDataType(node) : PointerDataType.dataType;
            var point = new StructureDataType(cat, structureName, 0x0);
            if (platform == Platform.WINDOWS32 || platform == Platform.WINDOWS64) {
                point.add(FloatDataType.dataType, 0x4, "factor", "");
            }

            point.add(nodePointer, pointerSize, "listptr", "");
            point.add(sizeType, pointerSize, "listlen", "");

            if (platform == Platform.WINDOWS32 || platform == Platform.WINDOWS64) {
                var nodePointerPointer = node != null ? new PointerDataType(nodePointer) : PointerDataType.dataType;
                point.add(nodePointerPointer, pointerSize, "start", "");
                point.add(nodePointerPointer, pointerSize, "last", "");
                point.add(nodePointerPointer, pointerSize, "capacity", "");
                point.add(sizeType, pointerSize, "mask", "");
                point.add(sizeType, pointerSize, "max", "");
            }
            else if (platform == Platform.MAC_ARM || platform == Platform.MAC_INTEL || platform == Platform.IOS) {
                point.add(nodePointer, pointerSize, "start", "");
                point.add(sizeType, pointerSize, "size", "");
                point.add(FloatDataType.dataType, 0x4, "factor", "");
            }
            else if (platform == Platform.ANDROID32 || platform == Platform.ANDROID64) {
                point.add(nodePointer, pointerSize, "start", "");
                point.add(sizeType, pointerSize, "size", "");
                point.add(FloatDataType.dataType, 0x4, "factor", "");
                point.add(sizeType, pointerSize, "resize", "");
                point.add(nodePointer, pointerSize, "single", "");
            }
            point.setPackingEnabled(true);
            return manager.addDataType(point, DataTypeConflictHandler.REPLACE_HANDLER);
        }
        else if (templated.startsWith("map") || templated.startsWith("set")) {
            var isSet = templated.startsWith("set");
            var className = isSet ? "set" : "map";
            StructureDataType node = null;
            if (this.fillStandardTypes) {
                node = new StructureDataType(cat, className + "_node" + template, 0x0);
                if (platform == Platform.WINDOWS32 || platform == Platform.WINDOWS64) {
                    node.add(new PointerDataType(node), pointerSize, "left", "Pointer to the left child of the node");
                    node.add(new PointerDataType(node), pointerSize, "parent", "Pointer to the parent of the node");
                    node.add(new PointerDataType(node), pointerSize, "right", "Pointer to the right child of the node");
                    node.add(BooleanDataType.dataType, 0x1, "black", "Whether the node is black");
                }
                else if (platform == Platform.MAC_ARM || platform == Platform.MAC_INTEL || platform == Platform.IOS) {
                    node.add(new PointerDataType(node), pointerSize, "left", "Pointer to the left child of the node");
                    node.add(new PointerDataType(node), pointerSize, "right", "Pointer to the right child of the node");
                    node.add(new PointerDataType(node), pointerSize, "parent", "Pointer to the parent of the node");
                    node.add(BooleanDataType.dataType, 0x1, "black", "Whether the node is black");
                }
                else if (platform == Platform.ANDROID32 || platform == Platform.ANDROID64) {
                    node.add(BooleanDataType.dataType, 0x1, "black", "Whether the node is black");
                    node.add(new PointerDataType(node), pointerSize, "parent", "Pointer to the parent of the node");
                    node.add(new PointerDataType(node), pointerSize, "left", "Pointer to the left child of the node");
                    node.add(new PointerDataType(node), pointerSize, "right", "Pointer to the right child of the node");
                }
                if (platform == Platform.WINDOWS32 || platform == Platform.WINDOWS64) {
                    node.add(BooleanDataType.dataType, 0x1, "nil", "Whether the node is nil");
                }
                var dataType = isSet
                    ? this.addOrGetType(template.substring(1, template.length() - 1), platform)
                    : this.addOrGetPair("pair" + template, platform);
                node.add(dataType, dataType.getLength(), "value", "The value of the node");
                node.setPackingEnabled(true);
                manager.addDataType(node, DataTypeConflictHandler.REPLACE_HANDLER);
            }

            var nodePointer = node != null ? new PointerDataType(node) : PointerDataType.dataType;
            var point = new StructureDataType(cat, structureName, 0x0);
            if (platform == Platform.WINDOWS32 || platform == Platform.WINDOWS64) {
                point.add(nodePointer, pointerSize, "ptr", "The pointer to the main node of the " + className);
            }
            else if (platform == Platform.MAC_ARM || platform == Platform.MAC_INTEL || platform == Platform.IOS) {
                point.add(nodePointer, pointerSize, "start", "Pointer to the first element in the " + className);
                point.add(nodePointer, pointerSize, "last", "Pointer to one past the last element in the " + className);
            }
            else if (platform == Platform.ANDROID32 || platform == Platform.ANDROID64) {
                point.add(Undefined1DataType.dataType, 0x1, "comparator", "The comparator for the " + className);
                for (var i = 1; i < pointerSize; i++) {
                    point.add(Undefined1DataType.dataType, 0x1);
                }
                point.add(BooleanDataType.dataType, 0x1, "black", "Whether the root node is black");
                point.add(nodePointer, pointerSize, "root", "The root node of the " + className);
                point.add(nodePointer, pointerSize, "left", "The leftmost node of the " + className);
                point.add(nodePointer, pointerSize, "right", "The rightmost node of the " + className);
            }
            point.add(sizeType, pointerSize, "length", "The length of the " + className);
            point.setPackingEnabled(true);
            return manager.addDataType(point, DataTypeConflictHandler.REPLACE_HANDLER);
        }
        else {
            ScriptWrapper.rtassert(false, "{0} is an unhandled STL type!", templated);
            return null;
        }
    }

    public int sizeOfTypeOn(Platform platform, DataType type) throws Exception {
        String langID;
        String compID;
        switch (platform) {
            case WINDOWS32:   langID = "x86:LE:32:default"; compID = "windows"; break;
            case WINDOWS64:   langID = "x86:LE:64:default"; compID = "windows"; break;
            case MAC_INTEL: langID = "x86:LE:64:default"; compID = "gcc"; break;
            case MAC_ARM:   langID = "AARCH64:LE:64:AppleSilicon"; compID = "default"; break;
            case IOS:       langID = "AARCH64:LE:64:AppleSilicon"; compID = "default"; break;
            case ANDROID32: langID = "ARM:LE:32:v8";      compID = "default"; break;
            case ANDROID64: langID = "AARCH64:LE:64:v8A"; compID = "default"; break;
            default: throw new Exception("Unhandled Platform case in ScriptWrapper.sizeOfTypeOn");
        }
        var org = wrapped.getLanguage(new LanguageID(langID))
            .getCompilerSpecByID(new CompilerSpecID(compID))
            .getDataOrganization();
        
        if (type instanceof Pointer) {
            return org.getPointerSize();
        }
        if (type instanceof CharDataType) {
            return org.getCharSize();
        }
        if (type instanceof IntegerDataType) {
            return org.getIntegerSize();
        }
        if (type instanceof LongDataType) {
            return org.getLongSize();
        }
        if (type instanceof FloatDataType) {
            return org.getFloatSize();
        }
        if (type instanceof DoubleDataType) {
            return org.getDoubleSize();
        }
        return type.getLength();
    }
    
    static String formatType(DataType type) {
        try {
            return ScriptWrapper.formatType(((Pointer) type).getDataType()) + "*";
        }
        catch(ClassCastException ignore) {}
        
        try {
            return String.join("::", ((Composite) type).getCategoryPath().asList()).replace("ClassDataTypes::", "");
        }
        catch(ClassCastException ignore) {}

        return type.getDisplayName();
    }

    /**
     * Tries to cast a type to another, or returns null if the cast is not possible
     * @param <To> The type to cast to
     * @param from Value to cast
     * @return Value as casted to the other type, or null
     */
    @SuppressWarnings("unchecked")
    static <To> To castFrom(Object from) {
        try {
            return (To) from;
        }
        catch(ClassCastException ignore) {
            return null;
        }
    }
}
