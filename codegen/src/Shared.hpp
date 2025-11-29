#pragma once

#include <array>
#include <unordered_set>
#include <broma.hpp>
#include <fmt/format.h>
#include <fmt/ranges.h>
#include <fstream>
#include <filesystem>

using std::istreambuf_iterator;

#ifdef _MSC_VER
    #pragma warning(disable : 4996)
#endif

using namespace broma;


#include "AndroidSymbol.hpp"
#include "WindowsSymbol.hpp"
#include <matjson.hpp>

std::string generateAddressHeader(Root const& root);
std::string generateModifyHeader(Root const& root, std::filesystem::path const& singleFolder, std::unordered_set<std::string>* generatedFiles = nullptr);
std::string generateBindingHeader(Root const& root, std::filesystem::path const& singleFolder, std::unordered_set<std::string>* generatedFiles = nullptr);
std::string generatePredeclareHeader(Root const& root);
std::string generateBindingSource(Root const& root, bool skipPugixml);
std::string generateTextInterface(Root const& root);
matjson::Value generateJsonInterface(Root const& root);

// returns true if the file contents were different (overwritten), false otherwise
inline bool writeFile(std::filesystem::path const& writePath, std::string const& output) {
    std::ifstream readfile;
    readfile >> std::noskipws;
    readfile.open(writePath);
    std::string data((std::istreambuf_iterator<char>(readfile)), std::istreambuf_iterator<char>());
    readfile.close();

    if (data != output) {
        std::ofstream writefile;
        writefile.open(writePath);
        writefile << output;
        writefile.close();

        return true;
    }

    return false;
}

inline std::string str_if(std::string&& str, bool cond) {
    return cond ? str : "";
}

inline bool can_find(std::string const& str, char const* text) {
    return str.find(text) != std::string::npos;
}

inline bool is_cocos_class(std::string const& str) {
    return can_find(str, "cocos2d") || can_find(str, "pugi::") || str == "DS_Dictionary" || str == "ObjectDecoder" || str == "ObjectDecoderDelegate" || str == "CCContentManager";
}

inline bool is_in_extensions_dll(std::string const& str) {
    return can_find(str, "cocos2d::extension");
}

inline bool is_in_cocos_dll(std::string const& str) {
    return is_cocos_class(str) && !can_find(str, "CCLightning") && !is_in_extensions_dll(str);
}

inline bool is_fmod_class(std::string const& str) {
    return can_find(str, "FMOD::") || str == "FMOD";
}

inline bool is_cocos_or_fmod_class(std::string const& str) {
    return is_cocos_class(str) || is_fmod_class(str);
}

enum class BindStatus {
    Binded,
    Inlined,
    NeedsBinding,
    Unbindable,
    Missing,
    NeedsRebinding,
};

struct codegen_error : std::runtime_error {
    inline codegen_error(char const* msg) : std::runtime_error(msg) {}
};

namespace codegen {
    extern std::map<void const*, size_t> idMap;

    inline void populateIds(Root const& root) {
        size_t id = 0;
        for (auto& f : root.functions) {
            idMap[&f] = id++;
        }
        
        for (auto& c : root.classes) {
            for (auto& f : c.fields) {
                if (auto fn = f.get_as<FunctionBindField>()) {
                    idMap[&f] = id++;
                }
            }
        }
    }

    inline size_t getId(Function const* f) {
        return idMap[f];
    }

    inline size_t getId(Field const* f) {
        return idMap[f];
    }

    template <typename... Args>
    inline codegen_error error(fmt::format_string<Args...> fmt, Args&&... args) {
        return codegen_error(fmt::format(fmt, std::forward<Args>(args)...).c_str());
    }

    inline Platform platform;
    inline enum class PlatformArch {
        Default,
        x86,
        x64,
        arm64
    } platformArch = PlatformArch::Default;

    enum class VersionType {
        Alpha,
        Beta,
        Prerelease,
        Release,
    };

    struct Version {
        int major = 0;
        int minor = 0;
        int patch = 0;
        VersionType type = VersionType::Release;
        int tag = 0;

        static Version fromString(std::string const& str) {
            Version v;
            if (str.empty()) return v;

            std::vector<std::string> parts;

            for (auto& c : str) {
                if (c == '.' || c == '-') parts.push_back("");
                else {
                    if (parts.empty()) parts.push_back("");
                    parts.back() += c;
                }
            }

            if (parts.size() > 0) v.major = std::stoi(parts[0].starts_with("v") ? parts[0].substr(1) : parts[0]);
            if (parts.size() > 1) v.minor = std::stoi(parts[1]);
            if (parts.size() > 2) v.patch = std::stoi(parts[2]);
            if (parts.size() > 3) {
                if (parts[3].starts_with("alpha")) v.type = VersionType::Alpha;
                else if (parts[3].starts_with("beta")) v.type = VersionType::Beta;
                else if (parts[3].starts_with("prerelease")) v.type = VersionType::Prerelease;
            }
            if (parts.size() > 4) v.tag = std::stoi(parts[4]);

            return v;
        }
    };

