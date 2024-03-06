#include "Shared.hpp"

#include <iostream>
#include <set>

std::string generateJsonInterface(Root const& root) {
    std::string output;

    for (auto& c : root.classes) {        
        if (c.name == "cocos2d") continue;

        for (auto& f : c.fields) {
            if (codegen::getStatus(f) == BindStatus::Missing) continue;

            if (auto fn = f.get_as<FunctionBindField>()) {
                if (
					(
						codegen::getStatus(f) == BindStatus::Unbindable && 
						codegen::platformNumber(fn->binds) == -1
					) || (
						codegen::platformNumber(fn->binds) == 0x9999999
					)
				) {
                    // skip unbinded functions
					continue;
				}
				else if (codegen::getStatus(f) != BindStatus::NeedsBinding && !codegen::shouldAndroidBind(fn)) {
					continue;
				}
                output += fmt::format("{}::{} - {:#x}\n", c.name, fn->prototype.name, codegen::platformNumber(fn->binds));
            }
        }
    }

    return output;
}
