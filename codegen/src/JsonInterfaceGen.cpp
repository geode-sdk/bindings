#include "Shared.hpp"

#include <iostream>
#include <set>

std::string generateJsonInterface(Root const& root) {
    std::string output;

    for (auto& c : root.classes) {        
        if (c.name == "cocos2d") continue;

        for (auto& f : c.fields) {
            if (auto fn = f.get_as<FunctionBindField>()) {
                auto status = codegen::getStatus(*fn);

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
