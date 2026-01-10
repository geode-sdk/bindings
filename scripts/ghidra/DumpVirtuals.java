// Dump virtual tables from the android version of GD
// @author Mat
// @category GeodeSDK

import ghidra.app.script.GhidraScript;
import ghidra.program.model.data.*;
import ghidra.program.model.symbol.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

public class DumpVirtuals extends GhidraScript {
    int PTR_SIZE;

    SymbolTable table;
    Listing listing;

    Symbol getChildOfName(Symbol parent, String name) {
        for (var child : table.getChildren(parent)) {
            if (child.getName().equals(name))
                return child;
        }
        return null;
    }

    Data createPtrAt(Address addr) throws Exception {
        Data data = listing.getDataAt(addr);
        if (!data.isDefined())
            data = listing.createData(addr, PointerDataType.dataType);
        return data;
    }

    Address addrAtData(Data data) throws Exception {
        return (Address)data.getValue();
    }

    Address removeThumbOffset(Address addr) {
        // thumb addresses are stored as actual addr + 1
        if (addr.getOffset() % 2 == 1) {
            addr = addr.subtract(1);
        }
        return addr;
    }

    boolean isTypeinfo(Address addr) {
        var com = listing.getComment(CommentType.PLATE, addr);
        if (com == null) return false;
        return com.contains("typeinfo");
        // this.currentProgram.getSymbolTable().getPrimarySymbolAt(addr).getName().equals("typeinfo");
    }

    boolean isStartOfVtable(Address addr) throws Exception {
        if (hasVtableComment(addr)) return true;

        // on itanium, vtable starts with 0 or a negative number,
        // and then a pointer to type info.

        // get the value of the pointer as an int, and see if its non positive
        var offset = currentProgram.getMemory().getInt(addr);
        var result = offset <= 0;
        // the ptr after must be of a typeinfo
        result = result && isTypeinfo(readPtrAt(addr.add(PTR_SIZE)));

        return result;
    }

    Address readPtrAt(Address addr) throws Exception {
        var unkData = listing.getDataAt(addr);
        if (PTR_SIZE == 4) {
            return toAddr(unkData.getInt(0));
        } else {
            return toAddr(unkData.getLong(0));
        }
    }

    boolean hasVtableComment(Address addr) {
        var com = listing.getComment(CommentType.PLATE, addr);
        if (com == null) return false;
        return com.contains("vtable");
    }
	
	HashMap<String, ArrayList<ArrayList<String>>> classes = new HashMap<>();
	
