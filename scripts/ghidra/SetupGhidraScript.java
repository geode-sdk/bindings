// Set up Ghidra for Geometry Dash reverse engineering
// @author HJfod
// @category GeodeSDK

import java.io.FileReader;
import java.nio.file.Paths;
import java.util.Arrays;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.data.ArrayDataType;
import ghidra.program.model.data.ByteDataType;
import ghidra.program.model.data.CategoryPath;
import ghidra.program.model.data.CharDataType;
import ghidra.program.model.data.DataTypeConflictHandler;
import ghidra.program.model.data.FloatDataType;
import ghidra.program.model.data.FunctionDefinitionDataType;
import ghidra.program.model.data.IntegerDataType;
import ghidra.program.model.data.ParameterDefinition;
import ghidra.program.model.data.ParameterDefinitionImpl;
import ghidra.program.model.data.PointerDataType;
import ghidra.program.model.data.StructureDataType;
import ghidra.program.model.data.Undefined1DataType;
import ghidra.program.model.data.UnionDataType;
import ghidra.program.model.data.VoidDataType;

public class SetupGhidraScript extends GhidraScript {
    class Args extends InputParameters {
        Platform platform;
        boolean updateTypeDB;
        boolean createVTables;

        public Args(ScriptWrapper wrapper) throws Exception {
            this.run(wrapper);
        }

        @Override
        protected String title() {
            return "Setup GD Environment";
        }

        @Override
        protected String description() {
            return 
                "Defines a few common types like CCPoint & creates vtables (WIP) " + 
                "for all classes. This script is WIP, the vtable feature doesn't " + 
                "work yet!";
        }

        @Override
        protected void doAsk(Object... ignore) throws Exception {
            final var platforms = Arrays.asList(Platform.values()).stream().map(p -> p.getLongName()).toList();

            this.choice("Target platform", platforms, p -> this.platform = Platform.parse(p));
            this.bool("Set known types", b -> this.updateTypeDB = b);
            this.bool("Create VTables", b -> this.createVTables = b);
            
            this.waitForAnswers();
        }
    }

    ScriptWrapper wrapper;
    Args args;

    @Override
    protected void run() throws Exception {
        this.wrapper = new ScriptWrapper(this);
        this.args = new Args(wrapper);

        // Update type database with known types like `gd::string` and `CCPoint`
        if (this.args.updateTypeDB) {
            this.addKnownDataTypes();
        }

        // Create vtables from virtuals.json
        if (this.args.createVTables) {
            this.createVTables();
        }
    }

