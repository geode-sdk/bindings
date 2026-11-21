#pragma once

// Defines macros used within codegen, as to not rely on
// macros defined in newer Geode versions

#ifndef GEODE_APPLY_MODIFY_FOR_FUNCTION_ERROR_UNHOOKABLE
#define GEODE_APPLY_MODIFY_FOR_FUNCTION_ERROR_UNHOOKABLE(ClassName_, FunctionName_, ...)                      \
    do {                                                                                                      \
        static auto constexpr different = Unique::different<                                                  \
            Resolve<__VA_ARGS__>::func(&Base::FunctionName_),                                                 \
            Resolve<__VA_ARGS__>::func(&Derived::FunctionName_)                                               \
        >();                                                                                                  \
        static_assert(!different,                                                                             \
            "Function " #ClassName_ "::" #FunctionName_ " has been declared unhookable on this platform"      \
        );                                                                                                    \
    } while (0);
#endif