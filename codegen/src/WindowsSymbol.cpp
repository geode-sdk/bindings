#include "WindowsSymbol.hpp"
#include "Shared.hpp"

#include <unordered_set>
#include <vector>

std::string mangleWindowsIdent(std::string_view str) {
    if (str.find("::") != -1) {
		std::string result = "";
		auto s = str;
		do {
			const auto i = s.rfind("::");
			const auto t = i != -1 ? s.substr(i + 2) : s;
			result += t;
			result += "@";
			if (i == -1) s = "";
			else
				s = s.substr(0, i);
		} while(s.size());
		return result;
	} else {
		return std::string(str) + "@";
	}
}

char getWindowsAccessToken(const MemberFunctionProto& proto)
{
	if (proto.is_virtual)
	{
		switch (proto.access)
		{
			case AccessModifier::Private:   return 'E';
			case AccessModifier::Protected: return 'M';
			default: return 'U';
		}
	}

	switch (proto.access)
	{
		case AccessModifier::Private:   return 'A';
		case AccessModifier::Protected: return 'I';
		default: return 'Q';
	}
}

std::string generateWindowsSymbol(const Class& clazz, const FunctionBindField* fn) {
	auto& decl = fn->prototype;

	char access_token = getWindowsAccessToken(decl);

	std::string mangledSymbol;
	switch (decl.type) {
		case FunctionType::Ctor:
			if (codegen::platformArch == codegen::PlatformArch::x86) {
				// writing this down so i dont forget:
				// Q - public, A - private, I - protected (https://en.wikiversity.org/wiki/Visual_C%2B%2B_name_mangling#Function_2)
				// A - not const (https://en.wikiversity.org/wiki/Visual_C%2B%2B_name_mangling#CV-class_Modifier)
				// E - thiscall (https://en.wikiversity.org/wiki/Visual_C%2B%2B_name_mangling#Function_Property)
				mangledSymbol = "??0" + mangleWindowsIdent(clazz.name) + "@" + access_token + "AE";
			} else {
				// 64-bit changed this slightly
				mangledSymbol = "??0" + mangleWindowsIdent(clazz.name) + "@" + access_token + "EAA";				
			}
			break;
		case FunctionType::Dtor:
            // U - public virtual
			// E - private virtual
			// M - protected virtual

			if (codegen::platformArch == codegen::PlatformArch::x86) {
				mangledSymbol = "??1" + mangleWindowsIdent(clazz.name) + "@" + access_token + "AE";
			} else {
				mangledSymbol = "??1" + mangleWindowsIdent(clazz.name) + "@" + access_token + "EAA";
			}
			
			break;
		default:
			throw std::runtime_error(fmt::format("Mangling of this function type is not implemented! sorry {}", decl.name));
	}
	if (!decl.args.empty()) {
        throw std::runtime_error(fmt::format("Sorry i cant mangle args either {}", decl.name));
	} else {
        // X means void, meaning empty arg list, also ends the arg list without needing to use @
        // Z is used to mark no throw() attribute
        mangledSymbol += "@XZ";
	}
    return mangledSymbol;
}