    inline bool operator<(Version const& a, std::string const& b) {
        auto v = Version::fromString(b);
        return std::tie(a.major, a.minor, a.patch, a.type, a.tag) < std::tie(v.major, v.minor, v.patch, v.type, v.tag);
    }

    inline Version sdkVersion = {
        .major = 99,
        .minor = 99,
        .patch = 99
    };

    inline ptrdiff_t platformNumberWithPlatform(Platform p, PlatformNumber const& pn) {
        switch (p) {
            case Platform::Mac: return pn.imac;
            case Platform::MacIntel: return pn.imac;
            case Platform::MacArm: return pn.m1;
            case Platform::Windows: return pn.win;
            case Platform::iOS: return pn.ios;
            case Platform::Android: return pn.android32;
            case Platform::Android32: return pn.android32;
            case Platform::Android64: return pn.android64;
            default: // unreachable
                return pn.win;
        }
    }

    inline ptrdiff_t platformNumber(PlatformNumber const& p) {
        return platformNumberWithPlatform(codegen::platform, p);
    }

    inline uintptr_t platformNumber(Field const& field) {
        if (auto fn = field.get_as<FunctionBindField>()) {
            return platformNumberWithPlatform(codegen::platform, fn->binds);
        }
        return 0;
    }

    inline BindStatus getStatusWithPlatform(Platform p, FunctionBindField const& fn) {
        if (platformNumberWithPlatform(p, fn.binds) == -2) return BindStatus::Inlined;

        if ((fn.prototype.attributes.missing & p) != Platform::None || codegen::sdkVersion < fn.prototype.attributes.since) return BindStatus::Missing;
        if ((fn.prototype.attributes.links & p) != Platform::None) {
            if (fn.prototype.type != FunctionType::Normal) return BindStatus::NeedsRebinding;

            if ((int)p & (int)Platform::Android) {
                for (auto& [type, name] : fn.prototype.args) {
                    if (can_find(type.name, "gd::")) return BindStatus::NeedsRebinding;
                }
            }
            
            return BindStatus::Binded;
        }

        if (platformNumberWithPlatform(p, fn.binds) != -1) return BindStatus::NeedsBinding;

        return BindStatus::Unbindable;
    }

    inline BindStatus getStatusWithPlatform(Platform p, Function const& f) {
        if (platformNumberWithPlatform(p, f.binds) == -2) return BindStatus::Inlined;

        if ((f.prototype.attributes.missing & p) != Platform::None || codegen::sdkVersion < f.prototype.attributes.since) return BindStatus::Missing;
        if ((f.prototype.attributes.links & p) != Platform::None) return BindStatus::Binded;

        if (platformNumberWithPlatform(p, f.binds) != -1) return BindStatus::NeedsBinding;

        return BindStatus::Unbindable;
    }

    inline BindStatus getStatus(FunctionBindField const& fn) {
        return getStatusWithPlatform(codegen::platform, fn);
    }

    inline BindStatus getStatus(Function const& f) {
        return getStatusWithPlatform(codegen::platform, f);
    }

    inline std::string getParameters(FunctionProto const& f) { // int p0, float p1
        std::vector<std::string> parameters;

        for (auto& [t, n] : f.args) {
            if (t.name == "...")
                parameters.push_back("...");
            else
                parameters.push_back(fmt::format("{} {}", t.name, n));
        }

        return fmt::format("{}", fmt::join(parameters, ", "));
    }

    inline std::string getParameterTypes(FunctionProto const& f) { // int, float
        std::vector<std::string> parameters;

        for (auto& [t, n] : f.args) {
            parameters.push_back(t.name);
        }

        return fmt::format("{}", fmt::join(parameters, ", "));
    }

    inline std::string getParameterNames(FunctionProto const& f) { // p0, p1
        std::vector<std::string> parameters;

        for (auto& [t, n] : f.args) {
            parameters.push_back(n);
        }

        return fmt::format("{}", fmt::join(parameters, ", "));
    }

