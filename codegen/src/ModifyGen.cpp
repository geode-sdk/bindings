#include "Shared.hpp"

#include <iostream>
#include <set>

namespace {
    namespace format_strings {
        // requires: class_name, class_include
        constexpr char const* modify_start = R"GEN(#pragma once
#include <Geode/modify/Modify.hpp>
#include <Geode/modify/Field.hpp>
{class_include}
using namespace geode::modifier;
namespace geode::modifier {{
    {statics}
    {concepts}

	template<class Der>
	struct ModifyDerive<Der, {class_name}> : ModifyBase<ModifyDerive<Der, {class_name}>> {{
        using BaseModify = ModifyBase<ModifyDerive<Der, {class_name}>>;
		using ModifyBase<ModifyDerive<Der, {class_name}>>::ModifyBase;
		using Base = {class_name};
        using Derived = Der;
		void apply() override {{
)GEN";

        constexpr char const* statics_declare_identifier = R"GEN(
	#ifndef GEODE_STATICS_{function_name}
		#define GEODE_STATICS_{function_name}
		GEODE_AS_STATIC_FUNCTION({function_name}) 
	#endif
)GEN";

        char const* concepts_declare_identifier = R"GEN(
	#ifndef GEODE_CONCEPT_CHECK_{function_name}
		#define GEODE_CONCEPT_CHECK_{function_name}
		GEODE_CONCEPT_FUNCTION_CHECK({function_name}) 
	#endif
)GEN";

        // requires: index, class_name, arg_types, function_name, raw_arg_types, non_virtual
        constexpr char const* apply_function = R"GEN(
			GEODE_APPLY_MODIFY_FOR_FUNCTION({address_inline}, {function_convention}, {class_name}, {function_name}, {parameter_types}))GEN";

        constexpr char const* apply_constructor = R"GEN(
			GEODE_APPLY_MODIFY_FOR_CONSTRUCTOR({address_inline}, {function_convention}, {class_name}, {parameter_types}))GEN";

        constexpr char const* apply_destructor = R"GEN(
			GEODE_APPLY_MODIFY_FOR_DESTRUCTOR({address_inline}, {function_convention}, {class_name}))GEN";

        constexpr char const* apply_error = R"GEN(
			GEODE_APPLY_MODIFY_FOR_FUNCTION_ERROR({class_name}, {function_name}, {comma_parameter_types}))GEN";

        constexpr char const* apply_error_inline = R"GEN(
			GEODE_APPLY_MODIFY_FOR_FUNCTION_ERROR_INLINE({class_name}, {function_name}, {parameter_types}))GEN";

        constexpr char const* apply_error_defined = R"GEN(
            GEODE_APPLY_MODIFY_FOR_FUNCTION_ERROR_DEFINED({class_name}, {function_name}, {parameter_types}))GEN";

        constexpr char const* modify_end = R"GEN(
		}
	};
}
)GEN";

        constexpr char const* modify_include = R"GEN(#include "{base_directory}/{file_name}"
)GEN";
    }
}

std::string generateModifyHeader(Root const& root, ghc::filesystem::path const& singleFolder, std::unordered_set<std::string>* generatedFiles) {
    std::string output;
    std::string base_directory = singleFolder.filename().string();

    for (auto& c : root.classes) {        
        if (c.name == "cocos2d") continue;

        std::string filename = (codegen::getUnqualifiedClassName(c.name) + ".hpp");
        output += fmt::format(
            format_strings::modify_include,
            fmt::arg("file_name", filename),
            fmt::arg("base_directory", base_directory)
        );
        if (generatedFiles != nullptr) {
            generatedFiles->insert(filename);
        }

        std::string single_output;

        std::string class_include;

        if (c.name.find("cocos2d::extension") != std::string::npos) {
            class_include = "#include <cocos-ext.h>";
        }
        else if (is_cocos_class(c.name)) {
            class_include = "#include <cocos2d.h>";
        }
        else {
            class_include = fmt::format(
                "#include <Geode/binding/{class_name}.hpp>",
                fmt::arg("class_name", codegen::getUnqualifiedClassName(c.name))
            );
        }

        std::string statics;
        std::string concepts;
        std::set<std::string> staticsUsed;
        std::set<std::string> conceptsUsed;
        for (auto& f : c.fields) {
            if (auto fn = f.get_as<FunctionBindField>()) {
                auto status = codegen::getStatus(*fn);
                if (fn->prototype.type == FunctionType::Normal) {
                    if (status != BindStatus::Missing && status != BindStatus::Inlined && !staticsUsed.count(fn->prototype.name)) {
                        staticsUsed.insert(fn->prototype.name);
                        statics += fmt::format(
                            format_strings::statics_declare_identifier, fmt::arg("function_name", fn->prototype.name)
                        );
                    }
                    if (!conceptsUsed.count(fn->prototype.name)) {
                        conceptsUsed.insert(fn->prototype.name);
                        concepts += fmt::format(
                            format_strings::concepts_declare_identifier, fmt::arg("function_name", fn->prototype.name)
                        );
                    }
                }
            }
        }

        single_output += fmt::format(
            format_strings::modify_start,
            fmt::arg("statics", statics),
            fmt::arg("concepts", concepts),
            fmt::arg("class_name", c.name),
            fmt::arg("class_include", class_include)
        );

        // modify
        for (auto& f : c.fields) {
            auto fn = f.get_as<FunctionBindField>();

            if (!fn)
                continue;

            auto status = codegen::getStatus(*fn);

            std::string format_string;
            if (status == BindStatus::Missing) {
                format_string = format_strings::apply_error;
            }
            else if (status == BindStatus::Unbindable && fn->prototype.type == FunctionType::Normal) {
                if (is_cocos_class(c.name)) {
                    format_string = format_strings::apply_error_defined;
                }
                else {
                    format_string = format_strings::apply_error;
                }
            }
            else if (status == BindStatus::Inlined && fn->prototype.type == FunctionType::Normal || codegen::platformNumber(fn->binds) == 0x9999999) {
                format_string = format_strings::apply_error_inline;
            }
            else if ((status == BindStatus::NeedsBinding && codegen::platformNumber(f) > 0) || status == BindStatus::Binded) {
                // only if has an address
                // allow bound functions (including ctors/dtors)
                switch (fn->prototype.type) {
                    case FunctionType::Normal:
                        format_string = format_strings::apply_function;
                        break;
                    case FunctionType::Ctor:
                        format_string = format_strings::apply_constructor;
                        break;
                    case FunctionType::Dtor:
                        format_string = format_strings::apply_destructor;
                        break;
                }
            }
            else if (fn->prototype.type == FunctionType::Normal) {
                if (is_cocos_class(c.name)) {
                    format_string = format_strings::apply_error_defined;
                }
                else {
                    format_string = format_strings::apply_error;
                }
            }
            else {
                continue;
            }

            auto parameter_types = codegen::getParameterTypes(fn->prototype);
            single_output += fmt::format(
                format_string,
                fmt::arg("address_inline", codegen::getAddressString(c, f)),
                fmt::arg("class_name", c.name),
                fmt::arg("function_name", fn->prototype.name),
                fmt::arg("function_convention", codegen::getModifyConventionName(f)),
                fmt::arg("parameter_types", parameter_types),
                fmt::arg("comma_parameter_types", parameter_types.empty() ? "" : ", " + parameter_types)
            );
        }

        single_output += format_strings::modify_end;

        writeFile(singleFolder / filename, single_output);
    }

    return output;
}
