#include "Shared.hpp"

namespace { namespace format_strings {
    constexpr char const* source_start = R"GEN(#include <Geode/Geode.hpp>
{definitions}
#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS){ios_win_definitions}#endif

#if defined(GEODE_IS_WINDOWS){windows_definitions}#endif

#if defined(GEODE_IS_IOS){ios_definitions}#endif

)GEN";
    
	constexpr char const* ool_function_definition = R"GEN(
{return} {class_name}::{function_name}({parameters}){const} {definition}
)GEN";

	constexpr char const* void_ool_function_definition = R"GEN(
{return} {class_name}::{function_name}({parameters}){const} {definition}
)GEN";

	constexpr char const* ool_structor_function_definition = R"GEN(
{class_name}::{function_name}({parameters}){const} {definition}
)GEN";
}}

std::string generateInlineSources(Root const& root, std::filesystem::path const& singleFolder, std::unordered_set<std::string>* generatedFiles) {
	for (auto& c : root.classes) {
		if (c.name.starts_with("pugi::")) {
			continue;
        }
        std::string filename = (codegen::getUnqualifiedClassName(c.name) + ".cpp");

        if (generatedFiles != nullptr) {
            generatedFiles->insert(filename);
        }

        std::string winOut, iosOut, iosWinOut, out;

		for (auto& f : c.fields) {
			if (auto fn = f.get_as<FunctionBindField>()) {
                char const* usedFormat = nullptr;
                if (
                    codegen::getStatusWithPlatform(Platform::Windows, *fn) != BindStatus::Inlined && 
                    codegen::getStatusWithPlatform(Platform::iOS, *fn) != BindStatus::Inlined
                ) continue;

                switch (fn->prototype.type) {
                    case FunctionType::Ctor:
                    case FunctionType::Dtor:
                        usedFormat = format_strings::ool_structor_function_definition;
                        break;
                    default:
                        if (fn->prototype.ret.name == "void") usedFormat = format_strings::void_ool_function_definition;
                        else usedFormat = format_strings::ool_function_definition;
                        break;
                }

                std::string* usedOut = &winOut;
                if (codegen::getStatusWithPlatform(Platform::iOS, *fn) == BindStatus::Inlined) {
                    if (codegen::getStatusWithPlatform(Platform::Windows, *fn) == BindStatus::Inlined) {
                        if (codegen::getStatusWithPlatform(Platform::MacIntel, *fn) == BindStatus::Inlined) {
                            usedOut = &out;
                        } else {
                            usedOut = &iosWinOut;
                        }
                    } else {
                        usedOut = &iosOut;
                    }
                }

                *usedOut += fmt::format(fmt::runtime(usedFormat),
                    fmt::arg("function_name", fn->prototype.name),
                    fmt::arg("const", str_if(" const ", fn->prototype.is_const)),
                    fmt::arg("class_name", c.name),
                    fmt::arg("parameters", codegen::getParameters(fn->prototype)),
                    fmt::arg("definition", fn->inner),
                    fmt::arg("return", fn->prototype.ret.name)
                );
			}
		}

        //replace every "\n    " with "\n"
        for (auto& str : { &out, &winOut, &iosOut, &iosWinOut }) {
            size_t pos = 0;
            while ((pos = str->find("\n    ", pos)) != std::string::npos) {
                str->replace(pos, 5, "\n");
                pos += 1;
            }
            if (str->size() == 0) *str = "\n";
        }

        auto single_output = fmt::format(format_strings::source_start,
            fmt::arg("class_name", codegen::getUnqualifiedClassName(c.name)),
            fmt::arg("definitions", out),
            fmt::arg("windows_definitions", winOut),
            fmt::arg("ios_definitions", iosOut),
            fmt::arg("ios_win_definitions", iosWinOut)
        );

        writeFile(singleFolder / filename, single_output);
	}
	return "";
}
