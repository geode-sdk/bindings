// Sync your RE'd addresses to & from GeometryDash.bro 
// @author HJfod
// @category GeodeSDK

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;

import docking.widgets.dialogs.InputWithChoicesDialog;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.data.AbstractFloatDataType;
import ghidra.program.model.data.Category;
import ghidra.program.model.data.CategoryPath;
import ghidra.program.model.data.Composite;
import ghidra.program.model.data.DataTypeConflictHandler;
import ghidra.program.model.data.DataTypePath;
import ghidra.program.model.data.DefaultDataType;
import ghidra.program.model.data.DoubleDataType;
import ghidra.program.model.data.EnumDataType;
import ghidra.program.model.data.FloatDataType;
import ghidra.program.model.data.FunctionDefinition;
import ghidra.program.model.data.Pointer;
import ghidra.program.model.data.PointerDataType;
import ghidra.program.model.data.Structure;
import ghidra.program.model.data.StructureDataType;
import ghidra.program.model.data.TypeDef;
import ghidra.program.model.data.Undefined;
import ghidra.program.model.data.VoidDataType;
import ghidra.program.model.listing.Function.FunctionUpdateType;
import ghidra.program.model.listing.Parameter;
import ghidra.program.model.listing.ParameterImpl;
import ghidra.program.model.listing.Variable;
import ghidra.program.model.listing.VariableStorage;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.model.symbol.SymbolType;
import ghidra.util.Swing;
import ghidra.util.exception.CancelledException;

public class SyncBromaScript extends GhidraScript {
    class Args extends InputParameters {
        Platform platform;
        List<Path> bromaFiles;
        String gameVersion;
        boolean importFromBroma;
        boolean exportToBroma;
        boolean setOptcall;
        boolean syncMembers;
        boolean syncEnums;
        boolean fillStandardTypes;

        public Args(ScriptWrapper wrapper, Path bindingsDir) throws Exception {
            this.run(wrapper, bindingsDir);
        }

        @Override
        protected String title() {
            return "Sync Bindings to/from Broma";
        }

        @Override
        protected String description() {
            return 
                "Import addresses & signatures from Broma, and add new ones " + 
                "from the current project to it.\n\n" + 
                "Note that it is recommended to save your Ghidra project before " + 
                "running the script, so if it messes something up you can safely " + 
                "undo the mistake.\n\n" + 
                "You will need to manually git pull / push your local copy of the " + 
                "bindings repository!\n\n" + 
                "See the README for detailed explanations of all the options.";
        }

        @Override
        protected void doAsk(Object... args) throws Exception {
            var bindingsDir = (Path)args[0];

            // Get all available bindings versions from the bindings directory
            List<String> versions = new ArrayList<String>();
            for (var file : Files.list(bindingsDir).toArray(Path[]::new)) {
                if (Files.isDirectory(file)) {
                    var filename = file.getFileName().toString();
                    if (!filename.equals("include")) {
                        versions.add(filename);
                    }
                }
            }
            // Put latest version at the top
            Collections.reverse(versions);

            var bromaFiles = List.of("Cocos2d.bro", "FMOD.bro", "GeometryDash.bro");
            final var platforms = Arrays.asList(Platform.values()).stream().map(p -> p.getLongName()).toList();

            var platform = wrapper.autoDetectPlatform().orElse(null).getLongName();
            var isWindows = platform != null && platform.equals(Platform.WINDOWS32.getLongName());

            this.choice("Target platform", platforms, platform, p -> this.platform = Platform.fromLongName(p));
            this.choice("Game version", versions, v -> this.gameVersion = v);
            this.bool("Import from Broma", b -> this.importFromBroma = b);
            this.bool("Export to Broma", false, b -> this.exportToBroma = b);
            this.bool("Set optcall & membercall", isWindows, b -> this.setOptcall = b);
            this.bool("Sync members", b -> this.syncMembers = b);
            this.bool("Sync enums", b -> this.syncEnums = b);
            this.bool("Fill standard types", b -> this.fillStandardTypes = b);

            this.waitForAnswers();

            if (this.platform != Platform.IOS) {
                bromaFiles = List.of("Cocos2d.bro", "Extras.bro", "GeometryDash.bro");
            }
            else {
                bromaFiles = List.of("Cocos2d.bro", "Extras.bro", "FMOD.bro", "GeometryDash.bro");
            }

            this.bromaFiles = bromaFiles.stream()
                .map(f -> Paths.get(bindingsDir.toString(), this.gameVersion, f))
                .filter(Files::exists)
                .toList();
            
            if (!this.importFromBroma && !this.exportToBroma && !this.syncMembers && !this.syncEnums) {
                throw new Error("Either importing from Broma, exporting to Broma, syncing members, or syncing enums has to be checked!");
            }
        }
    }

    ScriptWrapper wrapper;
    Args args;
    List<Broma> bromas = new ArrayList<Broma>();
    
