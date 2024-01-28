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
import java.util.List;

import docking.widgets.dialogs.InputWithChoicesDialog;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.data.AbstractFloatDataType;
import ghidra.program.model.data.CategoryPath;
import ghidra.program.model.data.Composite;
import ghidra.program.model.data.DataTypeConflictHandler;
import ghidra.program.model.data.DataTypePath;
import ghidra.program.model.data.DoubleDataType;
import ghidra.program.model.data.FloatDataType;
import ghidra.program.model.data.Structure;
import ghidra.program.model.data.StructureDataType;
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

            this.choice("Target platform", platforms, p -> this.platform = Platform.parse(p));
            this.choice("Broma file (Windows-only)", bromaFiles, f -> this.selectedBromaFile = f);
            this.choice("Game version", versions, v -> this.gameVersion = v);
            this.bool("Import from Broma", b -> this.importFromBroma = b);
            this.bool("Export to Broma", b -> this.exportToBroma = b);
            this.bool("Set optcall & membercall", b -> this.setOptcall = b);
            this.bool("Sync members", b -> this.syncMembers = b);

            this.waitForAnswers();

            if (this.platform == Platform.WINDOWS) {
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

        wrapper.updateTypeDatabase();

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
        final var bromaSig = wrapper.getBromaSignature(fun, ignoreReturnType);

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
                wrapper.printfmt("Warning: class {0} not found", cls.getName(true));
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
                    wrapper.printfmt("Warning: function {0} not found", fullName);
                    continue;
                }
                Broma.Function bromaFun = null;
                if (bromaFuns.size() > 1) {
                    // Try to auto-detect overload
                    // For this to be possible, every arg must match type exactly
                    tryMatchFun:
                    for (var tryMatch : bromaFuns) {
                        var sig = wrapper.getBromaSignature(tryMatch, false);
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
                                wrapper.printfmt(
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

        // Save results
        wrapper.printfmt("Saving Broma files...");
        for (var bro : this.bromas) {
            bro.save();
        }
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
                wrapper.printfmt("Importing members for {0}", fullName);

                var offset = 0;
                for (var mem : cls.members) {
                    if (mem.name.isPresent()) {
                        final var memType = wrapper.addOrGetType(mem.type.get());
                        // Make sure the class is large enough to hold this member
                        // growStructure aint doin shit on packed structs so manually doing this
                        while (offset + memType.getLength() > classDataMembers.getLength() || classDataMembers.isZeroLength()) {
                            classDataMembers.add(Undefined1DataType.dataType);
                        }
                        // If there are packed bools or something we need to clear multiple members
                        var freedCount = 0;
                        while (true) {
                            final var data = classDataMembers.getComponentAt(offset + freedCount);
                            if (data == null || data.getLength() >= memType.getLength() - freedCount) {
                                break;
                            }
                            freedCount += data.getLength();
                            classDataMembers.clearAtOffset(offset + freedCount);
                        }
                        classDataMembers.replaceAtOffset(offset, memType, memType.getLength(), mem.name.get().value, null);
                        offset += memType.getLength();
                    }
                    else if (mem.padding.isPresent()) {
                        var length = Integer.parseInt(mem.padding.get().value, 16);
                        while (offset + length > classDataMembers.getLength()) {
                            classDataMembers.add(Undefined1DataType.dataType);
                        }
                        for (int i = 0; i < length; i += 1) {
                            classDataMembers.clearAtOffset(offset + i);
                            if (mem.unequalPadding) {
                                classDataMembers.replaceAtOffset(
                                    offset + i, Undefined1DataType.dataType, 1, null,
                                    "Unequal padding on different platforms; UNEQ_SKIP:" + (length - i - 1)
                                );
                            }
                        }
                        offset += length;
                    }
                    else {
                        wrapper.printfmt("Reached unimplemented padding on this platform, stopping importing members");
                        break;
                    }
                    // todo: shrink class size if it has been expanded earlier, but do not shrink beyond what rtti analysis did
                }

                // Repack because I don't want to manually pack this stuff like why would I
                classDataMembers.repack();
            }
        }
    }

    private void handleExportMembers() throws Exception {
        wrapper.printfmt("Exporting members...");
        this.popup("Exporting members has not yet been implemented! Sorry :(   -HJfod");
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
