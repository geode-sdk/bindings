# Bindings

Addresses and bindings for Geometry Dash, for use with the Geode mod loader.

## Contributing

You can contribute new addresses / fields by opening up a [Pull Request](https://github.com/geode-sdk/bindings/pull).

The syntax of a binding is a simplified version of C++:
```cpp
// Platforms you can link directly to the symbol on, so win for Cocos2d on 
// Windows and android for everything on Android
[[link(android)]]
class Example : Base1, Base2 {
    /// Documentation for this binding. Uses Flash-compatible JSDoc
    /// @param param This param does things
    /// @param other This controls how the other param acts
    /// @returns A number depicting what it did
    int binding(float param, bool other) = win 0x123456, mac 0x789012;

    // If the binding is inlined on some platform, provide a reconstructed 
    // definition for it
    void inlined(bool x) {
        if (x) {
            // Do stuff
        }
    }

    // Statics and virtuals are as you'd expect
    static void example() = win 0x654321;

    // Remember that the order of virtual functions matters!
    virtual void virtFunc();
    virtual bool init() = win 0x123;

    // Remember to use fully qualified names for Cocos2d classes
    void onTrigger(cocos2d::CCObject*);

    // Some functions that are passed as callbacks have unpredictable calling 
    // conventions. Use the `callback` keyword if a function is __thiscall 
    // when it would otherwise be inferred as __membercall
    callback void unpredictable(float);

    // Add members like you would on a C++ class
    // Members are in the format m_camelCase
    int m_jumpCount;
    // Add pads for skipping members, platform dependant
    PAD = win 0x18, android32 0x4, android64 0x8;
    // Use std::array for C arrays
    std::array<float, 2000> m_lastYPositions;
}
```

We are mainly only looking for new addresses for the latest version of GD (Update 2.204 for Windows, 2.205 for Android, 2.200 for MacOS). However, if you are interested in documenting older versions, we will also accept those in the interests of the wider modding community. Please put them in the appropriate subfolder under bindings.

## SyncBromaScript

You can automatically sync addresses from-and-to Broma using the [`SyncBromaScript`](scripts/ghidra/SyncBromaScript.java) script for Ghidra. This script automatically pulls function names, signatures & addresses from Broma, adds them to your Ghidra project, and then adds any addresses you have found back into the Broma.

**To install SyncBromaScript**, open up the `Script Manager` in Ghidra, then select `Manage Script Directories` from the top right toolbar. Add the path to the `scripts` directory in your local copy of Bindings, then refresh your scripts in `Script Manager`. You should see a `GeodeSDK` category appear with `SyncBromaScript.java` in it

**Before running SyncBromaScript**, you should set up your Ghidra to be a good scripting environment by running the built-in `RecoverClassesFromRttiScript.java` from Ghidra, as well as `SetupGhidraScript.java` from this repository. Note that `RecoverClassesFromRttiScript.java` can take over half an hour to finish.

**To run SyncBromaScript**, open up the `Script Manager` in Ghidra and then double-click it to run the script. It should present you with a popup window of options.

### SyncBromaScript options

| Option | Description |
| ------ | ----------- |
| Target platform | The platform whose bindings to merge from/to. |
| Broma File | The Broma file to merge from/to. This only matters on Windows, where the Cocos2d and GD binaries are separate; on other platforms where everything is in one binary, both `Cocos2d.bro` and `GeometryDash.bro` are automatically always included. |
| Game version | The version of GD you have open in Ghidra, with which you want to merge bindings. Only options that have a bindings directory are shown. |
| Import from Broma | Import function signatures & addresses from Broma into Ghidra. This assumes that Broma is always correct for everything; if there is a signature mismatch, or an incorrect address in Broma, you will have to manually edit the Broma file to fix the conflict. |
| Export to Broma | Export function addresses, parameter names, and return types from Ghidra into Broma. Signatures are not exported; Broma is always used as the source of truth for function signatures. |
| Set optcall & membercall | This option only matters on Windows; automatically corrects the calling convention for functions that use the optimized `__fastcall` / `__thiscall` conventions. This will only set the custom convention for functions where it makes a difference; also, if the signature of the function changes, you will need to rerun the script to have it correct the calling convention again. |
