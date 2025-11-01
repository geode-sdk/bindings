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

#ifndef GEODE_USE_NEW_DESTRUCTOR_LOCK
std::unordered_map<void*, bool>& cocos2d::CCDestructor::destructorLock() {{
	static thread_local std::unordered_map<void*, bool> s_lock;
	return s_lock;
}}

bool& cocos2d::CCDestructor::globalLock() {{
	static thread_local bool ret = false;
	return ret; 
}}

bool& cocos2d::CCDestructor::lock(void* self) {{
	return destructorLock()[self];
}}

cocos2d::CCDestructor::~CCDestructor() {{
	destructorLock().erase(this);
}}
#endif

auto wrapFunction(uintptr_t address, tulip::hook::WrapperMetadata const& metadata) {{
	auto wrapped = geode::hook::createWrapper(reinterpret_cast<void*>(address), metadata);
	if (wrapped.isErr()) {{
		throw std::runtime_error(wrapped.unwrapErr());
	}}
	return wrapped.unwrap();
}}
)GEN";

	constexpr char const* declare_member = R"GEN(
auto {class_name}::{function_name}({parameters}){const} -> decltype({function_name}({arguments})) {{
	using FunctionType = decltype({function_name}({arguments}))(*)({class_name}{const}*{parameter_comma}{parameter_types});
	static auto func = wrapFunction({address_inline}, tulip::hook::WrapperMetadata{{
		.m_convention = geode::hook::createConvention(tulip::hook::TulipConvention::{convention}),
		.m_abstract = tulip::hook::AbstractFunction::from(FunctionType(nullptr)),
	}});
	return reinterpret_cast<FunctionType>(func)(this{parameter_comma}{arguments});
}}
)GEN";

	constexpr char const* declare_virtual = R"GEN(
auto {class_name}::{function_name}({parameters}){const} -> decltype({function_name}({arguments})) {{
	auto self = addresser::thunkAdjust(Resolve<{parameter_types}>::func(&{class_name}::{function_name}), this);
	using FunctionType = decltype({function_name}({arguments}))(*)({class_name}{const}*{parameter_comma}{parameter_types});
	static auto func = wrapFunction({address_inline}, tulip::hook::WrapperMetadata{{
		.m_convention = geode::hook::createConvention(tulip::hook::TulipConvention::{convention}),
		.m_abstract = tulip::hook::AbstractFunction::from(FunctionType(nullptr)),
	}});
	return reinterpret_cast<FunctionType>(func)(self{parameter_comma}{arguments});
}}
)GEN";

	constexpr char const* declare_static = R"GEN(
auto {class_name}::{function_name}({parameters}){const} -> decltype({function_name}({arguments})) {{
	using FunctionType = decltype({function_name}({arguments}))(*)({parameter_types});
	static auto func = wrapFunction({address_inline}, tulip::hook::WrapperMetadata{{
		.m_convention = geode::hook::createConvention(tulip::hook::TulipConvention::{convention}),
		.m_abstract = tulip::hook::AbstractFunction::from(FunctionType(nullptr)),
	}});
	return reinterpret_cast<FunctionType>(func)({arguments});
}}
)GEN";

	constexpr char const* declare_destructor = R"GEN(
{destructor_hack_begin}
{class_name}::{function_name}({parameters}) {{
	// basically we destruct it once by calling the gd function, 
	// then lock it, so that other gd destructors dont get called
#ifdef GEODE_USE_NEW_DESTRUCTOR_LOCK
	if (!geode::DestructorLock::isLocked(this)) {{
#else
	if (!cocos2d::CCDestructor::lock(this)) {{
#endif
		using FunctionType = void(*)({class_name}*{parameter_comma}{parameter_types});
		static auto func = wrapFunction({address_inline}, tulip::hook::WrapperMetadata{{
			.m_convention = geode::hook::createConvention(tulip::hook::TulipConvention::{convention}),
			.m_abstract = tulip::hook::AbstractFunction::from(FunctionType(nullptr)),
		}});
		reinterpret_cast<FunctionType>(func)(this{parameter_comma}{arguments});

		// we need to construct it back so that it uhhh ummm doesnt crash
		// while going to the child destructors
		auto thing = new (this) {class_name}(geode::CutoffConstructor, sizeof({class_name}));
#ifdef GEODE_USE_NEW_DESTRUCTOR_LOCK
		geode::DestructorLock::addLock(this);
#else
		cocos2d::CCDestructor::lock(this) = true;
#endif
	}}
}}
{destructor_hack_end}
)GEN";

	constexpr char const* declare_destructor_baseless = R"GEN(
{destructor_hack_begin}
{class_name}::{function_name}({parameters}) {{
	// basically we destruct it once by calling the gd function, 
	// then we release the lock because there are no other destructors after this
#ifdef GEODE_USE_NEW_DESTRUCTOR_LOCK
	if (!geode::DestructorLock::isLocked(this)) {{
#else
	if (!cocos2d::CCDestructor::lock(this)) {{
#endif
		using FunctionType = void(*)({class_name}*{parameter_comma}{parameter_types});
		static auto func = wrapFunction({address_inline}, tulip::hook::WrapperMetadata{{
			.m_convention = geode::hook::createConvention(tulip::hook::TulipConvention::{convention}),
			.m_abstract = tulip::hook::AbstractFunction::from(FunctionType(nullptr)),
		}});
		reinterpret_cast<FunctionType>(func)(this{parameter_comma}{arguments});
	}}
	else {{
#ifdef GEODE_USE_NEW_DESTRUCTOR_LOCK
		geode::DestructorLock::removeLock(this);
#else
		cocos2d::CCDestructor::lock(this) = false;
#endif
	}}
}}
{destructor_hack_end}
)GEN";

	constexpr char const* declare_constructor = R"GEN(
{destructor_hack_begin}
{class_name}::{function_name}({parameters}) : {class_name}(geode::CutoffConstructor, sizeof({class_name})) {{
	// here we construct it as normal as we can, then destruct it
	// using the generated functions. this ensures no memory gets leaked
	// no crashes :pray:
#ifdef GEODE_USE_NEW_DESTRUCTOR_LOCK
	geode::DestructorLock::addLock(this);
#else
	cocos2d::CCDestructor::lock(this) = true;
#endif
	{class_name}::~{unqualified_class_name}();

	using FunctionType = void(*)({class_name}*{parameter_comma}{parameter_types});
	static auto func = wrapFunction({address_inline}, tulip::hook::WrapperMetadata{{
		.m_convention = geode::hook::createConvention(tulip::hook::TulipConvention::{convention}),
		.m_abstract = tulip::hook::AbstractFunction::from(FunctionType(nullptr)),
	}});
	reinterpret_cast<FunctionType>(func)(this{parameter_comma}{arguments});
}}
{destructor_hack_end}
)GEN";

	constexpr char const* declare_constructor_begin = R"GEN(
{destructor_hack_begin}
{class_name}::{function_name}({parameters}) {{
	using FunctionType = void(*)({class_name}*{parameter_comma}{parameter_types});
	static auto func = wrapFunction({address_inline}, tulip::hook::WrapperMetadata{{
		.m_convention = geode::hook::createConvention(tulip::hook::TulipConvention::{convention}),
		.m_abstract = tulip::hook::AbstractFunction::from(FunctionType(nullptr)),
	}});
	reinterpret_cast<FunctionType>(func)(this{parameter_comma}{arguments});
}}
{destructor_hack_end}
)GEN";

	constexpr char const* declare_unimplemented_error = R"GEN(
