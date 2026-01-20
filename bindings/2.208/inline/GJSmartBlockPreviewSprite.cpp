#include <Geode/Geode.hpp>

GJSmartBlockPreviewSprite::GJSmartBlockPreviewSprite() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJSmartBlockPreviewSprite* GJSmartBlockPreviewSprite::create() {
    auto ret = new GJSmartBlockPreviewSprite();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

