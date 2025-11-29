// Automatically detect vtables in MacOS GD
// @author Alk1m123
// @category GeodeSDK

import java.util.HashMap;
import java.util.List;

import ghidra.app.util.NamespaceUtils;
import ghidra.app.script.GhidraScript;
import ghidra.app.util.demangler.DemanglerUtil;
import ghidra.app.util.demangler.DemangledObject;
import ghidra.app.util.demangler.DemanglerOptions;
import ghidra.program.model.address.Address;
import ghidra.program.model.mem.MemoryBlock;
import ghidra.program.model.mem.MemoryAccessException;
import ghidra.util.exception.InvalidInputException;
import ghidra.program.model.symbol.Symbol;

public class FindVtablesScript extends GhidraScript {
    HashMap<Long, String> typeinfoNames = new HashMap<Long, String>();
    HashMap<Long, String> typeinfos = new HashMap<Long, String>();
    HashMap<Long, String> vtables = new HashMap<Long, String>();
    HashMap<Long, Long> vtableOffsets = new HashMap<Long, Long>();

    MemoryBlock dataBlock = null; // contains vtables and typeinfos
    MemoryBlock textBlock = null; // contains typeinfo names

    public void run() throws Exception {
        // Get the current program
        if (currentProgram == null) {
            println("No program is open");
            return;
        }

        // Get the __const section with __DATA and __TEXT comments
        MemoryBlock[] blocks = currentProgram.getMemory().getBlocks();
        for (MemoryBlock block : blocks) {
            if (block.getName().equals("__const")) {
                if (block.getComment().equals("__DATA") || block.getComment().equals("__DATA_CONST")) {
                    dataBlock = block;
                }
                else if (block.getComment().equals("__TEXT")) {
                    textBlock = block;
                }
            }
        }
        
        if (dataBlock == null || textBlock == null) {
            println("No __const section found");
            return;
        }

        populateTypeinfoNames();
        println("Found " + typeinfoNames.size() + " typeinfo names");

        populateTypeinfos();
        println("Found " + typeinfos.size() + " typeinfos");

        populateVtables();
        println("Found " + vtables.size() + " vtables");

        createLabels();
    }

    private void populateTypeinfoNames() {
        // Get the typeinfo names
        
        for (Address addr = dataBlock.getStart(); dataBlock.contains(addr); addr = addr.add(8)) {
            // get the pointer value
            try {
                // for some reason, some of the typeinfo names start with 0x80 00 00 00 00 00 00 00
                Address tiNamePtr = toAddr(getLong(addr) & 0x7FFFFFFFFFFFFFFFL);
                if (!textBlock.contains(tiNamePtr)) continue;
                // print("Found typeinfo name: " + tiNamePtr.getOffset() + "\n");

                String string = new String();
                char currentChar = (char) getByte(tiNamePtr);

                if (currentChar != 'N' && !('0' <= currentChar && currentChar <= '9')) continue;

                Address stringPtr = toAddr(tiNamePtr.getOffset());
                while (currentChar != 0) {
                    string += currentChar;
                    stringPtr = stringPtr.add(1);
                    currentChar = (char) getByte(stringPtr);
                    if (string.length() > 100) break;
                }

                typeinfoNames.put(tiNamePtr.getOffset(), string);

                // print the found typeinfo name
                // println("Found typeinfo name: " + string);
            }
            catch (MemoryAccessException e) {
                continue;
            }
        }
    }

    private void populateTypeinfos() {
        // Get the typeinfos
        for (Address addr = dataBlock.getStart(); dataBlock.contains(addr); addr = addr.add(8)) {
            try {
                // get the pointer value
                long offset = getLong(addr) & 0x7FFFFFFFFFFFFFFFL;
                if (!typeinfoNames.containsKey(offset)) continue;

                typeinfos.put(addr.getOffset() - 8, typeinfoNames.get(offset));

                // print the found typeinfo
                // println("Found typeinfo: " + typeinfoNames.get(offset));
            }
            catch (MemoryAccessException e) {
                continue;
            }
        }
    }

    private void populateVtables() {
        // Get the vtables
        for (Address addr = dataBlock.getStart(); dataBlock.contains(addr); addr = addr.add(8)) {
            try {
                // get the pointer value
                long offset = getLong(addr) & 0x7FFFFFFFFFFFFFFFL;
                if (!typeinfos.containsKey(offset)) continue;

                Address firstFunc = toAddr(getLong(addr.add(8)));
                if (!currentProgram.getMemory().contains(firstFunc)) continue;

                long thunkOffset = getLong(addr.add(-8));
                if (thunkOffset > 0 || thunkOffset < -65536) continue;

                vtables.put(addr.getOffset() + 8, typeinfos.get(offset));
                vtableOffsets.put(addr.getOffset() + 8, -thunkOffset);

                // print the found vtable
                // println("Found vtable: " + typeinfos.get(offset) + " with offset " + -thunkOffset + " at " + addr.getOffset());
            }
            catch (MemoryAccessException e) {
                continue;
            }
        }
    }

    private void createLabels() {
        // create the vtables
        for (Long offset : vtables.keySet()) {
            String name = vtables.get(offset);
            List<DemangledObject> demangled = DemanglerUtil.demangle(currentProgram, "_ZTV" + name, null);
            try {
                demangled.get(0).applyTo(currentProgram, toAddr(offset), new DemanglerOptions(), monitor);
            }
            catch (Exception e) {
                continue;
            }
        }

        // create the typeinfos
        for (Long offset : typeinfos.keySet()) {
            String name = typeinfos.get(offset);
            List<DemangledObject> demangled = DemanglerUtil.demangle(currentProgram, "_ZTI" + name, null);
            try {
                demangled.get(0).applyTo(currentProgram, toAddr(offset), new DemanglerOptions(), monitor);
            }
            catch (Exception e) {
                continue;
            }
        }

        // create the typeinfo names
        for (Long offset : typeinfoNames.keySet()) {
            String name = typeinfoNames.get(offset);
            List<DemangledObject> demangled = DemanglerUtil.demangle(currentProgram, "_ZTS" + name, null);
            try {
                demangled.get(0).applyTo(currentProgram, toAddr(offset), new DemanglerOptions(), monitor);
            }
            catch (Exception e) {
                continue;
            }
        }

        for (Symbol symbol : currentProgram.getSymbolTable().getSymbols("vtable")) {
            long offset = symbol.getAddress().getOffset();
            
            if (vtableOffsets.containsKey(offset) && vtableOffsets.get(offset) > 0) {
                try {
                    String symbolName = "vtable-" + vtableOffsets.get(offset);
                    // If a symbol with the same name already exists, delete it
                    Symbol existingSymbol = currentProgram.getSymbolTable().getSymbol(symbolName, toAddr(offset), symbol.getParentNamespace());
                    if (existingSymbol != null) {
                        existingSymbol.delete();
                    }
                    // println("Found vtable at " + offset);
                    symbol.setName(symbolName, symbol.getSource());
                }
                catch (Exception e) {
                    // println("Failed to rename vtable at " + e.getMessage());
                    continue;
                }
            }

            try {
                NamespaceUtils.convertNamespaceToClass(symbol.getParentNamespace());
            }
            catch (InvalidInputException e) {
                continue;
            }
        }
    }
}
