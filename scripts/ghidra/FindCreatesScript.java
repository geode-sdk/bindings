// Automatically detect creates in Windows GD
// @author Cvolton
// @category GeodeSDK

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.FunctionManager;
import ghidra.program.model.address.Address;
//import ghidra.program.model.address.AddressFactory;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
//import ghidra.program.model.symbol.Symbol;
//import ghidra.program.model.symbol.SymbolIterator;
//import ghidra.program.model.symbol.ExternalLocation;
//import ghidra.program.database.function.FunctionDB;
//import ghidra.program.model.data.DataType;
//import ghidra.program.model.data.DataTypeManager;
//import ghidra.program.model.data.Structure;

public class FindCreatesScript extends GhidraScript {
    FunctionManager functionManager = null;
    Address autoreleaseAddress = null;
    public void run() throws Exception {
        functionManager = currentProgram.getFunctionManager();

        /**
         * Find creates
         */
        findCreates();
        

        /**
         * Find autorelease (for init)
         */
        findAutorelease();        


        /**
         * Find inits
         */
        findInits();

        /**
         * Find inits (stupid way)
         */
        findInitsStupid("vfunction10");
        

    }

    public void findAutorelease() throws Exception {
        FunctionIterator functionIterator = functionManager.getExternalFunctions();
        while (functionIterator.hasNext()) {
            Function func = functionIterator.next();
            String functionName = func.getName();
            String namespace = func.getParentNamespace().getName();
            if(functionName.equals("autorelease") && namespace.equals("CCObject")) {
                Reference[] autoreleaseRefs = getReferencesTo(func.getEntryPoint());
                if(autoreleaseRefs.length == 0) continue;

                autoreleaseAddress = autoreleaseRefs[0].getFromAddress();
            }
        }
    }

    public Function findFunction(String namespace, String name) throws Exception {
        FunctionIterator functionIterator = functionManager.getFunctions(true);
        while (functionIterator.hasNext()) {
            Function func = functionIterator.next();
            String functionName = func.getName();
            String funcNamespace = func.getParentNamespace().getName();
            if(functionName.equals(name) && funcNamespace.equals(namespace)) {
                return func;
            }
        }
        return null;
    }

    public void findCreates() throws Exception {
        // Iterate over each function
        FunctionIterator functionIterator = functionManager.getFunctions(true);
        while (functionIterator.hasNext()) {
            Function func = functionIterator.next();
            String functionName = func.getName();
            String namespace = func.getParentNamespace().getName();
            // Func is ctor
            if(namespace.equals(functionName)) { // i hate java
                //see xref count
                Reference[] xrefCount = getReferencesTo(func.getEntryPoint());
                if(xrefCount.length != 1) continue;
                
                //println("Function Name: " + functionName + " from " + namespace + " (0x" + func.getEntryPoint() + ")");
                //println("Xref Count: " + xrefCount.length);

                Address address = xrefCount[0].getFromAddress();
                //println("Xref Address: " + address);
                //println("Xref Type: " + xrefCount[0].getReferenceType());
                //println("Xref Source: " + address.getAddressSpace().getName());
    
                // Get the function containing the address
                Function createFunction = functionManager.getFunctionContaining(address);
                
                if (createFunction != null) {
                    if(!createFunction.getParentNamespace().getName().equals("Global")) continue;
                    long size = createFunction.getBody().getNumAddresses();
                    if(size > 500) continue; //this is sus, likely CustomListView::getCell or some inlined create or whatever

                    println("Function Name: " + functionName + " from " + namespace + " (0x" + func.getEntryPoint() + ") called from " +
                        createFunction.getName() + " from " + createFunction.getParentNamespace().getName() + " (0x" + address + ") with size (bytes): " + size);
                    
                    createFunction.setParentNamespace(func.getParentNamespace());
                    createFunction.setName("create", SourceType.ANALYSIS);
                }

            }

        }
    }

    // this doesnt work because it doesnt resolve virtuals
    public boolean isFuncInit2(Function func) {
        InstructionIterator instructionIterator = currentProgram.getListing().getInstructions(func.getBody(), true);
        while (instructionIterator.hasNext()) {
            Instruction instruction = instructionIterator.next();
            if (instruction.getMnemonicString().equals("CALL")) {
                // Get the called function address
                Reference[] operandReferences = instruction.getOperandReferences(0);
                if (operandReferences.length == 0) {
                    //println("No operand ref");
                    continue; //virtual call
                }

                Address calledFunctionAddress = operandReferences[0].getToAddress();

                //Symbol symbol = getSymbolAt(calledFunctionAddress);

                /*if (symbol != null && symbol.isExternal()) {
                    

                    ExternalLocation extLoc = ((FunctionDB) symbol.getObject()).getExternalLocation();
                    println("External function found: " + symbol.getName() + ", Address: " + extLoc.getAddress());
                    // Now you can retrieve the function object if needed
                    Function externalFunction = getFunctionAt(extLoc.getAddress());
                    if (externalFunction != null) {
                        println("Function name: " + externalFunction.getName());
                    } else {
                        println("Function not found at the address.");
                    }
                } else {
                    println("Not a pointer to an external function.");
                }*/


                Function calledFunction = functionManager.getFunctionAt(calledFunctionAddress);
                if (calledFunction != null) {
                    if(calledFunction.getName().equals("init") || calledFunction.getName().equals("initWithColor")) {
                        return true;
                    }
                }
                //return true;
            }
        }
        return false;
    }