    public void run() throws Exception {
        this.wrapper = new ScriptWrapper(this);

        this.args = new Args(wrapper, wrapper.bindingsDir);
        for (var bro : this.args.bromaFiles) {
            this.bromas.add(new Broma(bro, args.platform, this.args.importFromBroma));
        }

        wrapper.fillStandardTypes = this.args.fillStandardTypes;

        // Read classes
        wrapper.classes.addAll(this.bromas.stream()
            .map(b -> b.classes.stream().map(c -> c.name.value).toList())
            .flatMap(List::stream)
            .toList());

        wrapper.printfmt("Found {0} classes in Broma", wrapper.classes.size());

        if (this.args.importFromBroma) {
            // Read functions
            wrapper.functions.addAll(this.bromas.stream()
                .map(b -> b.functions.stream().map(f -> f.getName()).toList())
                .flatMap(List::stream)
                .toList());

            wrapper.printfmt("Found {0} functions in Broma", wrapper.functions.size());
        }

        // Read enums
        var enumPath = Paths.get(wrapper.bindingsDir.toString(), "include", "Geode", "Enums.hpp");
        if (Files.exists(enumPath)) {
            for (var line : Files.readAllLines(enumPath)) {
                if (line.startsWith("enum class")) {
                    wrapper.enums.add(line.split(" ")[2]);
                }
            }
        }

        wrapper.printfmt("Found {0} enums in Broma", wrapper.enums.size());

        wrapper.updateTypeDatabase(args.platform);

        // Do the imports and exports and members
        if (this.args.importFromBroma) {
            this.handleImport();
        }
        if (this.args.syncMembers) {
            this.handleImportMembers();
        }
        if (this.args.syncEnums) {
            this.handleImportEnums();
        }
        if (this.args.exportToBroma) {
            this.handleExport();
            if (this.args.syncMembers) {
                this.handleExportMembers();
            }

            // Save results
            wrapper.printfmt("Saving Broma files...");
            for (var bro : this.bromas) {
                bro.save();
            }
        }
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

    boolean overwriteAll = false;
    boolean mergeAll = false;

    private SignatureImport importSignatureFromBroma(Address addr, Broma.Function fun, boolean skipTodo) throws Exception {
        final var name = fun.getName();
        final var className = fun.parent != null ? fun.parent.name.value : null;
        final var fullName = className != null ? className + "::" + name : name;
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
            if (className != null) {
                data.setParentNamespace(wrapper.addOrGetNamespace(className));
            }
        }

        // Check if function already has an user-provided name - in this case, it might be merged
        if (
            data.getSymbol().getSource() == SourceType.USER_DEFINED &&
            !data.getName(true).equals(fullName) && 
            !(data.getComment() != null && data.getComment().contains("NOTE: Merged with " + fullName)) &&
            !overwriteAll
        ) {
            int choice = mergeAll ? 0 : askContinueConflict(
                "Function has a different name",
                List.of("Add to merged functions list", "Overwrite Ghidra name", "Overwrite all", "Merge all"),
                "The function {0} at {1} from Broma already has the name " + 
                "{2} in Ghidra - is this function merged with that?",
                fullName, Long.toHexString(addr.getOffset()), data.getName(true)
            );
            if (choice == 3) {
                choice = 0;
                mergeAll = true;
            }
            if (choice == 0) {
                data.setComment(
                    (data.getComment() != null ? (data.getComment() + "\n") : "") + 
                    "NOTE: Merged with " + fullName
                );
                wrapper.printfmt("Added {0} to merged function list for {1}", fullName, data.getName(true));
                return SignatureImport.ADDED_MERGED;
            }
            overwriteAll = choice == 2;
        }

        if (data.getSymbol().getSource() != SourceType.USER_DEFINED) {
            status = status.promoted(SignatureImport.ADDED);
        }
        if (currentProgram.getSymbolTable().getSymbol(name, addr, data.getParentNamespace()) == null) {
            data.getSymbol().setName(name, SourceType.USER_DEFINED);
        }
        if (className != null) {
            try {
                data.setParentNamespace(wrapper.addOrGetNamespace(className));
            }
            catch (Exception e) {}
        }

        // Get the calling convention
        final var conv = fun.getCallingConvention(args.platform);
        final var bromaSig = wrapper.getBromaSignature(fun, args.platform, false);

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
                // Keep existing Ghidra name for args without names in Broma (Making sure to not include any duplicates)
                else if (
                    bromaParam.getName() == null && param.getName() != null &&
                    !bromaSig.parameters.subList(0, i).stream().anyMatch(p -> p.getName() != null && p.getName().equals(param.getName()))
                ) {
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
            if (!askContinueConflict(
                "Signature doesn't match",
                "Ghidra has a function signature {0} that doesn't match Broma's signature {1} - do you want to override it?",
                new Signature(data.getReturn(), Arrays.asList(data.getParameters())),
                bromaSig
            )) {
                return status;
            }

            status = status.promoted(SignatureImport.UPDATED);
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
                wrapper.printfmt(
                    "Warning: not handling optcall/membercall for {0} - " + 
                    "parameter order / registers will be wrong!",
                    fullName
                );
            }
            else {
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
                                wrapper.printfmt(
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

        // Check for already-existing parameter names
        for (var existingParam : data.getParameters()) {
            for (var bromaParam : bromaSig.parameters) {
                if (!existingParam.isAutoParameter() && existingParam.getName() != null && existingParam.getName().equals(bromaParam.getName())) {
                    existingParam.setName(null, SourceType.USER_DEFINED);
                }
            }
        }

        var conventionName = conv.getGhidraName();
        if (bromaSig.returnsStruct && bromaSig.memberFunction && (args.platform == Platform.ANDROID32 || args.platform == Platform.MAC_INTEL)) {
            conventionName = args.platform == Platform.MAC_INTEL ? "__stdcall" : "__cdecl";
        }
        else if (bromaSig.memberFunction && wrapper.offsets.get(addr.getOffset()) != null) {
            conventionName = "__fastcall";
        }

        // Apply new signature
        Variable returnType = bromaSig.returnType.orElse(null);
        if (skipTodo && fun.returnType.isPresent() && fun.returnType.get().name.value.contains("TodoReturn")) returnType = data.getReturn();
        try {
            data.updateFunction(
                conventionName,
                returnType,
                updateType,
                true,
                SourceType.USER_DEFINED,
                bromaSig.parameters.toArray(Variable[]::new)
            );
        } catch (Exception e) {
            throw new Error("Died on: " + fullName + " with " + e.getMessage());
        }

        // Fix the this parameter for member functions
        if (bromaSig.memberFunction && wrapper.offsets.get(addr.getOffset()) == null) {
            var firstParam = data.getParameter(0);
            var firstType = firstParam.getDataType();
            if (firstParam.getName().equals("this") && firstType instanceof Pointer && ((Pointer)firstType).getDataType() instanceof VoidDataType) {
                var newConvention = "__cdecl";
                if (args.platform == Platform.WINDOWS32 || args.platform == Platform.WINDOWS64) {
                    newConvention = "__fastcall";
                }
                else if (args.platform == Platform.MAC_INTEL) {
                    newConvention = "__stdcall";
                }
                try {
                    data.updateFunction(
                        newConvention,
                        returnType,
                        updateType,
                        true,
                        SourceType.USER_DEFINED,
                        bromaSig.parameters.toArray(Variable[]::new)
                    );
                } catch (Exception e) {
                    throw new Error("Died on: " + fullName + " with " + e.getMessage());
                }
            }
        }

        // Set struct return storage for ARM64
        if (bromaSig.returnsStruct && (args.platform == Platform.ANDROID64 || args.platform == Platform.MAC_ARM || args.platform == Platform.IOS)) {
            var newParams = new ArrayList<Parameter>(List.of(data.getParameters()));
            var foundReturn = newParams.stream().filter(p -> p.getName() != null && p.getName().equals("__return")).findFirst();
            if (foundReturn.isPresent()) {
                foundReturn.get().setName(null, SourceType.USER_DEFINED);
            }
            newParams.add(0, new ParameterImpl(
                "__return",
                data.getReturnType(),
                new VariableStorage(currentProgram, currentProgram.getRegister("x8")),
                currentProgram,
                SourceType.USER_DEFINED
            ));
            try {
                data.updateFunction(
                    "__cdecl",
                    returnType,
                    FunctionUpdateType.CUSTOM_STORAGE,
                    true,
                    SourceType.USER_DEFINED,
                    newParams.toArray(Variable[]::new)
                );
            } catch (Exception e) {
                throw new Error("Died on: " + fullName + " with " + e.getMessage());
            }
            data.setReturn(data.getReturnType(), new VariableStorage(currentProgram, currentProgram.getRegister("x0")), SourceType.USER_DEFINED);
        }

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
        wrapper.printfmt("Loading addresses from Bindings...");
        var importedAddCount = 0;
        var importedUpdateCount = 0;
        var symbolTable = currentProgram.getSymbolTable();
        var pointerSize = currentProgram.getDataTypeManager().getDataOrganization().getPointerSize();
        for (var bro : bromas) {
            wrapper.printfmt("Reading {0}...", bro.path.getFileName());
            for (var cls : bro.classes) {
                // CCLightning is in the Geometry Dash binary, but it is only in Cocos2d.bro
                if (
                    (args.platform == Platform.WINDOWS32 || args.platform == Platform.WINDOWS64) &&
                    cls.name.value.startsWith("cocos2d::") && !cls.name.value.equals("cocos2d::CCLightning")
                ) {
                    continue;
                }

                // Get class adjustments
                if (args.platform == Platform.WINDOWS32 || args.platform == Platform.WINDOWS64) {
                    for (var metaPtr : symbolTable.getSymbols("vftable_meta_ptr", wrapper.addOrGetNamespace(cls.name.value))) {
                        var objectLocator = args.platform == Platform.WINDOWS64 ? getLong(metaPtr.getAddress()) : getInt(metaPtr.getAddress());
                        var offset = getInt(toAddr(objectLocator + 4));
                        var vftableData = currentProgram.getListing().getDataAt(metaPtr.getAddress().add(8));
                        var vftableType = vftableData != null ? vftableData.getDataType() : null;
                        if (vftableType != null && offset > 0) {
                            for (var i = 0; i < vftableType.getLength(); i += pointerSize) {
                                var address = metaPtr.getAddress().add(i + 8);
                                wrapper.offsets.put(args.platform == Platform.WINDOWS64 ? getLong(address) : getInt(address), offset);
                            }
                        }
                    }
                }

                for (var fun : cls.functions) {
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
                            wrapper.printfmt("Added {0} at {1}", fullName, Long.toHexString(addr.getOffset()));
                        } break;
                        case UPDATED: {
                            importedUpdateCount += 1;
                            wrapper.printfmt("Updated {0} at {1}", fullName, Long.toHexString(addr.getOffset()));
                        } break;
                        default: break;
                    }
                }

                wrapper.offsets.clear();
            }

            for (var fun : bro.functions) {
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
                        wrapper.printfmt("Added {0} at {1}", fun.getName(), Long.toHexString(addr.getOffset()));
                    } break;
                    case UPDATED: {
                        importedUpdateCount += 1;
                        wrapper.printfmt("Updated {0} at {1}", fun.getName(), Long.toHexString(addr.getOffset()));
                    } break;
                    default: break;
                }
            }
        }
        wrapper.printfmt("Added {0} functions & updated {1} functions from Broma", importedAddCount, importedUpdateCount);
    }

    private void handleExport() throws Exception {
        wrapper.printfmt("Adding new addresses to Bindings...");

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
            var bromaClass = this.getTargetClassInBroma(cls.getName(true));
            if (bromaClass == null) {
                continue;
            }
            Broma broma = bromaClass.broma;
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

                /*if(fullName.contains("~")) {
                    continue;
                }*/
                
                var bromaFuns = bromaClass.getFunctions(name);
                if (bromaFuns.isEmpty()) {
                    wrapper.printfmt("Warning: function {0} not found", fullName);
                    continue;
                }
                Broma.Function bromaFun = null;
                if (bromaFuns.size() > 1) {
                    // Try to auto-detect overload
                    // For this to be possible, every arg must match type exactly
                    tryMatchFun:
                    for (var tryMatch : bromaFuns) {
                        var sig = wrapper.getBromaSignature(tryMatch, args.platform, false);
                        var paramCount = fun.getParameterCount();
                        if (paramCount != sig.parameters.size()) {
                            continue tryMatchFun;
                        }
                        for (var i = 0; i < paramCount; i += 1) {
                            var param = fun.getParameter(i);
                            var ghidraDataType = param.getDataType();
                            var ghidraPointerDataType = ghidraDataType;
                            if (ghidraDataType instanceof Pointer) {
                                ghidraPointerDataType = ((Pointer)ghidraDataType).getDataType();
                            }
                            if (ghidraDataType instanceof TypeDef) {
                                ghidraDataType = ((TypeDef)ghidraDataType).getBaseDataType();
                            }
                            var bromaDataType = sig.parameters.get(i).getDataType();
                            if (
                                !ghidraDataType.isEquivalent(bromaDataType) &&
                                !ghidraPointerDataType.isEquivalent(bromaDataType)
                            ) {
                                wrapper.printfmt(
                                    "types {0} and {1} are not equal ({2} != {3})",
                                    ghidraDataType.getDisplayName(),
                                    bromaDataType.getDisplayName(),
                                    ghidraDataType.getClass().getName(),
                                    bromaDataType.getClass().getName()
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
                importSignatureFromBroma(child.getAddress(), bromaFun, true);

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
                        if (!askContinueConflict(
                            "Address mismatch",
                            "Function {0} has the address 0x{1} in the Broma but the address 0x{2} in Ghidra - do you want to override the Broma's address?",
                            fullName, Long.toHexString(bromaOffset), Long.toHexString(ghidraOffset)
                        )) {
                            continue;
                        }
                        exportedAddrCount += 1;
                        broma.addPatch(bromaFun.platformOffset.get().range, String.format("%x", ghidraOffset));
                    }
                }
                else if (bromaFun.platformOffsetAddPoint.isPresent()) {
                    broma.addPatch(
                        bromaFun.platformOffsetAddPoint.get(),
                        String.format(", %s 0x%x", args.platform.getShortName(), ghidraOffset)
                    );
                    exportedAddrCount += 1;
                }
                else if (bromaFun.platformOffsetInsertPoint.isPresent()) {
                    broma.addPatch(
                        bromaFun.platformOffsetInsertPoint.get().range,
                        String.format(" = %s 0x%x", args.platform.getShortName(), ghidraOffset)
                    );
                    exportedAddrCount += 1;
                }
                else {
                    wrapper.printfmt("Warning: function {0} is inlined in Broma - refusing to add address", fullName);
                }
            }
        }
        
        wrapper.printfmt("Exported {0} addresses & {1} return types to Broma", exportedAddrCount, exportedTypeCount);
    }

    HashMap<String, List<String>> basesMap = new HashMap<>();
    HashMap<String, Broma.Class> classCache = new HashMap<>();
    HashSet<String> visitedClasses = new HashSet<>();
    HashMap<String, Integer> classPads = new HashMap<>();
    int globalOverwriteStatus = 0;

    private void importClass(Broma.Class cls) throws Exception {
        if (cls == null) return;

        final var fullName = cls.name.value;

        if (visitedClasses.contains(fullName)) return;

        visitedClasses.add(fullName);

        var basesString = cls.bases.isPresent() ? cls.bases.get().value.substring(1) : "";
        if (fullName.equals("UILayer")) basesString += ", cocos2d::CCKeyboardDelegate";
        var basesList = Arrays.stream(basesString.split(",")).map(String::trim).toList();
        var firstBase = basesList.size() > 0 ? basesList.get(0) : "";
        var needsClear = (!fullName.startsWith("cocos2d::") || fullName.equals("cocos2d::CCLightning")) &&
            basesList.size() == 1 && firstBase.startsWith("cocos2d::");
        basesMap.put(fullName, basesList);

        if (!firstBase.isEmpty() && !visitedClasses.contains(firstBase)) {
            importClass(classCache.get(firstBase));
        }

        var isBaseless = cls.bases.isEmpty() && !cls.functions.stream().anyMatch(f -> {
            return f.dispatch.isPresent() && f.dispatch.get().value.equals("virtual");
        });

        final var manager = currentProgram.getDataTypeManager();
        final var pointerSize = manager.getDataOrganization().getPointerSize();

        var category = new CategoryPath("/ClassDataTypes");
        String name = null;
        for (var part : fullName.split("::")) {
            category = category.extend(part);
            name = part;
        }
        // Make sure the category exists
        wrapper.createCategoryAll(category);

        if (!cls.members.isEmpty()) {
            final var classDataTypePath = new DataTypePath(category, name + (isBaseless ? "" : "_data"));
            var classMembers = manager.getDataType(classDataTypePath);

            if (classMembers == null || !(classMembers instanceof Structure)) {
                // Create data members struct
                classMembers = manager.getCategory(category).addDataType(
                    new StructureDataType(name + (isBaseless ? "" : "_data"), 0),
                    classMembers == null ? DataTypeConflictHandler.DEFAULT_HANDLER : DataTypeConflictHandler.REPLACE_HANDLER
                );
            }
            wrapper.printfmt("Importing {0} members for {1}", cls.members.size(), fullName);

            var classDataMembers = (Structure)classMembers;

            // Disable packing
            classDataMembers.setPackingEnabled(false);

            if (needsClear) {
                classDataMembers.setLength(0);
            }

            // Delete any padding at the end of the struct 
            // (so if the struct has shrunk in broma, we refit it properly)
            while (!classDataMembers.isZeroLength()) {
                var comp = classDataMembers.getComponent(classDataMembers.getNumComponents() - 1);
                if (comp.getDataType() instanceof DefaultDataType) {
                    classDataMembers.delete(classDataMembers.getNumComponents() - 1);
                }
                else {
                    break;
                }
            }

            var initialOffset = 0;
            if (args.platform != Platform.WINDOWS32 && args.platform != Platform.WINDOWS64 && !firstBase.isEmpty() && classCache.containsKey(firstBase)) {
                var firstBaseCategory = new CategoryPath("/ClassDataTypes");
                String firstBaseData = null;
                for (var part : firstBase.split("::")) {
                    firstBaseCategory = firstBaseCategory.extend(part);
                    firstBaseData = part;
                }
                var firstBaseType = manager.getDataType(new DataTypePath(firstBaseCategory, firstBaseData + "_data"));
                if (firstBaseType != null) {
                    initialOffset = (firstBaseType.getLength() - classPads.getOrDefault(firstBase, 0)) % pointerSize;
                    classPads.put(fullName, initialOffset);
                    if (classDataMembers.getNumComponents() > 0) {
                        var componentOffset = classDataMembers.getComponent(0).getOffset();
                        if (componentOffset < initialOffset) {
                            var missingArea = initialOffset - componentOffset;
                            for (int i = 0; i < missingArea; i++) {
                                classDataMembers.insertAtOffset(componentOffset, DefaultDataType.dataType, 1);
                            }
                        }
                    }
                }
            }
            var offset = initialOffset;
            var overwriteStatus = globalOverwriteStatus;
            for (var mem : cls.members) {
                int length;
                var memName = mem.name.isPresent() ? mem.name.get().value : null;
                if (memName != null) {
                    // Placeholder member for a doubly inherited virtual table
                    if (fullName.equals("UILayer") && memName.equals("m_stupidDelegate")) {
                        continue;
                    }

                    final var memType = wrapper.addOrGetType(mem.type.get(), args.platform);
                    boolean isPointer = memType instanceof Pointer || memType instanceof FunctionDefinition;
                    if (memType instanceof Structure) {
                        var typeName = memType.getName();
                        if (classCache.containsKey(typeName) && !visitedClasses.contains(typeName)) {
                            importClass(classCache.get(typeName));
                        }
                    }
                    length = isPointer ? pointerSize : memType.getLength();
                    int alignment = isPointer ? length : memType.getAlignment();
                    if (memType instanceof FunctionDefinition && args.platform != Platform.WINDOWS32 && args.platform != Platform.WINDOWS64) {
                        length *= 2;
                    }
                    offset = (offset + alignment - 1) / alignment * alignment;
                }
                else {
                    if (mem.paddings.containsKey(args.platform)) {
                        length = mem.paddings.get(args.platform);
                    }
                    else {
                        length = 0;
                    }
                }

                int classLength = classDataMembers.isZeroLength() ? 0 : classDataMembers.getLength();
                if (offset + length > classLength) {
                    classDataMembers.growStructure(offset + length - classLength);
                }

                if (memName != null) {
                    final var memType = wrapper.addOrGetType(mem.type.get(), args.platform);
                    // Make sure alignment is correct
                    var existing = classDataMembers.getComponentAt(offset);
                    if (existing != null && existing.getDataType() instanceof Undefined) {
                        if (
                            (!existing.getDataType().isEquivalent(memType) ||
                            (existing.getFieldName() != null && !existing.getFieldName().equals(memName))) &&
                            overwriteStatus <= 0
                        ) {
                            if (overwriteStatus < 0) continue;
                            var result = askContinueConflict(
                                "Override member",
                                List.of("Yes", "Yes to Class", "Yes to All", "No", "No to Class", "No to All"),
                                "Member #{0} in {1} does not match between Broma and Ghidra:<br><br>" + 
                                "Broma: {2} {3}<br>" + 
                                "Ghidra: {4} {5}<br><br>" + 
                                "Should the existing member in Ghidra be overwritten with Broma's?",
                                existing.getOrdinal(), fullName,
                                ScriptWrapper.formatType(memType), memName,
                                ScriptWrapper.formatType(existing.getDataType()), existing.getFieldName()
                            );
                            switch (result) {
                                case 1:
                                    overwriteStatus = 1;
                                    break;
                                case 2:
                                    overwriteStatus = 1;
                                    globalOverwriteStatus = 1;
                                    break;
                                case 3:
                                    continue;
                                case 4:
                                    overwriteStatus = -1;
                                    continue;
                                case 5:
                                    overwriteStatus = -1;
                                    globalOverwriteStatus = -1;
                                    continue;
                            }
                        }
                    }
                    for (int i = length; i > 0; i -= 1) {
                        classDataMembers.clearAtOffset(offset + i - 1);
                    }
                    classDataMembers.replaceAtOffset(
                        offset,
                        memType instanceof FunctionDefinition ? new PointerDataType(memType) : memType, length,
                        memName,
                        mem.getComment().orElse(null)
                    );
                    offset += length;
                }
                else {
                    if (mem.paddings.containsKey(args.platform)) {
                        // Don't clear anything in case there's user-defined members there
                        // since we don't want to override anyone's RE progress
                        offset += mem.paddings.get(args.platform);
                    }
                    else {
                        wrapper.printfmt(
                            "Warning: Reached undefined padding at offset {0} " + 
                            "on class {1} - stopping importing members",
                            offset, fullName
                        );
                    }
                }
            }

            for (int i = initialOffset - 1; i >= 0; i--) {
                classDataMembers.deleteAtOffset(i);
            }

            if (isBaseless) {
                classDataMembers.setPackingEnabled(true);
                classDataMembers.repack();
            }
            else if (args.platform == Platform.WINDOWS32 || args.platform == Platform.WINDOWS64) {
                if (!classDataMembers.isZeroLength()) {
                    var length = classDataMembers.getLength();
                    if (length % pointerSize != 0) {
                        classDataMembers.growStructure(pointerSize - (length % pointerSize));
                    }
                }
            }
            else {
                while (!classDataMembers.isZeroLength()) {
                    var comp = classDataMembers.getComponent(classDataMembers.getNumComponents() - 1);
                    if (comp.getDataType() instanceof DefaultDataType) {
                        classDataMembers.delete(classDataMembers.getNumComponents() - 1);
                    }
                    else {
                        break;
                    }
                }
            }
        }

        if (!cls.bases.isPresent()) return;

        var baseList = new ArrayList<List<String>>();
        var currentClass = fullName;
        baseList.add(List.of(currentClass));
        var currentList = basesMap.get(currentClass);
        baseList.add(currentList);
        while (
            currentList != null && !currentList.isEmpty() &&
            !currentList.get(0).equals("cocos2d::CCCopying") &&
            !currentList.get(0).equals("cocos2d::CCApplicationProtocol")
        ) {
            currentClass = currentList.get(0);
            currentList = basesMap.get(currentClass);
            baseList.add(currentList);
        }

        var classType = manager.getDataType(new DataTypePath(category, name));
        if (classType == null || !(classType instanceof Structure)) return;
        var classStruct = (Structure)classType;
        classStruct.setPackingEnabled(false);

        var noTables = true;
        var allStructures = manager.getAllStructures();
        var targetPath = new DataTypePath(category, name + "_vftable").getPath();
        while (allStructures.hasNext()) {
            var type = allStructures.next();
            if (type.getDataTypePath().getPath().startsWith(targetPath)) {
                noTables = false;
                break;
            }
        }

        for (var component : classStruct.getComponents()) {
            var fieldName = component.getFieldName();
            if (fieldName != null && baseList.stream().anyMatch(b -> {
                if (b == null || b.isEmpty()) return false;
                var baseFieldName = b.get(0);
                if (baseFieldName == null) return false;
                var baseFieldSplit = baseFieldName.split("::");
                return baseFieldSplit.length > 0 && fieldName.equals(baseFieldSplit[baseFieldSplit.length - 1] + "_data");
            })) {
                classStruct.clearAtOffset(component.getOffset());
            }
        }

        var index = 0;
        for (var i = baseList.size() - 1; i >= 0; i--) {
            var bases = baseList.get(i);
            if (bases != null && !bases.isEmpty()) {
                var baseName = bases.get(0);
                var j = baseName.equals("cocos2d::CCCopying") || baseName.equals("cocos2d::CCApplicationProtocol") ? 0 : 1;
                if (j == 1) {
                    var subcategory = new CategoryPath("/ClassDataTypes");
                    String subname = null;
                    for (var part : baseName.split("::")) {
                        subcategory = subcategory.extend(part);
                        subname = part;
                    }

                    var baseClass = manager.getDataType(new DataTypePath(subcategory, subname + "_data"));
                    if (baseClass != null && baseClass instanceof Structure baseStruct) {
                        var currentComponent = classStruct.getComponentAt(index);
                        if (currentComponent != null && currentComponent.getDataType().isEquivalent(baseStruct)) {
                            index += baseStruct.getLength();
                            continue;
                        }

                        var baseLength = baseStruct.getLength();
                        var component = classStruct.getDefinedComponentAtOrAfterOffset(index);
                        if (component != null && component.getOffset() < index + baseLength) {
                            var missingArea = index + baseLength - component.getOffset();
                            for (int k = 0; k < missingArea; k++) {
                                classStruct.insertAtOffset(index, DefaultDataType.dataType, 1);
                            }
                        }

                        var classLength = classStruct.isZeroLength() ? 0 : classStruct.getLength();
                        if (index + baseLength > classLength) {
                            classStruct.growStructure(index + baseLength - classLength);
                        }
                        classStruct.replaceAtOffset(index, baseStruct, baseLength, baseStruct.getName(), null);
                        index += baseLength;
                    }
                }

                for (; j < bases.size(); j++) {
                    if (index % pointerSize != 0) {
                        index += pointerSize - (index % pointerSize);
                    }
                    if (noTables) {
                        var dataType = wrapper.addOrGetType(bases.get(j) + "*", args.platform);
                        if (dataType instanceof Pointer pointer) {
                            var currentComponent = classStruct.getComponentAt(index);
                            if (currentComponent != null && currentComponent.getDataType().isEquivalent(pointer)) {
                                index += pointerSize;
                                continue;
                            }

                            var component = classStruct.getDefinedComponentAtOrAfterOffset(index);
                            if (component != null && component.getOffset() < index + pointerSize) {
                                var missingArea = index + pointerSize - component.getOffset();
                                for (int k = 0; k < missingArea; k++) {
                                    classStruct.insertAtOffset(index, DefaultDataType.dataType, 1);
                                }
                            }

                            var classLength = classStruct.isZeroLength() ? 0 : classStruct.getLength();
                            if (index + pointerSize > classLength) {
                                classStruct.growStructure(index + pointerSize - classLength);
                            }

                            classStruct.replaceAtOffset(index, pointer, pointerSize, pointer.getDataType().getName(), null);
                        }
                    }
                    index += pointerSize;
                }
            }
        }

        classStruct.setLength(index + (pointerSize - (index % pointerSize)) % pointerSize);
    }

    private void handleImportMembers() throws Exception {
        wrapper.printfmt("Importing members...");

        classCache.putAll(bromas.stream()
            .flatMap(bro -> bro.classes.stream())
            .collect(Collectors.toMap(cls -> cls.name.value, cls -> cls)));

        for (var bro : this.bromas) {
            wrapper.printfmt("Importing from {0}...", bro.path.getFileName());
            for (var cls : bro.classes) {
                importClass(cls);
            }
        }
    }

    private void handleImportEnums() throws Exception {
        final var manager = currentProgram.getDataTypeManager();
        final var enumPath = Paths.get(wrapper.bindingsDir.toString(), "include", "Geode", "Enums.hpp");
        if (!Files.exists(enumPath)) {
            return;
        }

        wrapper.printfmt("Importing enums...");
        var lines = Files.readAllLines(enumPath);
        for (int i = 0; i < lines.size(); i += 1) {
            var line = lines.get(i);
            if (!line.startsWith("enum class")) {
                continue;
            }

            var name = line.split(" ")[2];
            var enumCategory = manager.getCategory(wrapper.createCategoryAll(new CategoryPath("/ClassDataTypes/" + name)));
            var enumDataType = new EnumDataType(name, 4);

            if (line.contains("};")) {
                wrapper.printfmt("Imported 0 enum values for {0}", name);
                enumCategory.addDataType(enumDataType, DataTypeConflictHandler.REPLACE_HANDLER);
                continue;
            }

            var values = new HashMap<String, Integer>();
            var total = -1;
            for (i += 1; i < lines.size(); i += 1) {
                var valueLine = lines.get(i);
                var trimmedLine = valueLine.trim();

                if (trimmedLine.isEmpty() || trimmedLine.startsWith("{")) {
                    continue;
                }

                if (trimmedLine.startsWith("};")) {
                    break;
                }

                if (trimmedLine.contains("[[deprecated")) {
                    continue;
                }

                var parts = valueLine.split("=");
                var key = parts[0].trim();
                if (key.startsWith("//")) {
                    continue;
                }

                var value = 0;
                if (parts.length > 1) {
                    var valueString = parts[1].split(",")[0].trim();
                    value = valueString.startsWith("0x") ? Integer.parseInt(valueString.substring(2), 16) : Integer.parseInt(valueString);
                    total = value;
                } else {
                    key = key.split(",")[0].trim();
                    value = ++total;
                }

                values.put(key, value);
            }

            for (var value : values.keySet()) {
                enumDataType.add(value, values.get(value));
            }

            enumCategory.addDataType(enumDataType, DataTypeConflictHandler.REPLACE_HANDLER);
            wrapper.printfmt("Imported {0} enum values for {1}", values.size(), name);
        }
    }

    private void handleExportMembers() throws Exception {
        final var enabled = false;
        if (!enabled) {
            wrapper.printfmt("Exporting members is currently not supported due to implementation difficulties! Sorry :(  -HJfod");
            return;
        }

        final var manager = currentProgram.getDataTypeManager();
        wrapper.printfmt("Exporting members...");
        for (var cat : manager.getCategory(new CategoryPath("/ClassDataTypes")).getCategories()) {
            handleExportMembers(cat);
        }
    }

    private void handleExportMembers(Category category) throws Exception {
        // Handle subcategories
        for (var cat : category.getCategories()) {
            handleExportMembers(cat);
        }
        final var fullName = category.getCategoryPathName().replace("/ClassDataTypes/", "").replace("/", "::");
        // Check for a {ClassName}_data type
        var type = ScriptWrapper.<Structure>castFrom(category.getDataType(category.getName() + "_data"));
        if (type == null) {
            return;
        }
        // Check for matching Broma class
        var bromaClass = this.getTargetClassInBroma(fullName);
        if (bromaClass == null) {
            return;
        }
        // Build up the whole members replace string
        final StringBuilder result = new StringBuilder();

        if (bromaClass.members.isEmpty()) {
            // Add padding since there's none from existing members already
            if (!result.isEmpty()) {
                result.append("\n\t");
            }
        }

        for (var i = 0; i < type.getNumComponents(); i += 1) {
            var mem = type.getComponent(i);

            if (i > 0) {
                result.append("\n\t");
            }

            // Handle exporting paddings
            if (mem.getDataType() instanceof Undefined) {
                var pad = new PaddingInfo(mem.getComment(), args.platform);

                // If this padding is different between different platforms, 
                // skip any members inside that padding region 
                // (since we can't know how inserting those members would 
                // split the padding on other platforms)
                if (pad.unequal()) {
                    if (pad.platforms.containsKey(args.platform)) {
                        // Backsolve where the original start of the padding region was
                        // (if new members have been added to the start)
                        int originalPadRegionStartIndex = i;
                        for (var j = i; j >= 0; j -= 1) {
                            if (type.getComponent(j).getOffset() == pad.offset) {
                                originalPadRegionStartIndex = j;
                            }
                        }
                        int lastPaddingIndex = i;
                        int originalPadRegionEndIndex = type.getNumComponents() - 1;
                        for (var j = i; j < type.getNumComponents(); j += 1) {
                            var opad = new PaddingInfo(type.getComponent(j).getComment(), args.platform);
                            if (opad.offset == pad.offset) {
                                lastPaddingIndex = j;
                            }
                            if (type.getComponent(j).getOffset() == pad.offset + pad.platforms.get(args.platform)) {
                                originalPadRegionEndIndex = j;
                                break;
                            }
                        }
                        // Issue warnings for members within the area
                        for (var j = i; j < lastPaddingIndex; j += 1) {
                            if (type.getComponent(j).getFieldName() != null) {
                                wrapper.printfmt(
                                    "Warning: field {0} in {1} is within a region of " + 
                                    "unequal paddings between platforms - you will need " + 
                                    "to manually export it to the Broma file and fix the " + 
                                    "paddings!",
                                    type.getComponent(j).getFieldName(), fullName
                                );
                            }
                        }
                        // Figure out how much the paddings should be shrunk down for each platform 
                        // based on the size of the members added to the ends
                        var shrunk = new HashMap<Platform, Integer>(pad.platforms);
                        for (var j = originalPadRegionStartIndex; j < i; j += 1) {
                            for (var plat : shrunk.keySet()) {
                                shrunk.replace(plat, shrunk.get(plat) - wrapper.sizeOfTypeOn(plat, type.getComponent(j).getDataType()));
                            }
                        }
                        for (var j = lastPaddingIndex + 1; j < originalPadRegionEndIndex; j += 1) {
                            for (var plat : shrunk.keySet()) {
                                shrunk.replace(plat, shrunk.get(plat) - wrapper.sizeOfTypeOn(plat, type.getComponent(j).getDataType()));
                            }
                        }

                        // Write paddings to file
                        result.append(new PaddingInfo(shrunk, pad.offset).bromaString());

                        // Skip the members
                        i = lastPaddingIndex + 1;
                    }
                    else {
                        wrapper.printfmt(
                            "Warning: padding at offset {0} in {1} is not defined on this platform " + 
                            " - exported members may be wrong!",
                            mem.getOffset(), fullName
                        );
                        result.append(pad.bromaString());
                    }
                }
                else {
                    var length = 0;
                    for (var j = i; j < type.getNumComponents(); j += 1) {
                        var opad = new PaddingInfo(type.getComponent(j).getComment(), args.platform);
                        if (opad.offset != pad.offset) {
                            break;
                        }
                        length += 1;
                    }
                    var platforms = new HashMap<Platform, Integer>();
                    for (var plat : pad.platforms.keySet()) {
                        platforms.put(plat, length);
                    }
                    result.append(new PaddingInfo(platforms, pad.offset).bromaString());
                    i += length;
                }
            }
            // Otherwise just export member
            else {
                result.append(MessageFormat.format(
                    "{0} {1};",
                    ScriptWrapper.formatType(mem.getDataType()), mem.getFieldName()
                ));
            }
        }

        Broma.Range replaceRange;
        if (bromaClass.members.isEmpty()) {
            // If there are no members just put at the end of the class definition
            replaceRange = bromaClass.beforeClosingBrace;
            // Add padding since there's none from existing members already
            result.append("\n");
        }
        // Otherwise replace all members
        else {
            replaceRange = bromaClass.members.get(0).range;
            for (var mem : bromaClass.members) {
                // If the padding is not defined on this platform, 
                // the padding and the rest of the members weren't imported 
                // and shouldn't be overridden
                if (mem.name.isEmpty() && !mem.paddings.containsKey(args.platform)) {
                    break;
                }
                replaceRange = replaceRange.join(mem.range);
            }
        }
        bromaClass.broma.addPatch(replaceRange, bromaClass.members.isEmpty() ? "" : result.toString());
    }

    private Broma.Class getTargetClassInBroma(String name) {
        Broma.Class bromaClass = null;
        for (var bro : bromas) {
            bromaClass = bro.getClass(name).orElse(null);
            if (bromaClass != null) {
                break;
            }
        }
        if (bromaClass == null) {
            wrapper.printfmt("Warning: class {0} not found in any of the target Bromas", name);
        }
        return bromaClass;
    }

    boolean askContinueConflict(String title, String fmt, Object... args) throws Exception {
        return askYesNo(title, MessageFormat.format(
            fmt + "\nIf this is not the case, please fix the conflict manually in the Broma file!",
            args
        ));
    }

    int askContinueConflict(String title, List<String> options, String fmt, Object... args) throws Exception {
		return InputWithButtonsDialog.show(
            wrapper,
            title,
            MessageFormat.format(
                "<html>" + fmt + "<br>If this is not the case, please fix " + 
                "the conflict manually in the Broma file!" + "</html>",
                args
            ),
            options
        );
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
}
