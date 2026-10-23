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
import ghidra.program.model.symbol.Namespace;
import java.util.ArrayList;
import java.util.HashMap;

public class ImportVirtualsMacScript extends GhidraScript {
    FunctionManager functionManager = null;
    Address autoreleaseAddress = null;
    ScriptWrapper wrapper;
    public void run() throws Exception {
        functionManager = currentProgram.getFunctionManager();
        this.wrapper = new ScriptWrapper(this);

        
        findVtables();
        

    }

    public void findVtables() throws Exception {
        HashMap<String, Namespace> namespaces = new HashMap<String, Namespace>();

        SymbolTable symbolTable = currentProgram.getSymbolTable();
        var clsIter = symbolTable.getClassNamespaces();
        while (clsIter.hasNext()) {
            Namespace ns = clsIter.next();
            namespaces.put(ns.getName(true), ns);
        }

        List<String> vtableLines = Files.readAllLines(Paths.get("/home/aster/virtuals/vtables2.txt"));
        for (String line : vtableLines) {
            
            String[] parts = line.split(" : ");
            String className = parts[0];
            String vtableAddress = parts[1];
            if(className.contains(":")) continue;
            
            Address vtableAddr = toAddr(Long.decode(vtableAddress) + (currentProgram.getDefaultPointerSize() * 2));
            if (vtableAddr == null) {
                println("Could not find address for " + vtableAddress);
                continue;
            }
            //println("Found vtable for " + className + " at " + vtableAddr);

            List<String> functionLines = null;
            try {
                functionLines = Files.readAllLines(Paths.get("/home/aster/virtuals/" + className + ".txt"));
            } catch (Exception e) {
                println("Could not find file for " + className);
                continue;
            }

            List<Long> functionAddresses = new ArrayList<Long>();

            while(true) {
                Data data = getDataAt(vtableAddr);
                if (data == null) {
                    //println("Could not find data at " + vtableAddr);
                    break;
                }

                Function function = functionManager.getFunctionAt(currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(data.getLong(0)));
                if (function == null) {
                    //println("Could not find function at " + data.getLong(0));
                    break;
                }

                //println("Found function " + function.getName() + " at " + Long.toHexString(data.getLong(0)));
                functionAddresses.add(data.getLong(0));

                vtableAddr = vtableAddr.add(currentProgram.getDefaultPointerSize());
            };

            //println("Found " + functionAddresses.size() + " functions for " + className);
            //println("Found " + functionLines.size() + " lines for " + className);

            if (functionAddresses.size() != functionLines.size()) {
                println("Mismatched function count for " + className + " (" + functionAddresses.size() + " vs " + functionLines.size() + ")");
                continue;
            }

            for (int i = 0; i < functionAddresses.size(); i++) {
                String functionLine = functionLines.get(i);
                long functionAddress = functionAddresses.get(i);
                Function function = functionManager.getFunctionAt(toAddr(functionAddress));

                
                String namespaceName = functionLine.split(" ")[0];
                String functionName = functionLine.split(" ")[1];
                if(function.getName().equals(functionName)) continue; //i hate java, this comment will be next to every .equals
                
                if (function == null) {
                    println("Could not find function at " + functionAddress);
                    continue;
                }

                Namespace namespace = namespaces.get(namespaceName);

                if (namespace == null) {
                    namespace = wrapper.addOrGetNamespace(namespaceName);
                    println("Could not find namespace " + namespaceName);
                }

                function.setParentNamespace(namespace);
                function.setName(functionName, SourceType.ANALYSIS);

                println("Renamed " + namespaceName + "::" + functionName + " to " + function.getName());

            }
        }
    }

}
