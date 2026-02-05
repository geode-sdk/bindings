#include <Geode/Bindings.hpp>

BitmapFontCache::BitmapFontCache() {
    m_cache = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool BitmapFontCache::init() {
    m_cache = cocos2d::CCDictionary::create();
    m_cache->retain();
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
BitmapFontCache::~BitmapFontCache() {
    CC_SAFE_RELEASE(m_cache);
}

void BitmapFontCache::purgeSharedFontCache() {
    auto** instancePtr = reinterpret_cast<BitmapFontCache**>(geode::base::get() + 0x6c2e78);
    if (*instancePtr) {
        (*instancePtr)->release();
        *instancePtr = nullptr;
    }
}

BitmapFontCache* BitmapFontCache::sharedFontCache() {
    auto** instancePtr = reinterpret_cast<BitmapFontCache**>(geode::base::get() + 0x6c2e78);
    if (!*instancePtr) {
        *instancePtr = new BitmapFontCache();
        (*instancePtr)->init();
    }
    return *instancePtr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

