#include "Shared.hpp"

namespace { namespace format_strings {
	constexpr char const* source_start = R"GEN(
#include <stdexcept>
#include <Geode/Bindings.hpp>
#include <Geode/utils/addresser.hpp>
#include <Geode/modify/Traits.hpp>
#include <Geode/loader/Tulip.hpp>
{includes}
using namespace geode;
using namespace geode::modifier;

#if !defined(GEODE_WRAP_FUNCTION)
#define GEODE_WRAP_FUNCTION
template <class F>
static auto wrapFunction(uintptr_t address, tulip::hook::TulipConvention convention) {{
	auto wrapped = geode::hook::createWrapper(reinterpret_cast<void*>(address), tulip::hook::WrapperMetadata{{
		.m_convention = geode::hook::createConvention(convention),
		.m_abstract = tulip::hook::AbstractFunction::from(F(nullptr)),
	}});
	if (wrapped.isErr()) {{
		throw std::runtime_error(wrapped.unwrapErr());
	}}
	return wrapped.unwrap();
}}
#endif
)GEN";

	constexpr char const* declare_member = R"GEN(
auto {class_name}::{function_name}({parameters}){const} -> decltype({function_name}({arguments})) {{
	using FunctionType = decltype({function_name}({arguments}))(*)({class_name}{const}*{parameter_comma}{parameter_types});
	static auto func = wrapFunction<FunctionType>({address_inline}, tulip::hook::TulipConvention::{convention});
	return reinterpret_cast<FunctionType>(func)(this{parameter_comma}{arguments});
}}
)GEN";

	constexpr char const* declare_virtual = R"GEN(
auto {class_name}::{function_name}({parameters}){const} -> decltype({function_name}({arguments})) {{
	auto self = addresser::thunkAdjust(Resolve<{parameter_types}>::func(&{class_name}::{function_name}), this);
	using FunctionType = decltype({function_name}({arguments}))(*)({class_name}{const}*{parameter_comma}{parameter_types});
	static auto func = wrapFunction<FunctionType>({address_inline}, tulip::hook::TulipConvention::{convention});
	return reinterpret_cast<FunctionType>(func)(self{parameter_comma}{arguments});
}}
)GEN";

	constexpr char const* declare_static = R"GEN(
auto {class_name}::{function_name}({parameters}){const} -> decltype({function_name}({arguments})) {{
	using FunctionType = decltype({function_name}({arguments}))(*)({parameter_types});
	static auto func = wrapFunction<FunctionType>({address_inline}, tulip::hook::TulipConvention::{convention});
	return reinterpret_cast<FunctionType>(func)({arguments});
}}
)GEN";

	constexpr char const* declare_destructor = R"GEN(
{class_name}::{function_name}({parameters}) {{
	// basically we destruct it once by calling the gd function,
	// then lock it, so that other gd destructors dont get called
	if (!geode::DestructorLock::isLocked(this)) {{
		using FunctionType = void(*)({class_name}*{parameter_comma}{parameter_types});
		static auto func = wrapFunction<FunctionType>({address_inline}, tulip::hook::TulipConvention::{convention});
		reinterpret_cast<FunctionType>(func)(this{parameter_comma}{arguments});

		// we need to construct it back so that it uhhh ummm doesnt crash
		// while going to the child destructors
		auto thing = new (this) {class_name}(geode::CutoffConstructor, sizeof({class_name}));
		geode::DestructorLock::addLock(this);
	}}
}}
)GEN";

	constexpr char const* declare_destructor_baseless = R"GEN(
{class_name}::{function_name}({parameters}) {{
	// basically we destruct it once by calling the gd function,
	// then we release the lock because there are no other destructors after this
	if (!geode::DestructorLock::isLocked(this)) {{
		using FunctionType = void(*)({class_name}*{parameter_comma}{parameter_types});
		static auto func = wrapFunction<FunctionType>({address_inline}, tulip::hook::TulipConvention::{convention});
		reinterpret_cast<FunctionType>(func)(this{parameter_comma}{arguments});
	}}
	else {{
		geode::DestructorLock::removeLock(this);
	}}
}}
)GEN";

	constexpr char const* declare_constructor = R"GEN(
{class_name}::{function_name}({parameters}) : {class_name}(geode::CutoffConstructor, sizeof({class_name})) {{
	// here we construct it as normal as we can, then destruct it
	// using the generated functions. this ensures no memory gets leaked
	// no crashes :pray:
	geode::DestructorLock::addLock(this);
	{class_name}::~{unqualified_class_name}();

	using FunctionType = void(*)({class_name}*{parameter_comma}{parameter_types});
	static auto func = wrapFunction<FunctionType>({address_inline}, tulip::hook::TulipConvention::{convention});
	reinterpret_cast<FunctionType>(func)(this{parameter_comma}{arguments});
}}
)GEN";

	constexpr char const* declare_constructor_begin = R"GEN(
{class_name}::{function_name}({parameters}) {{
	using FunctionType = void(*)({class_name}*{parameter_comma}{parameter_types});
	static auto func = wrapFunction<FunctionType>({address_inline}, tulip::hook::TulipConvention::{convention});
	reinterpret_cast<FunctionType>(func)(this{parameter_comma}{arguments});
}}
)GEN";

	constexpr char const* declare_unimplemented_error = R"GEN(