auto {class_name}::{function_name}({parameters}){const} -> decltype({function_name}({arguments})) {{
	throw std::runtime_error("{class_name}::{function_name} not implemented");
}}
)GEN";

	constexpr char const* ool_function_definition = R"GEN(
{return} {class_name}::{function_name}({parameters}){const} {definition}
)GEN";

	constexpr char const* ool_structor_function_definition = R"GEN(
{class_name}::{function_name}({parameters}){const} {definition}
)GEN";

	constexpr char const* declare_standalone = R"GEN(
{return} {function_name}({parameters}) {{
	using FunctionType = decltype({function_name}({arguments}))(*)({parameter_types});
	static auto func = wrapFunction({address_inline}, tulip::hook::WrapperMetadata{{
		.m_convention = geode::hook::createConvention(tulip::hook::TulipConvention::{convention}),
		.m_abstract = tulip::hook::AbstractFunction::from(FunctionType(nullptr)),
	}});
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

std::string generateBindingSource(Root const& root, bool skipPugixml) {
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

		for (auto& f : c.fields) {
			if (auto i = f.get_as<InlineField>()) {
				// yeah there are no inlines on cocos
			} else if (auto fn = f.get_as<FunctionBindField>()) {
				if (codegen::getStatus(*fn) == BindStatus::Inlined) {
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
							output += fmt::format(format_strings::ool_function_definition,
								fmt::arg("function_name", fn->prototype.name),
								fmt::arg("const", str_if(" const ", fn->prototype.is_const)),
								fmt::arg("class_name", c.name),
													fmt::arg("parameters", codegen::getParameters(fn->prototype)),
								fmt::arg("definition", fn->inner),
									fmt::arg("return", fn->prototype.ret.name)
							);
							break;
					}
				} else if (codegen::getStatus(*fn) != BindStatus::Unbindable || codegen::platformNumber(fn->binds) != -1) {
					char const* used_declare_format = nullptr;
					char const* destructor_hack_begin = "";
					char const* destructor_hack_end = "";

					if (codegen::platformNumber(fn->binds) == 0x9999999) {
						used_declare_format = format_strings::declare_unimplemented_error;
					}
					else if (codegen::getStatus(*fn) != BindStatus::NeedsBinding && codegen::getStatus(*fn) != BindStatus::NeedsRebinding) {
						continue;
					}
					if (codegen::getStatus(*fn) == BindStatus::NeedsRebinding && codegen::platform == Platform::Windows) {
						destructor_hack_begin = "#ifdef GEODE_USE_NEW_DESTRUCTOR_LOCK";
						destructor_hack_end = "#endif\n";
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
						fmt::arg("parameter_comma", str_if(", ", !fn->prototype.args.empty())),
						fmt::arg("destructor_hack_begin", destructor_hack_begin),
						fmt::arg("destructor_hack_end", destructor_hack_end)
					);
				}
			}
		}
	}
	return output;
}
