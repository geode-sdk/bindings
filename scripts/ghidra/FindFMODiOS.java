// Automatically find almost all FMOD functions in iOS GD
// @author TheSillyDoggo
// @category GeodeSDK

import ghidra.app.script.GhidraScript;
import ghidra.program.model.sourcemap.*;
import ghidra.program.model.lang.protorules.*;
import ghidra.program.model.mem.*;
import ghidra.program.model.lang.*;
import ghidra.program.model.pcode.*;
import ghidra.program.model.data.ISF.*;
import ghidra.program.model.gclass.*;
import ghidra.program.model.util.*;
import ghidra.program.model.reloc.*;
import ghidra.program.model.data.*;
import ghidra.program.model.block.*;
import ghidra.program.model.symbol.*;
import ghidra.program.model.scalar.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Data;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.ReferenceManager;
import ghidra.program.util.DefinedDataIterator;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Data;
import ghidra.program.util.DefinedStringIterator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class FindFMODiOS extends GhidraScript {

    public void run() throws Exception {
        // every fmod class to look for
        String[] targetClasses = { "System::", "Channel::", "ChannelGroup::", "ChannelControl::", "DSP::", "DSPConnection::", "Geometry::", "Reverb3D::", "Sound::", "SoundGroup::" };
        
        DefinedStringIterator stringIter = DefinedStringIterator.forProgram(currentProgram);
        ReferenceManager refMgr = currentProgram.getReferenceManager();
        FunctionManager funcMgr = currentProgram.getFunctionManager();
        SymbolTable symTbl = currentProgram.getSymbolTable();
        ScriptWrapper wrapper = new ScriptWrapper(this);
        
        while (stringIter.hasNext() && !monitor.isCancelled()) {
            Data data = stringIter.next();
            String value = (String) data.getValue();

            for (String target : targetClasses) {
                if (value.startsWith(target)) {
                    ReferenceIterator refs = refMgr.getReferencesTo(data.getMinAddress());

                    Function callingFunc = null;
                    boolean moreThanOne = false;
                    while (refs.hasNext()) {
                        Reference ref = refs.next();
                        
                        if (callingFunc != null || moreThanOne == true) {
                            callingFunc = null;
                            moreThanOne = true;
                            break;
                        }

                        callingFunc = funcMgr.getFunctionContaining(ref.getFromAddress());
                    }

                    if (moreThanOne) {
                        println("More than one reference to '" + value + "' - skipping!");
                        break;
                    }

                    String[] parts = value.split("::");
                    if (parts.length != 2) {
                        println("'" + value + "' is not in the format 'Class::Func' (" + parts.length + ")");
                        break;
                    }

                    if (callingFunc == null) {
                        println("No reference functions to '" + value + "'");
                        break;
                    }

                    println("Found '" + ("FMOD::" + value) + "' at '" + callingFunc.getEntryPoint().toString(false, false) + "'");

                    callingFunc.setParentNamespace(wrapper.addOrGetNamespace("FMOD::" + parts[0]));
                    callingFunc.getSymbol().setName(parts[1], SourceType.USER_DEFINED);

                    break;
                }
            }
        }
    }

}
