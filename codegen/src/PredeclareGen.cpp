#include "Shared.hpp"
#include <iostream>
#include <set>

namespace { namespace format_strings {
	constexpr char const* class_predeclare = "class {class_name};\n";
    constexpr char const* ns_class_predeclare = "namespace {namespace} {{ class {class_name}; }}\n";

    constexpr char const* todo_return_begin = R"GEN(
struct TodoReturnPlaceholder {
private:
    TodoReturnPlaceholder() = default;
    TodoReturnPlaceholder(TodoReturnPlaceholder const&) = default;
    TodoReturnPlaceholder(TodoReturnPlaceholder&&) = default;
    ~TodoReturnPlaceholder() = default;
public:
)GEN";

    constexpr char const* todo_return_end = R"GEN(
};
)GEN";

    constexpr char const* todo_return_friend = "    friend class {class_name};\n";
}}

std::string generatePredeclareHeader(Root const& root) {
    std::string output("#pragma once\n");

    for (auto& cls : root.classes) {
        if (is_cocos_class(cls.name))
            continue;

        auto ns_index = cls.name.rfind("::");
        if (ns_index == std::string::npos) {
            output += fmt::format(format_strings::class_predeclare,
                fmt::arg("class_name", cls.name)
            );
        } else {
            output += fmt::format(format_strings::ns_class_predeclare,
                fmt::arg("namespace", cls.name.substr(0, ns_index)),
                fmt::arg("class_name", cls.name.substr(ns_index + 2))
            );
        }
    }

    output += ::format_strings::todo_return_begin;

    for (auto& cls : root.classes) {
        if (is_cocos_class(cls.name))
            continue;

        output += fmt::format(::format_strings::todo_return_friend,
            fmt::arg("class_name", cls.name)
        );
    }

    output += ::format_strings::todo_return_end;

    return output;
}
