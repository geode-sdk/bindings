#pragma once

#include <broma.hpp>
using namespace broma;

#include <string>
#include <string_view>

std::string mangleWindowsIdent(std::string_view str);
std::string generateWindowsSymbol(const Class& clazz, const FunctionBindField* fn);
