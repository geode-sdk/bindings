// i made this 100% with claude lol have fun

// Replace Ghidra's empty "PlaceHolder Class Structure" types with the real class structs
// built by RecoverClassesFromRTTIScript + SyncBromaScript (/ClassDataTypes/<Class>/<Class>).
// Every use of a placeholder (like a function's auto `this` parameter) gets re-pointed
// to the real struct, and the placeholder is removed.
// @author chizz
// @category GeodeSDK

import java.util.ArrayList;
import java.util.List;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.data.CategoryPath;
import ghidra.program.model.data.DataType;
import ghidra.program.model.data.DataTypeManager;
import ghidra.program.model.data.DataTypePath;
import ghidra.program.model.data.Structure;

public class ReplacePlaceholderClassStructs extends GhidraScript {
    static final String PLACEHOLDER_DESCRIPTION = "PlaceHolder Class Structure";
    static final CategoryPath CLASS_DATA_TYPES = new CategoryPath("/ClassDataTypes");

    record Replacement(Structure placeholder, Structure real) {}

    @Override
    protected void run() throws Exception {
        final var manager = currentProgram.getDataTypeManager();

        // collect first, since replacing while iterating would change the list underneath us
        var replacements = new ArrayList<Replacement>();
        var missing = new ArrayList<String>();

        var structs = manager.getAllStructures();
        while (structs.hasNext()) {
            var struct = structs.next();
            if (!isPlaceholder(struct)) continue;

            var real = findRealStruct(manager, struct);
            if (real != null) {
                replacements.add(new Replacement(struct, real));
            }
            else {
                missing.add(struct.getPathName());
            }
        }

        for (var path : missing) {
            println("No real struct found for " + path + ", leaving it alone");
        }

        if (replacements.isEmpty()) {
            println("No placeholders to replace");
            return;
        }

        for (var replacement : replacements) {
            println(replacement.placeholder().getPathName() + " -> " + replacement.real().getPathName());
        }

        boolean confirmed = askYesNo(
            "Replace placeholder class structs",
            "Found " + replacements.size() + " placeholder structs with a real struct to replace them with " +
            "(" + missing.size() + " without one, those are left alone).\n\n" +
            "The full list is in the script console. Replace them?"
        );
        if (!confirmed) return;

        int replacedCount = 0;
        for (var replacement : replacements) {
            try {
                manager.replaceDataType(replacement.placeholder(), replacement.real(), false);
                replacedCount++;
            }
            catch (Exception e) {
                println("Failed to replace " + replacement.placeholder().getPathName() + ": " + e.getMessage());
            }
        }

        println("Replaced " + replacedCount + " of " + replacements.size() + " placeholder structs");
    }

    // only touch the empty structs ghidra made itself, never anything with real contents
    static boolean isPlaceholder(Structure struct) {
        var description = struct.getDescription();
        return struct.isZeroLength() && description != null && description.contains(PLACEHOLDER_DESCRIPTION);
    }

    // the real struct lives in a self-titled folder next to the placeholder,
    // or under /ClassDataTypes if the placeholder ended up outside it
    static Structure findRealStruct(DataTypeManager manager, Structure placeholder) {
        var name = placeholder.getName();
        var category = placeholder.getCategoryPath();

        var candidates = List.of(
            new DataTypePath(category.extend(name), name),
            new DataTypePath(underClassDataTypes(category).extend(name), name)
        );

        for (var candidate : candidates) {
            DataType type = manager.getDataType(candidate);
            if (type instanceof Structure real && real != placeholder && !real.isZeroLength()) {
                return real;
            }
        }
        return null;
    }

    static CategoryPath underClassDataTypes(CategoryPath category) {
        if (category.isAncestorOrSelf(CLASS_DATA_TYPES)) return category;
        if (category.isRoot()) return CLASS_DATA_TYPES;
        return new CategoryPath(CLASS_DATA_TYPES.getPath() + category.getPath());
    }
}