    inline std::string getModifyConventionName(Field const& f) {
        if (codegen::platform != Platform::Windows) return "Default";

        if (auto fn = f.get_as<FunctionBindField>()) {
            auto status = getStatus(*fn);
            if (codegen::platformArch == PlatformArch::x86) {
                // for windows x86, aka versions before 2.206
                if (fn->prototype.is_static) {
                    if (status == BindStatus::Binded || status == BindStatus::NeedsRebinding) return "Cdecl";
                    else return "Optcall";
                }
                else if (fn->prototype.is_virtual || fn->prototype.is_callback) {
                    return "Thiscall";
                }
                else {
                    if (status == BindStatus::Binded || status == BindStatus::NeedsRebinding) return "Thiscall";
                    else return "Membercall";
                }
            } else {
                // windows x64 (post 2.206) only has 2 ccs
                if (fn->prototype.is_static) {
                    return "Default";
                }
                else {
                    return "Thiscall";
                }
            }
        }
        else throw codegen::error("Tried to get convention of non-function");
    }

    inline std::string getModifyConventionName(Function const& f) {
        if (codegen::platform != Platform::Windows) return "Default";

        return "Cdecl";
    }

    inline std::string getConvention(Field const& f) {
        if (codegen::platform != Platform::Windows) return "DefaultConv";

        return std::string("x86::") + getModifyConventionName(f);
    }

    inline std::string getModifyConvention(Field const& f) {
        if (codegen::platform != Platform::Windows) return "tulip::hook::DefaultConvention";

        return std::string("tulip::hook::") + getModifyConventionName(f) + "Convention";
    }

    inline std::string getUnqualifiedClassName(std::string const& s) {
        auto index = s.rfind("::");
        if (index == std::string::npos) return s;
        return s.substr(index + 2);
    }

    inline std::string getIncludes(Root const& root) {
        std::string includes;

        for (auto& header : root.headers) {
            if ((header.platform & codegen::platform) != Platform::None) {
                includes += fmt::format("#include <{}>\n", header.name);
            }
        }

        return includes;
    }

    inline std::string getAddressString(Function const& f) {
        if (codegen::getStatus(f) == BindStatus::Binded) {
            return fmt::format(
                "addresser::getNonVirtual(Resolve<{}>::func(&{}))",
                codegen::getParameterTypes(f.prototype),
                f.prototype.name
            );
        }
        else if (codegen::getStatus(f) == BindStatus::NeedsBinding) {
            return fmt::format("base::get() + 0x{:x}", codegen::platformNumber(f.binds));
        }
        else {
            return "";
        }
    }

    inline std::string getAddressString(Class const& c, Field const& field) {
        if (auto fn = field.get_as<FunctionBindField>()) {
            if (codegen::getStatus(*fn) == BindStatus::NeedsRebinding) {
                if ((int)codegen::platform & (int)Platform::Android) {
                    auto const mangled = generateAndroidSymbol(c, fn);
                    return fmt::format( // thumb
                        "reinterpret_cast<uintptr_t>(dlsym(dlopen(\"libcocos2dcpp.so\", RTLD_NOW), \"{}\"))",
                        mangled
                    );
                }
                else if (codegen::platform == Platform::Windows) {
                    auto const mangled = generateWindowsSymbol(c, fn);
                    if (is_in_cocos_dll(field.parent)) {
                        return fmt::format(
                            "reinterpret_cast<uintptr_t>(GetProcAddress((HMODULE)base::getCocos(), \"{}\"))",
                            mangled
                        );
                    }
                    else if (is_in_extensions_dll(field.parent)) {
                        return fmt::format(
                            "reinterpret_cast<uintptr_t>(GetProcAddress((HMODULE)base::getExtensions(), \"{}\"))",
                            mangled
                        );
                    }
                    else {
                        // Uhhhh im not sure
                        return "(void*)0x9911991122";
                    }
                }
            }
            else if (codegen::getStatus(*fn) == BindStatus::NeedsBinding || codegen::platformNumber(field) != -1) {
                if (codegen::platform == Platform::Windows) {
                    if (is_in_cocos_dll(field.parent)) {
                        return fmt::format("base::getCocos() + 0x{:x}", codegen::platformNumber(fn->binds));
                    }
                    else if (is_in_extensions_dll(field.parent)) {
                        return fmt::format("base::getExtensions() + 0x{:x}", codegen::platformNumber(fn->binds));
                    }
                    else {
                        return fmt::format("base::get() + 0x{:x}", codegen::platformNumber(fn->binds));
                    }
                }
                else {
                    return fmt::format("base::get() + 0x{:x}", codegen::platformNumber(fn->binds));
                }
            }
            else if (codegen::getStatus(*fn) == BindStatus::Binded && fn->prototype.type == FunctionType::Normal) {
                return fmt::format(
                    "addresser::get{}Virtual(Resolve<{}>::func(&{}::{}))",
                    str_if("Non", !fn->prototype.is_virtual),
                    codegen::getParameterTypes(fn->prototype),
                    field.parent,
                    fn->prototype.name
                );
            }
            else {
                return "";
            }
        }
        return "";
    }
}
