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

namespace nu {
  /// Removes base class calls in an ir pass
  constexpr char const* declare_destructor = R"GEN(
{class_name}::{function_name}({parameters}) {{
  __debase_dtor_begin();
  using FunctionType = void(*)({class_name}*{parameter_comma}{parameter_types});
	static auto func = wrapFunction<FunctionType>({address_inline}, tulip::hook::TulipConvention::{convention});
	reinterpret_cast<FunctionType>(func)(this{parameter_comma}{arguments});
  __debase_dtor_end();
}}
)GEN";
} // namespace nu

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

namespace nu {
  /// Removes base class calls in an ir pass
	constexpr char const* declare_constructor = R"GEN(
{class_name}::{function_name}({parameters}) : {class_name}(geode::CutoffConstructor, sizeof({class_name})) {{
	__debase_ctor_begin();
  using FunctionType = void(*)({class_name}*{parameter_comma}{parameter_types});
	static auto func = wrapFunction<FunctionType>({address_inline}, tulip::hook::TulipConvention::{convention});
	reinterpret_cast<FunctionType>(func)(this{parameter_comma}{arguments});
  __debase_ctor_end();
}}
)GEN";
} // namespace nu

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
	return c.superclasses.empty() ||
        (c.superclasses.size() == 1 &&
         c.superclasses[0].find("CCCopying") != std::string::npos);
}

static char const* getNonInlinedCtorFormat(Class const& c, SourceGenOpts opts) {
  if (areSuperclassesEmpty(c))
		return format_strings::declare_constructor_begin;
  else if (opts.debase)
    return format_strings::nu::declare_constructor;
	else
		return format_strings::declare_constructor;
}

static char const* getNonInlinedDtorFormat(Class const& c, SourceGenOpts opts) {
  if (opts.debase)
    return format_strings::nu::declare_destructor;
  else if (areSuperclassesEmpty(c))
		return format_strings::declare_destructor_baseless;
	else
		return format_strings::declare_destructor;
}

static char const* getDeclareFormatFor(Class const& c, FunctionBindField const* fn, SourceGenOpts opts) {
  switch (fn->prototype.type) {
		case FunctionType::Normal:
      if (fn->prototype.is_static)
		    return format_strings::declare_static;
      else if (fn->prototype.is_virtual)
		    return format_strings::declare_virtual;
      else
			  return format_strings::declare_member;
		case FunctionType::Ctor:
      return getNonInlinedCtorFormat(c, opts);
		case FunctionType::Dtor:
      return getNonInlinedDtorFormat(c, opts);
	}
  return nullptr;
}

static std::string generateFunctionBindingSource(Root const& root, SourceGenOpts opts) {
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

  return output;
}

std::string generateBindingSource(Root const& root, std::filesystem::path const& singleFolder,
                                  SourceGenOpts opts, std::unordered_set<std::string>* generatedFiles) {
  std::optional<matjson::Value> basetrie;
  if (opts.debase)
    basetrie.emplace(matjson::Value::array());

	for (auto& c : root.classes) {
		if (opts.skipPugixml) {
			if (c.name.starts_with("pugi::"))
				continue;
		}
		std::string output = fmt::format(format_strings::source_start,
			fmt::arg("includes", codegen::getIncludes(root, opts.debase))
		);

    std::string uqclass = codegen::getUnqualifiedClassName(c.name);
    int FieldCount = 0;
		for (auto& f : c.fields) {
      if (auto i = f.get_as<InlineField>()) {
        // yeah there are no inlines on cocos
        continue;
      }

      auto fn = f.get_as<FunctionBindField>();
			if (!fn)
        continue;
      
      const BindStatus fnStatus = codegen::getStatus(*fn);
			if (fnStatus == BindStatus::Inlined) {
				if (opts.skipInlines)
					continue;
        ++FieldCount;
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
			} else if (fnStatus != BindStatus::Unbindable ||
                 codegen::platformNumber(fn->binds) != -1) {
				char const* used_declare_format = nullptr;

				if (codegen::platformNumber(fn->binds) == 0x9999999) {
					used_declare_format = format_strings::declare_unimplemented_error;
				}
				else if (fnStatus != BindStatus::NeedsBinding &&
                 fnStatus != BindStatus::NeedsRebinding) {
					continue;
				}

				if (!used_declare_format)
          used_declare_format = getDeclareFormatFor(c, fn, opts);

        ++FieldCount;
				output += fmt::format(fmt::runtime(used_declare_format),
					fmt::arg("class_name", c.name),
					fmt::arg("unqualified_class_name", uqclass),
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

    // Avoid generating mountains of empty files
    if (FieldCount == 0) {
      continue;
    }

    std::string filename = uqclass + ".cpp";
    if (generatedFiles != nullptr)
      generatedFiles->insert(filename);

    if (basetrie)
      basetrie->push(uqclass);

		writeFile(singleFolder / filename, output);
	}

  // Generate config
  if (basetrie) {
    std::string config_output = 
        fmt::format(R"({{ "basetrie": {}, "files": [] }})",
                    basetrie->dump(matjson::NO_INDENTATION));
    writeFile(singleFolder / "DebaseConfig.json", config_output);
  }

	return generateFunctionBindingSource(root, opts);
}