auto {class_name}::{function_name}({parameters}){const} -> decltype({function_name}({arguments})) {{
	throw std::runtime_error("{class_name}::{function_name} not implemented");
}}
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

	constexpr char const* declare_standalone = R"GEN(
{return} {function_name}({parameters}) {{
	using FunctionType = decltype({function_name}({arguments}))(*)({parameter_types});
	static auto func = wrapFunction<FunctionType>({address_inline}, tulip::hook::TulipConvention::{convention});
	return reinterpret_cast<FunctionType>(func)({arguments});
}}
)GEN";

	constexpr char const* declare_standalone_definition = R"GEN(
{return} {function_name}({parameters}) {definition}
)GEN";
}}

bool areSuperclassesEmpty(Class const& c) {
	return c.superclasses.empty() || (c.superclasses.size() == 1 && c.superclasses[0].find("CCCopying") != std::string::npos);
}

std::string generateBindingSource(Root const& root, std::filesystem::path const& singleFolder, bool skipPugixml, bool skipInlines, std::unordered_set<std::string>* generatedFiles) {
	std::string output = fmt::format(format_strings::source_start,
		fmt::arg("includes", codegen::getIncludes(root))
	);

	for (auto& f : root.functions) {
        if (codegen::getStatus(f) != BindStatus::NeedsBinding) {
			if (codegen::getStatus(f) == BindStatus::Inlined) {
				output += fmt::format(format_strings::declare_standalone_definition,
					fmt::arg("return", f.prototype.ret.name),
					fmt::arg("function_name", f.prototype.name),
					fmt::arg("parameters", codegen::getParameters(f.prototype)),
					fmt::arg("definition", f.inner)
				);
			}
            continue;
        }

		output += fmt::format(format_strings::declare_standalone,
			fmt::arg("return", f.prototype.ret.name),
			fmt::arg("convention", codegen::getModifyConventionName(f)),
			fmt::arg("function_name", f.prototype.name),
			fmt::arg("address_inline", codegen::getAddressString(f)),
			fmt::arg("parameters", codegen::getParameters(f.prototype)),
			fmt::arg("parameter_types", codegen::getParameterTypes(f.prototype)),
			fmt::arg("arguments", codegen::getParameterNames(f.prototype)),
			fmt::arg("parameter_comma", str_if(", ", !f.prototype.args.empty()))
		);
    }

	for (auto& c : root.classes) {
		if (skipPugixml) {
			if (c.name.starts_with("pugi::")) {
				continue;
			}
		}
		std::string output = fmt::format(format_strings::source_start,
			fmt::arg("includes", codegen::getIncludes(root))
		);

		std::string filename = (codegen::getUnqualifiedClassName(c.name) + ".cpp");

        if (generatedFiles != nullptr) {
            generatedFiles->insert(filename);
        }

		for (auto& f : c.fields) {
			if (auto i = f.get_as<InlineField>()) {
				// yeah there are no inlines on cocos
			} else if (auto fn = f.get_as<FunctionBindField>()) {
				if (codegen::getStatus(*fn) == BindStatus::Inlined) {
					if (skipInlines) {
						continue;
					}
					switch (fn->prototype.type) {
						case FunctionType::Ctor:
						case FunctionType::Dtor:
							output += fmt::format(format_strings::ool_structor_function_definition,
								fmt::arg("function_name", fn->prototype.name),
								fmt::arg("const", str_if(" const ", fn->prototype.is_const)),
								fmt::arg("class_name", c.name),
													fmt::arg("parameters", codegen::getParameters(fn->prototype)),
								fmt::arg("definition", fn->inner)
							);
							break;
						default:
							{
								if (fn->prototype.ret.name == "void") {
									output += fmt::format(format_strings::void_ool_function_definition,
										fmt::arg("function_name", fn->prototype.name),
										fmt::arg("const", str_if(" const ", fn->prototype.is_const)),
										fmt::arg("class_name", c.name),
										fmt::arg("parameters", codegen::getParameters(fn->prototype)),
										fmt::arg("definition", fn->inner),
										fmt::arg("return", fn->prototype.ret.name)
									);
								} else {
									output += fmt::format(format_strings::ool_function_definition,
										fmt::arg("function_name", fn->prototype.name),
										fmt::arg("const", str_if(" const ", fn->prototype.is_const)),
										fmt::arg("class_name", c.name),
										fmt::arg("parameters", codegen::getParameters(fn->prototype)),
										fmt::arg("definition", fn->inner),
										fmt::arg("return", fn->prototype.ret.name)
									);
								}
							}
							break;
					}
				} else if (codegen::getStatus(*fn) != BindStatus::Unbindable || codegen::platformNumber(fn->binds) != -1) {
					char const* used_declare_format = nullptr;

					if (codegen::platformNumber(fn->binds) == 0x9999999) {
						used_declare_format = format_strings::declare_unimplemented_error;
					}
					else if (codegen::getStatus(*fn) != BindStatus::NeedsBinding && codegen::getStatus(*fn) != BindStatus::NeedsRebinding) {
						continue;
					}

					if (!used_declare_format) {
						switch (fn->prototype.type) {
							case FunctionType::Normal:
								used_declare_format = format_strings::declare_member;
								break;
							case FunctionType::Ctor:
								if (areSuperclassesEmpty(c)) {
									used_declare_format = format_strings::declare_constructor_begin;
								}
								else {
									used_declare_format = format_strings::declare_constructor;
								}
								break;
							case FunctionType::Dtor:
								used_declare_format = areSuperclassesEmpty(c) ? format_strings::declare_destructor_baseless : format_strings::declare_destructor;
								break;
						}

						if (fn->prototype.is_static)
							used_declare_format = format_strings::declare_static;
						if (fn->prototype.is_virtual && fn->prototype.type != FunctionType::Dtor)
							used_declare_format = format_strings::declare_virtual;
					}

					output += fmt::format(fmt::runtime(used_declare_format),
						fmt::arg("class_name", c.name),
						fmt::arg("unqualified_class_name", codegen::getUnqualifiedClassName(c.name)),
						fmt::arg("const", str_if(" const ", fn->prototype.is_const)),
						fmt::arg("convention", codegen::getModifyConventionName(f)),
						fmt::arg("function_name", fn->prototype.name),
						fmt::arg("address_inline", codegen::getAddressString(c, f)),
						fmt::arg("parameters", codegen::getParameters(fn->prototype)),
						fmt::arg("parameter_types", codegen::getParameterTypes(fn->prototype)),
						fmt::arg("arguments", codegen::getParameterNames(fn->prototype)),
						fmt::arg("parameter_comma", str_if(", ", !fn->prototype.args.empty()))
					);
				}
			}
		}

		writeFile(singleFolder / filename, output);
	}
	return output;
}
