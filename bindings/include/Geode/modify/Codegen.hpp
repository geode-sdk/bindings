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

#ifndef GEODE_BINDINGS_CONCAT
#define GEODE_BINDINGS_CONCAT_IMPL(x, y) x##y
#define GEODE_BINDINGS_CONCAT(x, y) GEODE_BINDINGS_CONCAT_IMPL(x, y)
#endif

#ifndef GEODE_DEFINE_ALIAS_HELPERS
#define GEODE_DEFINE_ALIAS_HELPERS(name) \
    auto& GEODE_BINDINGS_CONCAT(_get_member_, name)() { return name; } \
    void GEODE_BINDINGS_CONCAT(_set_member_, name)(decltype(name) _value_) { name = std::move(_value_); }
#endif

#ifndef __has_declspec_attribute
#define __has_declspec_attribute(x) 0
#endif

#ifndef GEODE_DEFINE_ALIAS
#if defined(_MSC_VER) || __has_declspec_attribute(property)
#define GEODE_DEFINE_ALIAS(canonical, alias) \
    __declspec(property(get = GEODE_BINDINGS_CONCAT(_get_member_, canonical), put = GEODE_BINDINGS_CONCAT(_set_member_, canonical))) \
    decltype(canonical) alias;
#else
#error Geode requires -fdeclspec for member aliases
#endif
#endif
