import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.data.CategoryPath;
import ghidra.program.model.data.Composite;
import ghidra.program.model.data.DataType;
import ghidra.program.model.data.DataTypeConflictHandler;
import ghidra.program.model.data.DataTypePath;
import ghidra.program.model.data.EnumDataType;
import ghidra.program.model.data.IntegerDataType;
import ghidra.program.model.data.PointerDataType;
import ghidra.program.model.data.StructureDataType;
import ghidra.program.model.listing.ParameterImpl;
import ghidra.program.model.listing.ReturnParameterImpl;
import ghidra.program.model.listing.Variable;
import ghidra.program.model.symbol.Namespace;
import ghidra.program.model.symbol.SourceType;
import ghidra.util.Swing;
import ghidra.util.exception.CancelledException;

public class ScriptWrapper {
    GhidraScript wrapped;
    Path bindingsDir;

    ScriptWrapper(GhidraScript script) {
        this.wrapped = script;

        // Get the bindings directory from the location of this script
        this.bindingsDir = Paths.get(script.getSourceFile().getParentFile().getParentFile().getParentFile().toString(), "bindings");
        if (!Files.isDirectory(bindingsDir)) {
            throw new Error("SyncBromaScript should be located in <Geode bindings>/scripts/ghidra!");
        }
        this.printfmt("Bindings directory: {0}", bindingsDir);
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

    DataType addOrGetType(Broma.Type type) throws Exception {
        final var manager = wrapped.getCurrentProgram().getDataTypeManager();

        // Get the name and category
        var nameIter = Arrays.asList(type.name.value.split("::")).listIterator();
        String name = null;
        DataTypePath typePath = null;

        // Root category is the same as where RecoverClassesFromRTTIScript places them
        CategoryPath category = new CategoryPath("/ClassDataTypes");

        // Built-in types
        if (type.name.value.matches("bool|char|int|long|float|double|void")) {
            category = new CategoryPath("/");
            name = type.name.value;
            typePath = new DataTypePath(category, name);
        }
        // Class types
        else {
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
        }
        
        ScriptWrapper.rtassert(name != null, "Data type doesn't have a name (GRAB_TYPE regex is invalid)");

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

    Signature getBromaSignature(Broma.Function fun) throws Exception {
        // Parse args
        List<Variable> bromaParams = new ArrayList<Variable>();
        // Add `this` arg
        if (fun.dispatch.isEmpty() || !fun.dispatch.get().value.contains("static")) {
            bromaParams.add(new ParameterImpl(
                "this",
                addOrGetType(Broma.Type.ptr(fun.parent.broma, fun.parent.name.value)),
                wrapped.getCurrentProgram(),
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
                bromaParams.add(new ParameterImpl("__return", type, wrapped.getCurrentProgram(), SourceType.USER_DEFINED));
            }
            bromaRetType = new ReturnParameterImpl(type, wrapped.getCurrentProgram());
        }
        // Params
        for (var param : fun.params) {
            bromaParams.add(new ParameterImpl(
                param.name.map(p -> p.value).orElse(null),
                addOrGetType(param.type),
                wrapped.getCurrentProgram(),
                SourceType.USER_DEFINED
            ));
        }
        return new Signature(bromaRetType, bromaParams);
    }

    void askContinue(String title, String fmt, Object... args) throws Exception {
		var choice = Swing.runNow(() -> {
			var dialog = new InputWithButtonsDialog(
                title,
                MessageFormat.format(("<html>" + fmt + "</html>").replace("\n\n", "<br>"), args),
                List.of("Continue")
            );
			wrapped.getState().getTool().showDialog(dialog);
			return dialog.getValue();
		});
        if (choice.isEmpty()) {
            throw new CancelledException();
        }
    }
}
