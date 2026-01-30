#include "Shared.hpp"

std::string generateTextInterface(Root const& root) {
    std::string output;

    for (auto& c : root.classes) {        
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
                else if (status != BindStatus::NeedsBinding) {
                    continue;
                }
                output += fmt::format("{}::{} - {:#x}\n", c.name, fn->prototype.name, codegen::platformNumber(fn->binds));
            }
        }
    }

    for (auto& f : root.functions) {
        auto status = codegen::getStatus(f);

        if (status == BindStatus::Inlined) {
            continue;
        }

        if (
            (
                (status == BindStatus::Unbindable || status == BindStatus::Missing) && 
                codegen::platformNumber(f.binds) == -1
            ) || (
                codegen::platformNumber(f.binds) == 0x9999999
            )
        ) {
            // skip unbinded functions
            continue;
        }
        else if (status != BindStatus::NeedsBinding) {
            continue;
        }
        output += fmt::format("{} - {:#x}\n", f.prototype.name, codegen::platformNumber(f.binds));
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

static matjson::Value bindingOnPlatform(Platform p, Function const& fn) {
    auto status = codegen::getStatusWithPlatform(p, fn);
    if (status == BindStatus::Inlined) {
        return "inline";
    }
    if (status == BindStatus::Binded) {
        return "link";
    }
    auto addr = codegen::platformNumberWithPlatform(p, fn.binds);
    if (addr >= 0) {
        return addr;
    }
    return nullptr;
}

matjson::Value generateJsonInterface(Root const& root) {
    std::vector<matjson::Value> classes;
    
    for (auto& c : root.classes) {        
        // Array because 
        std::vector<matjson::Value> functions;
        std::vector<matjson::Value> fields;
        for (auto& f : c.fields) {
            if (auto fn = f.get_as<FunctionBindField>()) {
                std::vector<matjson::Value> args;
                for (auto const& [ty, name] : fn->prototype.args) {
                    args.push_back(matjson::makeObject({
                        { "type", ty.name },
                        { "name", name },
                    }));
                }
                auto const functionType = [&] {
                    switch (fn->prototype.type) {
                        case FunctionType::Normal: return "normal";
                        case FunctionType::Ctor: return "ctor";
                        case FunctionType::Dtor: return "dtor";
                    }
                    return "unknown";
                }();
                functions.push_back(matjson::makeObject({
                    { "name", fn->prototype.name },
                    { "args", args },
                    { "return", fn->prototype.ret.name },
                    { "const", fn->prototype.is_const },
                    { "virtual", fn->prototype.is_virtual },
                    { "static", fn->prototype.is_static },
                    { "bindings", matjson::makeObject({
                        { "win",       bindingOnPlatform(Platform::Windows, fn) },
                        { "imac",      bindingOnPlatform(Platform::MacIntel, fn) },
                        { "m1",        bindingOnPlatform(Platform::MacArm, fn) },
                        { "ios",       bindingOnPlatform(Platform::iOS, fn) },
                        { "android32", bindingOnPlatform(Platform::Android32, fn) },
                        { "android64", bindingOnPlatform(Platform::Android64, fn) },
                    }) },
                    { "docs", fn->prototype.attributes.docs },
                    { "line", f.line },
                    { "kind", functionType },
                }));
            }
            else if (auto m = f.get_as<MemberField>()) {
                fields.push_back(matjson::makeObject({
                    { "name", m->name },
                    { "type", m->type.name },
                    { "line", f.line },
                    { "count", m->count }
                }));
            }
        }
        classes.push_back(matjson::makeObject({
            { "name", c.name },
            { "functions", functions },
            { "fields", fields },
            { "source", std::filesystem::path(c.source).filename().string() },
            { "line", c.line },
        }));
    }

    std::vector<matjson::Value> functions;
    for (auto& f : root.functions) {
        std::vector<matjson::Value> args;
        for (auto const& [ty, name] : f.prototype.args) {
            args.push_back(matjson::makeObject({
                { "type", ty.name },
                { "name", name },
            }));
        }
        functions.push_back(matjson::makeObject({
            { "name", f.prototype.name },
            { "args", args },
            { "return", f.prototype.ret.name },
            { "bindings", matjson::makeObject({
                { "win",       bindingOnPlatform(Platform::Windows, f) },
                { "imac",      bindingOnPlatform(Platform::MacIntel, f) },
                { "m1",        bindingOnPlatform(Platform::MacArm, f) },
                { "ios",       bindingOnPlatform(Platform::iOS, f) },
                { "android32", bindingOnPlatform(Platform::Android32, f) },
                { "android64", bindingOnPlatform(Platform::Android64, f) },
            }) },
            { "docs", f.prototype.attributes.docs },
            { "source", std::filesystem::path(f.source).filename().string() },
            { "line", f.line },
        }));
    }

    // Return object in case we might want to return non-classes info in the future
    return matjson::makeObject({
        { "classes", classes },
        { "functions", functions }
    });
}
