#include <Geode/Bindings.hpp>

gd::string cocos2d::ZipUtils::encryptDecryptWKey(gd::string const& p0, gd::string p1) {
		std::string ret;
		ret.resize(p0.size());
		for (int i = 0; i < p0.size(); i++) {
			ret[i] = p0[i] ^ p1[i % p1.size()];
		}
		return ret;
	}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

