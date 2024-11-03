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
import java.util.List;

import docking.widgets.dialogs.InputWithChoicesDialog;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.data.AbstractFloatDataType;
import ghidra.program.model.data.Category;
import ghidra.program.model.data.CategoryPath;
import ghidra.program.model.data.Composite;
import ghidra.program.model.data.DataTypeConflictHandler;
import ghidra.program.model.data.DataTypePath;
import ghidra.program.model.data.DoubleDataType;
import ghidra.program.model.data.FloatDataType;
import ghidra.program.model.data.PointerDataType;
import ghidra.program.model.data.Structure;
import ghidra.program.model.data.StructureDataType;
import ghidra.program.model.data.Undefined;
import ghidra.program.model.data.Undefined1DataType;
import ghidra.program.model.data.VoidDataType;
import ghidra.program.model.listing.Function.FunctionUpdateType;
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
        private String selectedBromaFile;
        String gameVersion;
        boolean importFromBroma;
        boolean exportToBroma;
        boolean setOptcall;
        boolean syncMembers;

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
                    versions.add(file.getFileName().toString());
                }
            }
            // Put latest version at the top
            Collections.reverse(versions);

            var bromaFiles = List.of("Cocos2d.bro", "GeometryDash.bro");
            final var platforms = Arrays.asList(Platform.values()).stream().map(p -> p.getLongName()).toList();

            var platform = wrapper.autoDetectPlatform().orElse(null).getLongName();
            var isWindows = platform != null && platform.equals(Platform.WINDOWS32.getLongName());

            this.choice("Target platform", platforms, platform, p -> this.platform = Platform.fromLongName(p));
            this.choice("Broma file (Windows-only)", bromaFiles, f -> this.selectedBromaFile = f);
            this.choice("Game version", versions, v -> this.gameVersion = v);
            this.bool("Import from Broma", b -> this.importFromBroma = b);
            this.bool("Export to Broma", b -> this.exportToBroma = b);
            this.bool("Set optcall & membercall", isWindows, b -> this.setOptcall = b);
            this.bool("Sync members", b -> this.syncMembers = b);

            this.waitForAnswers();

            if (this.platform == Platform.WINDOWS32 || this.platform == Platform.WINDOWS64) {
                bromaFiles = List.of(this.selectedBromaFile);
            }
            this.bromaFiles = bromaFiles.stream()
                .map(f -> Paths.get(bindingsDir.toString(), this.gameVersion, f))
                .toList();
            
            if (!this.importFromBroma && !this.exportToBroma) {
                throw new Error("Either importing from or exporting to Broma has to be checked!");
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
            this.bromas.add(new Broma(bro, args.platform));
        }

        wrapper.updateTypeDatabase(args.platform);

        // Do the imports and exports and members
        if (this.args.importFromBroma) {
            this.handleImport();
            if (this.args.syncMembers) {
                this.handleImportMembers();
            }
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

    private SignatureImport importSignatureFromBroma(Address addr, Broma.Function fun, boolean force, boolean ignoreReturnType) throws Exception {
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
            data.setParentNamespace(wrapper.addOrGetNamespace(className));
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
                wrapper.printfmt("Added {0} to merged function list for {1}", fullName, data.getName(true));
                return SignatureImport.ADDED_MERGED;
            }
        }

        if (data.getSymbol().getSource() != SourceType.USER_DEFINED) {
            status = status.promoted(SignatureImport.ADDED);
        }
        data.getSymbol().setName(name, SourceType.USER_DEFINED);
        data.setParentNamespace(wrapper.addOrGetNamespace(className));

        // Get the calling convention
        final var conv = fun.getCallingConvention(args.platform);
        final var bromaSig = wrapper.getBromaSignature(fun, args.platform, ignoreReturnType);

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
                "__see_SyncBromaScript_line_" + Thread.currentThread().getStackTrace()[0].getLineNumber(),
                Undefined1DataType.dataType,
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

        // Apply new signature
        try {
            data.updateFunction(
                conv.getGhidraName(),
                bromaSig.returnType.orElse(null),
                updateType,
                true,
                SourceType.USER_DEFINED,
                bromaSig.parameters.toArray(Variable[]::new)
            );
        } catch (Exception e) {
            throw new Error("Died on: " + fullName + " with " + e.getMessage());
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
        for (var bro : bromas) {
            wrapper.printfmt("Reading {0}...", bro.path.getFileName());
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

                switch (importSignatureFromBroma(addr, fun, false, false)) {
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
                            var ghidraDataType = param.getDataType();
                            var ghidraPointerDataType = ghidraDataType;
                            if (ghidraDataType instanceof PointerDataType) {
                                ghidraPointerDataType = ((PointerDataType)ghidraDataType).getDataType();
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

                boolean returnTypeUpdated = false;

                // Update return type if Ghidra has an user-defined type and 
                // Broma has TodoReturn
                if (
                    bromaFun.returnType.isPresent() && bromaFun.returnType.get().name.value.contains("TodoReturn") &&
                    fun.getReturn().getSource() == SourceType.USER_DEFINED
                ) {
                    broma.addPatch(bromaFun.returnType.get().range, fun.getReturnType().getDisplayName());
                    exportedTypeCount += 1;
                    returnTypeUpdated = true;
                }

                // Get the function signature from Broma
                importSignatureFromBroma(child.getAddress(), bromaFun, false, !returnTypeUpdated);

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

    private void handleImportMembers() throws Exception {
        final var manager = currentProgram.getDataTypeManager();

        wrapper.printfmt("Importing members...");
        for (var bro : this.bromas) {
            wrapper.printfmt("Importing from {0}...", bro.path.getFileName());
            for (var cls : bro.classes) {
                final var fullName = cls.name.value;
                var category = new CategoryPath("/ClassDataTypes");
                String name = null;
                for (var part : fullName.split("::")) {
                    category = category.extend(part);
                    name = part;
                }
                // Make sure the category exists
                wrapper.createCategoryAll(category);
                final var classDataTypePath = new DataTypePath(category, name + "_data");
                var classDataMembers = (Structure) manager.getDataType(classDataTypePath);

                if (classDataMembers == null) {
                    // Just skip if there are no members to import
                    if (cls.members.isEmpty()) {
                        continue;
                    }
                    // Otherwise create data members struct
                    classDataMembers = new StructureDataType(name + "_data", 0);
                    manager.getCategory(category).addDataType(classDataMembers, DataTypeConflictHandler.DEFAULT_HANDLER);
                }
                wrapper.printfmt("Importing {0} members for {1}", cls.members.size(), fullName);

                // Disable packing
                classDataMembers.setPackingEnabled(false);

                // Delete any padding at the end of the struct 
                // (so if the struct has shrunk in broma, we refit it properly)
                while (!classDataMembers.isZeroLength()) {
                    var comp = classDataMembers.getComponent(classDataMembers.getNumComponents() - 1);
                    if (comp.getDataType() instanceof Undefined) {
                        classDataMembers.delete(classDataMembers.getNumComponents() - 1);
                    }
                    else {
                        break;
                    }
                }

                var offset = 0;
                for (var mem : cls.members) {
                    int length;
                    if (mem.name.isPresent()) {
                        final var memType = wrapper.addOrGetType(mem.type.get(), args.platform);
                        boolean isPointer = memType instanceof PointerDataType;
                        length = isPointer ? manager.getDataOrganization().getPointerSize() : memType.getLength();
                        int alignment = isPointer ? length : memType.getAlignment();
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

                    if (mem.name.isPresent()) {
                        final var memType = wrapper.addOrGetType(mem.type.get(), args.platform);
                        // Make sure alignment is correct
                        var existing = classDataMembers.getComponentAt(offset);
                        if (existing != null && existing.getDataType() instanceof Undefined) {
                            if (
                                !existing.getDataType().isEquivalent(memType) ||
                                (existing.getFieldName() != null && !existing.getFieldName().equals(mem.name.get().value))
                            ) {
                                askContinueConflict(
                                    "Override member",
                                    "Member #{0} in {1} does not match between Broma and Ghidra:\n" + 
                                    "Broma: {2} {3}\n" + 
                                    "Ghidra: {4} {5}\n" + 
                                    "Should the existing member in Ghidra be overwritten with Broma's?",
                                    existing.getOrdinal(), fullName,
                                    ScriptWrapper.formatType(memType), mem.name.get().value,
                                    ScriptWrapper.formatType(existing.getDataType()), existing.getFieldName()
                                );
                            }
                        }
                        for (int i = length; i > 0; i -= 1) {
                            classDataMembers.clearAtOffset(offset + i - 1);
                        }
                        classDataMembers.replaceAtOffset(
                            offset,
                            memType, length,
                            mem.name.get().value,
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

                    // todo: Funky little hack to fix GameObject_data not fitting inside EndGameObject
                    if (fullName.equals("GameObject") && offset > 0x26e) {
                        break;
                    }
                }

                // classDataMembers.setPackingEnabled(true);
                // classDataMembers.repack();
            }
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

    void askContinueConflict(String title, String fmt, Object... args) throws Exception {
        if (!askYesNo(title, MessageFormat.format(
            fmt + "\nIf this is not the case, please fix the conflict manually in the Broma file!",
            args
        ))) {
			throw new CancelledException();
        }
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
