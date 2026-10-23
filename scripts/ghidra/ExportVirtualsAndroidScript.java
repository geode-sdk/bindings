// Imports virtuals from txt files
// @author Cvolton
// @category GeodeSDK

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.FunctionManager;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressFactory;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import ghidra.program.model.symbol.Symbol;
import ghidra.program.model.symbol.SymbolIterator;
import ghidra.program.model.symbol.SymbolTable;
import ghidra.program.model.symbol.ExternalLocation;
import ghidra.program.database.function.FunctionDB;
import ghidra.program.model.data.*;
import ghidra.program.model.listing.Data;
import java.util.ArrayList;
import java.io.PrintWriter;

public class ExportVirtualsAndroidScript extends GhidraScript {
    FunctionManager functionManager = null;
    Address autoreleaseAddress = null;
    public void run() throws Exception {
        functionManager = currentProgram.getFunctionManager();

        
        findVtables();
        

    }

    public void findVtables() throws Exception {
        int pointerSize = currentProgram.getDefaultPointerSize();

        // Iterate over each function
        SymbolTable symbolTable = currentProgram.getSymbolTable();

        // Get an iterator over all symbols with the specified name
        SymbolIterator symbolIterator = symbolTable.getSymbols("vtable");

        // Iterate over each symbol with the specified name
        while (symbolIterator.hasNext()) {
            Symbol symbol = symbolIterator.next();

            String name = symbol.getParentNamespace().getName();

            String output = "";

            
            if(name.contains(":")) continue;
            if(name.contains("<")) continue;
            println("Found vtable for " + name + " at " + symbol.getAddress().add(pointerSize * 2));

            List<Integer> functionAddresses = new ArrayList<Integer>();

            Address vtableAddr = symbol.getAddress().add(pointerSize * 2);

            while(true) {
                Data data = getDataAt(vtableAddr);
                if (data == null) {
                    //println("Could not find data at " + vtableAddr);
                    break;
                }

                Function function = functionManager.getFunctionAt(currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(data.getInt(0) - 1));
                if (function == null) {
                    println("Could not find function at " + data.getInt(0));
                    break;
                }

                println("Found function " + function.getName() + " at " + Integer.toHexString(data.getInt(0)));
                output += function.getParentNamespace().getName(true) + " " + function.getName() + "\n";
                functionAddresses.add(data.getInt(0));

                vtableAddr = vtableAddr.add(currentProgram.getDefaultPointerSize());
            };
            println("Found " + functionAddresses.size() + " functions for " + name);

            var writer = new PrintWriter("/home/aster/virtuals/" + name + ".txt", "UTF-8");
            writer.write(output);
            writer.close();
        }
    }

}
