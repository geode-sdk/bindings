#include <Geode/Geode.hpp>

CCSpriteCOpacity::CCSpriteCOpacity() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
CCSpriteCOpacity* CCSpriteCOpacity::createWithSpriteFrame(cocos2d::CCSpriteFrame* frame) {
    auto ret = new CCSpriteCOpacity();
    if (ret->initWithSpriteFrame(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

CCSpriteCOpacity* CCSpriteCOpacity::createWithSpriteFrameName(char const* frameName) {
    return CCSpriteCOpacity::createWithSpriteFrame(cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()->spriteFrameByName(frameName));
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

