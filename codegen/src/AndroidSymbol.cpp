#include "AndroidSymbol.hpp"
#include <unordered_set>
#include <vector>
#include <string>
#include <string_view>

std::string mangleIdent(std::string_view str, bool ne = true) {
	if (str.find("::") != -1) {
		std::string result = ne ? "N" : "";
		auto s = str;
		do {
			const auto i = s.find("::");
			const auto t = s.substr(0, i);
			result += std::to_string(t.size()) + std::string(t);
			if (i == -1) s = "";
			else
				s = s.substr(i + 2);
		} while(s.size());
		return result + (ne ? "E" : "");
	} else {
		return std::to_string(str.size()) + std::string(str);
	}
};

std::string intToString(unsigned int value, unsigned int radix) {
    static constexpr char base36[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    std::string result;
    do {
        unsigned int remainder = value % radix;
        value /= radix;
        result.insert(result.begin(), base36[remainder]);
    } while (value);
    return result;
}

std::string lookForSeen(std::vector<std::string>& seen, std::string expanded) {
	for (int i = 0; i < seen.size(); ++i) {
		if (seen[i] == expanded) {
			if (i == 0) return "S_";
			// yes, its base 36
			return "S" + intToString(i - 1, 36) + "_";
		}
	}
	return "";
}

std::string subsSeen(std::vector<std::string>& seen, std::string mangled, bool subs, std::string expanded) {
	if (!subs) return mangled;
    if (mangled.empty()) return mangled;
	if (auto x = lookForSeen(seen, expanded); !x.empty()) return x;
	seen.push_back(expanded);
	return mangled;
}

std::vector<std::string> splitTemplateRecursive(std::string_view str) {
	std::vector<std::string> result;
	int depth = 0;
	std::string current;
	for (int i = 0; i < str.size(); ++i) {
		if (str[i] == '<') {
			depth++;
			if (depth > 0) current += str[i];
		} else if (str[i] == '>') {
			if (depth > 0) current += str[i];
			depth--;
		} else if (str[i] == ',' && depth == 0) {
			result.push_back(current);
			current = "";
		} else {
			if (current.size() > 0 || str[i] != ' ') current += str[i];
		}
	}
	if (!current.empty()) result.push_back(current);
	return result;
}

std::string mangleType(std::vector<std::string>& seen, std::string name, bool subs = true, bool isTemplate = false);

std::string handleTemplate(std::vector<std::string>& seen, std::string base, std::vector<std::string> parts, bool subs) {
	std::string result = "";
	std::string outer = mangleType(seen, base, subs, true);
	for (auto& part : parts) {
		result += mangleType(seen, part, subs, true);
	}

	// exceptions of additional params		
	if (base == "gd::map") {
		result += mangleType(seen, "std::less<" + parts[0] + ">", subs, true);
		result += mangleType(seen, "std::allocator<std::pair<const " + parts[0] + ", " + parts[1] + ">>", subs, true);
	}
	else if (base == "gd::vector") {
		result += mangleType(seen, "std::allocator<" + parts[0] + ">", subs, true);
	}
	else if (base == "gd::set") {
		result += mangleType(seen, "std::less<" + parts[0] + ">", subs, true);
		result += mangleType(seen, "std::allocator<" + parts[0] + ">", subs, true);
	}
	else if (base == "gd::unordered_map") {
		result += mangleType(seen, "std::hash<" + parts[0] + ">", subs, true);
		result += mangleType(seen, "std::equal_to<" + parts[0] + ">", subs, true);
		result += mangleType(seen, "std::allocator<std::pair<const " + parts[0] + ", " + parts[1] + ">>", subs, true);
	}
	else if (base == "gd::unordered_set") {
		result += mangleType(seen, "std::hash<" + parts[0] + ">", subs, true);
		result += mangleType(seen, "std::equal_to<" + parts[0] + ">", subs, true);
		result += mangleType(seen, "std::allocator<" + parts[0] + ">", subs, true);
	}

	return outer + "I" + result + "E";
}

std::string mangleType(std::vector<std::string>& seen, std::string name, bool subs, bool isTemplate) {
	if (name == "void") return "v";
	if (name == "bool") return "b";
	if (name == "char") return "c";
	if (name == "short") return "s";
	if (name == "int") return "i";
	if (name == "long") return "l";
	if (name == "long long") return "x";
	if (name == "unsigned") return "j";
	if (name == "unsigned char") return "h";
	if (name == "unsigned short") return "t";
	if (name == "unsigned int") return "j";
	if (name == "unsigned long") return "m";
	if (name == "unsigned long long") return "y";
	if (name == "float") return "f";
	if (name == "double") return "d";
	if (name == "gd::string") return "Ss";
	if (name == "std::allocator") return "Sa";
	if (name == "cocos2d::ccColor3B") return mangleType(seen, "cocos2d::_ccColor3B", subs);
	// too lazy
	if (name == "cocos2d::SEL_MenuHandler") {
		const auto unsubClass = mangleType(seen, "cocos2d::CCObject", false);
		const auto unsubParam = mangleType(seen, "cocos2d::CCObject*", false);
		const auto unsubPtr = "Fv" + unsubParam + "E";
		const auto unsubMem = "M" + unsubClass + unsubPtr;
		if (!subs) return unsubMem;
		if (auto x = lookForSeen(seen, unsubMem); !x.empty()) return x;
		const auto resultClass = mangleType(seen, "cocos2d::CCObject", subs);
		const auto resultParam = mangleType(seen, "cocos2d::CCObject*", subs);
		const auto resultPtr = subsSeen(seen, "Fv" + resultParam + "E", subs, unsubPtr);
		const auto resultMem = subsSeen(seen, "M" + resultClass + resultPtr, subs, unsubMem);
		return resultMem;
	}
	if (name.rfind('*') == name.size() - 1) {
		const auto unsub = mangleType(seen, name.substr(0, name.size() - 1), false);
		if (!subs) return "P" + unsub;
		if (auto x = lookForSeen(seen, "P" + unsub); !x.empty()) return x;
		const auto result = mangleType(seen, name.substr(0, name.size() - 1), subs);
		return subsSeen(seen, "P" + result, subs, "P" + unsub);
	}
	if (name.rfind('&') == name.size() - 1) {
		const auto unsub = mangleType(seen, name.substr(0, name.size() - 1), false);
		if (!subs) return "R" + unsub;
		if (auto x = lookForSeen(seen, "R" + unsub); !x.empty()) return x;
		const auto result = mangleType(seen, name.substr(0, name.size() - 1), subs);
		return subsSeen(seen, "R" + result, subs, "R" + unsub);
	}
	if (auto i = name.rfind("const"); i == name.size() - 5) {
		const auto unsub = mangleType(seen, name.substr(0, name.size() - 6), false);
		if (!subs) return "K" + unsub;
		if (auto x = lookForSeen(seen, "K" + unsub); !x.empty()) return x;
		const auto result = mangleType(seen, name.substr(0, name.size() - 6), subs);
		return subsSeen(seen, "K" + result, subs, "K" + unsub);
	}

	if (auto i = name.find("const"); i == 0) {
		const auto unsub = mangleType(seen, name.substr(6), false);
		if (!subs) return "K" + unsub;
		if (auto x = lookForSeen(seen, "K" + unsub); !x.empty()) return x;
		const auto result = mangleType(seen, name.substr(6), subs);
		return subsSeen(seen, "K" + result, subs, "K" + unsub);
	}

	if (name.find("<") != -1) {
		const auto i = name.find("<");
		const auto r = name.rfind(">");
		const auto base = name.substr(0, i);
		const auto parts = splitTemplateRecursive(name.substr(i + 1, r - i - 1));

		const auto unsub = handleTemplate(seen, base, parts, false);
		if (!subs) return unsub;
		if (auto x = lookForSeen(seen, unsub); !x.empty()) return x;
		const auto result = handleTemplate(seen, base, parts, subs);
		return subsSeen(seen, result, subs, unsub);
	}

	if (name.find("::") != -1) {
		std::string result = "";
		std::string substituted = "";
		auto s = name;
		do {
			const auto i = s.find("::");
			const auto t = s.substr(0, i);
			auto part = std::to_string(t.size()) + std::string(t);
			if (t == "gd" || t == "std") {
				substituted = "St";
			}
			else if (!subs) {
				substituted += part;
			}
			else if (auto x = lookForSeen(seen, result + part); !x.empty()) {
				substituted = x;
			}
			else {
				substituted = subsSeen(seen, substituted + part, subs, result + part);
			}
			result += part;
			if (i == -1) s = "";
			else s = s.substr(i + 2);
		} while(s.size());
        if (substituted.size() == 3 && substituted[0] == 'S')
            return substituted;
		if (isTemplate) return substituted;
		return "N" + substituted + "E";
	} else {
		return subsSeen(seen, mangleIdent(name), subs, mangleIdent(name));
	}
};

std::string generateAndroidSymbol(const Class& clazz, const FunctionBindField* fn) {
	auto& decl = fn->prototype;


	std::string mangledSymbol;
	switch (decl.type) {
		case FunctionType::Ctor:
			mangledSymbol = "_ZN" + mangleIdent(clazz.name, false) + "C2E";
			break;
		case FunctionType::Dtor:
			mangledSymbol = "_ZN" + mangleIdent(clazz.name, false) + "D2E";
			break;
		default:
			mangledSymbol = "_Z" + mangleIdent(clazz.name + "::" + decl.name);
			break;
	}
	if (decl.args.empty()) {
		mangledSymbol += "v";
	} else {
		std::vector<std::string> seen;
		static constexpr auto firstPart = [](std::string_view str, std::string_view sep) {
			return str.substr(0, str.find(sep));
		};
		// this is S_
		seen.push_back(mangleIdent(firstPart(clazz.name, "::")));
		for (auto& [ty, _] : decl.args) {
			mangledSymbol += mangleType(seen, ty.name);
		}
	}
    return mangledSymbol;
}