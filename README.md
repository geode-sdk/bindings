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

    // Remember to use fully qualified names for Cocos2d classes
    void onTrigger(cocos2d::CCObject*);

    // Some functions that are passed as callbacks have unpredictable calling 
    // conventions. Use the `callback` keyword if a function is __thiscall 
    // when it would otherwise be inferred as __membercall
    callback void unpredictable();

    // Add members like you would on a C++ class
    // Members are in the format m_camelCase
    int m_jumpCount;
    // Add pads for skipping members, platform dependant
    PAD = win 0x18, android32 0x4, android64 0x8;
    // Use std::array for C arrays
    std::array<float, 2000> m_lastYPositions;
}
```

We are mainly only looking for new addresses for the latest version of GD (Update 2.200). However, if you are interested in documenting older versions, we will also accept those in the interests of the wider modding community. Please put them in the appropriate subfolder under bindings.