    public boolean isFuncInit(Function func) {
        //every func is init if you believe hard enough 🥺
        return true;
    }

    public void findInitsStupid(String name) throws Exception {
        //this func makes use of the fact that (almost) literally everything inherits CCNode :D
        FunctionIterator functionIterator = functionManager.getFunctions(true);

        while (functionIterator.hasNext()) {
            Function func = functionIterator.next();
            String functionName = func.getName();
            String namespace = func.getParentNamespace().getName();

            if(functionName.equals(name) && isFuncInit2(func)) {

                /*DataTypeManager dataTypeManager = currentProgram.getDataTypeManager();
                DataType dataType = dataTypeManager.getDataType(namespace);
                if(dataType != null) println(dataType.toString());
                
                if (dataType instanceof Structure) {
                    Structure struct = (Structure) dataType;
                    println("Struct found for namespace " + namespace);
                    println("Struct size: " + struct.getLength());
                } else {
                    println("No struct found for namespace " + namespace);
                }*/

                if(findFunction(namespace, "init") != null) {
                    //rob generally doesnt overload inits so this is most likely from some other class
                    continue;
                }

                //TODO: check if class inherits CCNode

                println("Init found: " + func.getName() + " : " + func.getEntryPoint() + " : " + func.getParentNamespace().getName());
                func.setName("init", SourceType.ANALYSIS);
            }
        }
    }

    public void findInits() throws Exception {
        FunctionIterator functionIterator = functionManager.getFunctions(true);

        while (functionIterator.hasNext()) {
            Function func = functionIterator.next();
            String functionName = func.getName();
            String namespace = func.getParentNamespace().getName();
            // Func is ctor
            if(functionName.equals("create")) {
                long size = func.getBody().getNumAddresses();
                if(size > 500) continue; //likely a ccdict create

                InstructionIterator instructionIterator = currentProgram.getListing().getInstructions(func.getBody(), true);
                //Function beforeLastFunction = null;
                Function lastFunction = null;
                Instruction lastInstruction = null;

                // Loop through each instruction
                while (instructionIterator.hasNext()) {
                    Instruction instruction = instructionIterator.next();

                    // Check if the instruction is a call instruction
                    if (instruction.getMnemonicString().equals("CALL")) {
                        // Get the called function address
                        Reference[] operandReferences = instruction.getOperandReferences(0);
                        if (operandReferences.length == 0) {
                            //println("No operand ref");
                            lastFunction = null;
                            continue; //virtual call
                        }

                        Address calledFunctionAddress = operandReferences[0].getToAddress();

                        if(calledFunctionAddress.equals(autoreleaseAddress) && lastFunction != null && isFuncInit(lastFunction)) /* autorelease */ {
                            if(!lastFunction.getParentNamespace().getName().equals("Global")) {
                                //already discovered init, this is uninteresting to us, could also be something else manually marked
                                break;
                            }

                            println("Init for: " + namespace + " : " + lastFunction.getName() + " : " + lastFunction.getEntryPoint());
                            lastFunction.setParentNamespace(func.getParentNamespace());
                            lastFunction.setName("init", SourceType.ANALYSIS);
                            //if(beforeLastFunction != null) println("before: " + beforeLastFunction.getName() + " : " + beforeLastFunction.getEntryPoint());
                        }

                        // Get the called function
                        Function calledFunction = functionManager.getFunctionAt(calledFunctionAddress);
                        if (calledFunction != null) {
                            //println("Called Function: " + calledFunction.getName());
                            //beforeLastFunction = lastFunction;
                            lastFunction = calledFunction;
                        } else {
                            lastFunction = null;
                            //println("Unknown Function at: " + calledFunctionAddress.toString());
                        }

                    } else {
                        //validation of whether its actually the init call or some inlined buddy
                        if(lastInstruction == null) continue;

                        //the flow for init is like this: CALL (init), MOV, TEST, JZ, CALL (autorelease)
                        //if this flow is broken, we set lastFunction to zero, so the block above thinks we havent found init
                        // (cuz we havent)
                        if(!(
                            (lastInstruction.getMnemonicString().equals("CALL") && instruction.getMnemonicString().equals("MOV"))
                            || (lastInstruction.getMnemonicString().equals("MOV") && instruction.getMnemonicString().equals("TEST"))
                            || (lastInstruction.getMnemonicString().equals("TEST") && instruction.getMnemonicString().equals("JZ"))
                        )) {
                            lastFunction = null;
                        }
                    }

                    lastInstruction = instruction;

                }

            }

        }
    }

}