	void processNamespace(Namespace cl) {
		var name = cl.getName(true);

		if (name.contains("switch")) return;
		if (name.contains("llvm")) return;
		if (name.contains("tinyxml2")) return;
		if (name.contains("<")) return;
		if (name.contains("__")) return;
		if (name.contains("fmt")) return;
		if (name.contains("std::")) return;
		if (name.contains("pugi")) return;
		// i think theyre correct already
		// if (name.contains("cocos2d::")) return;

		// theres only one vtable on android,
		var vtable = getChildOfName(cl.getSymbol(), "vtable");
		// and if there is none then we dont care
		if (vtable == null) return;

        // if (!name.equals("GJBaseGameLayer")) return;

		println("Dumping " + name);

		ArrayList<ArrayList<String>> bases = new ArrayList<>();
		classes.put(name, bases);

		var vtableAddr = vtable.getProgramLocation().getAddress();
		try {
			var curAddr = vtableAddr;
			while (isStartOfVtable(curAddr) && !this.monitor.isCancelled()) {
				ArrayList<String> virtuals = new ArrayList<>();
				curAddr = curAddr.add(PTR_SIZE * 2);
                var emptyCount = 0;
				while (!this.monitor.isCancelled()) {
					if (isStartOfVtable(curAddr)) break;
					// idk what this is for
					// if (listing.getComment(CodeUnit.PLATE_COMMENT, curAddr) != null) break;

					// ok, we're probably at the functions now!

					var functionAddr = removeThumbOffset(readPtrAt(curAddr));

                    // some vtables have nullptrs in them, like GJBaseGameLayer
                    // since they are pure virtual or something
                    if (functionAddr.getUnsignedOffset() == 0) {
                        virtuals.add("~" + name + "()");
                        emptyCount++;
                        curAddr = curAddr.add(PTR_SIZE);
                        continue;
                    }

					var function = listing.getFunctionAt(functionAddr);
					
					if (function == null) break;
                    
                    emptyCount = 0;

					if (function.getName().contains("pure_virtual")) {
						virtuals.add("pure_virtual_" + curAddr.toString() + "()");
					} else {
						var comment = listing.getComment(CommentType.PLATE, functionAddr);
						var funcSig = comment.replaceAll("^(non-virtual thunk to )?(\\w+::)+(?=~?\\w+\\()", "");
						virtuals.add(funcSig);
					}
					
					curAddr = curAddr.add(PTR_SIZE);
				}

                // remove the empty virtuals at the end
                for (; emptyCount > 0; emptyCount--) {
                    virtuals.remove(virtuals.size() - 1);
                }

				bases.add(virtuals);

				// we've reached another class's vtable! abort!!
				if (hasVtableComment(curAddr) || hasVtableComment(curAddr.add(PTR_SIZE))) break;
				// risky but whatever
				// if (readPtrAt(curAddr).getOffset() == 0) return;
			}
		} catch (Exception e) {}
	}

    public void run() throws Exception {
        println("-------- STARTING -------");
        PTR_SIZE = currentProgram.getDefaultPointerSize();

        table = currentProgram.getSymbolTable();
        listing = currentProgram.getListing();

        table.getChildren(currentProgram.getGlobalNamespace().getSymbol()).forEach((sy) -> {
            if (!sy.getSymbolType().equals(SymbolType.CLASS) && !sy.getSymbolType().equals(SymbolType.NAMESPACE)) return;
            // var cl = (Namespace)sy;
            // ghidra is so stupid istg
            var cl = table.getNamespace(sy.getName(), currentProgram.getGlobalNamespace());
			
			processNamespace(cl);
        });

        var cocosNs = table.getNamespace("cocos2d", currentProgram.getGlobalNamespace());
        table.getChildren(cocosNs.getSymbol()).forEach((sy) -> {
            if (!sy.getSymbolType().equals(SymbolType.CLASS) && !sy.getSymbolType().equals(SymbolType.NAMESPACE)) return;
            var cl = table.getNamespace(sy.getName(), cocosNs);
            
            processNamespace(cl);
        });

        var cocosExtensionNs = table.getNamespace("extension", cocosNs);
        table.getChildren(cocosExtensionNs.getSymbol()).forEach((sy) -> {
            if (!sy.getSymbolType().equals(SymbolType.CLASS) && !sy.getSymbolType().equals(SymbolType.NAMESPACE)) return;
            var cl = table.getNamespace(sy.getName(), cocosExtensionNs);

            processNamespace(cl);
        });

        println("Generating json..");

        var file = askFile("Save json output", "Save");
        if (file == null || file.exists()) return;

        var writer = new PrintWriter(file, "UTF-8");

        try {
            // writing json output manually..
            writer.write("{");
            boolean first1 = true;
            for (var name : classes.keySet()) {
                if (!first1) writer.write(",");
                writer.write("\"" + name + "\":[");
                boolean first2 = true;
                for (var table : classes.get(name)) {
                    if (!first2) writer.write(",");
                    writer.write("[");
                    boolean first3 = true;
                    for (var func : table) {
                        if (!first3) writer.write(",");
                        writer.write("\"" + func + "\"");
                        first3 = false;
                    }
                    writer.write("]");
                    first2 = false;
                }
                writer.write("]");
                first1 = false;
            }
            writer.write("}");
        } finally {
            writer.close();
        }
    }
}
