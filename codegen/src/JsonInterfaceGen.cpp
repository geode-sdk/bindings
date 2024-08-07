#include "Shared.hpp"

#include <iostream>
#include <set>

std::string generateTextInterface(Root const& root) {
    std::string output;

    for (auto& c : root.classes) {        
        if (c.name == "cocos2d") continue;

        for (auto& f : c.fields) {
            if (auto fn = f.get_as<FunctionBindField>()) {
                auto status = codegen::getStatus(*fn);

                if (status == BindStatus::Inlined) {
                    continue;
                }

                if (
                    (
                        (status == BindStatus::Unbindable || status == BindStatus::Missing) && 
                        codegen::platformNumber(fn->binds) == -1
                    ) || (
                        codegen::platformNumber(fn->binds) == 0x9999999
                    )
                ) {
                    // skip unbinded functions
                    continue;
                }
                else if (status != BindStatus::NeedsBinding && !codegen::shouldAndroidBind(fn)) {
                    continue;
                }
                output += fmt::format("{}::{} - {:#x}\n", c.name, fn->prototype.name, codegen::platformNumber(fn->binds));
            }
        }
    }

    return output;
}

static matjson::Value bindingOnPlatform(Platform p, FunctionBindField const* fn) {
    auto status = codegen::getStatusWithPlatform(p, *fn);
    if (status == BindStatus::Inlined) {
        return "inline";
    }
    if (status == BindStatus::Binded) {
        return "link";
    }
    auto addr = codegen::platformNumberWithPlatform(p, fn->binds);
    if (addr >= 0) {
        return addr;
    }
    return nullptr;
}

matjson::Value generateJsonInterface(Root const& root) {
    auto classes = matjson::Array();
    
    for (auto& c : root.classes) {        
        if (c.name == "cocos2d") continue;

        // Array because 
        auto functions = matjson::Array();
        for (auto& f : c.fields) {
            if (auto fn = f.get_as<FunctionBindField>()) {
                auto args = matjson::Array();
                for (auto const& [ty, name] : fn->prototype.args) {
                    args.push_back(matjson::Object({
                        { "type", ty.name },
                        { "name", name },
                    }));
                }
                functions.push_back(matjson::Object({
                    { "name", fn->prototype.name },
                    { "args", args },
                    { "const", fn->prototype.is_const },
                    { "virtual", fn->prototype.is_virtual },
                    { "static", fn->prototype.is_static },
                    { "bindings", matjson::Object({
                        { "win",       bindingOnPlatform(Platform::Windows, fn) },
                        { "imac",      bindingOnPlatform(Platform::MacIntel, fn) },
                        { "m1",        bindingOnPlatform(Platform::MacArm, fn) },
                        { "ios",       bindingOnPlatform(Platform::iOS, fn) },
                        { "android32", bindingOnPlatform(Platform::Android32, fn) },
                        { "android64", bindingOnPlatform(Platform::Android64, fn) },
                    }) }
                }));
            }
        }
        classes.push_back(matjson::Object({
            { "name", c.name },
            { "functions", functions },
        }));
    }

    // Return object in case we might want to return non-classes info in the future
    return matjson::Object({
        { "classes", classes }
    });
}