    void addKnownDataTypes() throws Exception {
        wrapper.printfmt("Updating type database...");

        final var manager = currentProgram.getDataTypeManager();

        // gd::string

        var stringDataUnion = new UnionDataType(new CategoryPath("/gd"), "string_data_union");
        stringDataUnion.add(new PointerDataType(new CharDataType()), 0x4, "ptr", "");
        stringDataUnion.add(new ArrayDataType(new CharDataType(), 0x10, 0x1), 0x10, "data", "SSO");

        var string = new StructureDataType(new CategoryPath("/gd"), "string", 0x0);
        string.add(stringDataUnion, 0x10, "data", "String data with SSO");
        string.add(new IntegerDataType(), 0x4, "length", "The length of the string without the terminating null byte");
        string.add(new IntegerDataType(), 0x4, "capacity", "The capacity of the string buffer");

        manager.addDataType(string, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::CCPoint

        var point = new StructureDataType(new CategoryPath("/cocos2d"), "CCPoint", 0x0);
        point.add(new FloatDataType(), 0x4, "x", "X position of the point");
        point.add(new FloatDataType(), 0x4, "y", "Y position of the point");
        manager.addDataType(point, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::CCSize

        var size = new StructureDataType(new CategoryPath("/cocos2d"), "CCSize", 0x0);
        size.add(new FloatDataType(), 0x4, "width", "Width of the size");
        size.add(new FloatDataType(), 0x4, "height", "Height of the size");
        manager.addDataType(size, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::CCRect

        var rect = new StructureDataType(new CategoryPath("/cocos2d"), "CCRect", 0x0);
        rect.add(new FloatDataType(), 0x4, "x", "X position of the rect");
        rect.add(new FloatDataType(), 0x4, "y", "Y position of the rect");
        rect.add(new FloatDataType(), 0x4, "width", "Width of the rect");
        rect.add(new FloatDataType(), 0x4, "height", "Height of the rect");
        manager.addDataType(rect, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::ccColor3B

        var color3B = new StructureDataType(new CategoryPath("/cocos2d"), "ccColor3B", 0x0);
        color3B.add(new ByteDataType(), 0x1, "r", "Red component");
        color3B.add(new ByteDataType(), 0x1, "g", "Green component");
        color3B.add(new ByteDataType(), 0x1, "b", "Blue component");
        color3B.add(new Undefined1DataType());
        manager.addDataType(color3B, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::ccColor4B

        var color4B = new StructureDataType(new CategoryPath("/cocos2d"), "ccColor4B", 0x0);
        color4B.add(new ByteDataType(), 0x1, "r", "Red component");
        color4B.add(new ByteDataType(), 0x1, "g", "Green component");
        color4B.add(new ByteDataType(), 0x1, "b", "Blue component");
        color4B.add(new ByteDataType(), 0x1, "a", "Alpha component");
        manager.addDataType(color4B, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::ccHSVValue

        var ccHSVValue = new StructureDataType(new CategoryPath("/cocos2d"), "ccHSVValue", 0x0);
        ccHSVValue.add(new FloatDataType(), 0x4, "h", "Hue");
        ccHSVValue.add(new FloatDataType(), 0x4, "s", "Saturation");
        ccHSVValue.add(new FloatDataType(), 0x4, "v", "Lightness");
        ccHSVValue.add(new ByteDataType(), 0x1, "saturationChecked", "");
        ccHSVValue.add(new ByteDataType(), 0x1, "brightnessChecked", "");
        ccHSVValue.add(new Undefined1DataType());
        ccHSVValue.add(new Undefined1DataType());
        manager.addDataType(ccHSVValue, DataTypeConflictHandler.REPLACE_HANDLER);

        // cocos2d::SEL_MenuHandler

        var menuHandlerSelector = new FunctionDefinitionDataType(new CategoryPath("/cocos2d"), "SEL_MenuHandler");
        menuHandlerSelector.setArguments(new ParameterDefinition[] {
            new ParameterDefinitionImpl(
                "this",
                wrapper.addOrGetType(Broma.Type.ptr(Broma.fake(), "cocos2d::CCObject")),
                "The target object for this callback"
            ),
            new ParameterDefinitionImpl(
                "sender",
                wrapper.addOrGetType(Broma.Type.ptr(Broma.fake(), "cocos2d::CCObject")),
                "The menu item that was activated to trigger this callback"
            ),
        });
        menuHandlerSelector.setReturnType(new VoidDataType());
        menuHandlerSelector.setCallingConvention("__thiscall");
        manager.addDataType(menuHandlerSelector, DataTypeConflictHandler.REPLACE_HANDLER);
    }

    void createVTables() throws Exception {
        final var manager = currentProgram.getDataTypeManager();

        wrapper.printfmt("Creating VTables...");

        final var jsonPath = Paths.get(wrapper.bindingsDir.toString(), "scripts", "virtuals.json");
        final var json = (JSONObject) new JSONParser().parse(new FileReader(jsonPath.toFile()));

        wrapper.printfmt("Creating function definitions...");
        for (var key : json.keySet()) {
            var tables = (JSONArray) json.get(key);
            for (var i = 0; i < tables.size(); i += 1) {
                var table = (JSONArray) tables.get(i);
                // var fun = 
                // unfinished because 2.205 dropped on android holy crap
            }
        }
    }
}
