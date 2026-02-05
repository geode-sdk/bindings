#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCMenuItemSprite* cocos2d::CCMenuItemSprite::create(cocos2d::CCNode* p0, cocos2d::CCNode* p1, cocos2d::CCNode* p2) {
    return create(p0, p1, p2, nullptr, nullptr);
}

cocos2d::CCMenuItemSprite* cocos2d::CCMenuItemSprite::create(cocos2d::CCNode* p0, cocos2d::CCNode* p1, cocos2d::CCObject* p2, cocos2d::SEL_MenuHandler p3) {
    return create(p0, p1, nullptr, p2, p3);
}

cocos2d::CCMenuItemSprite* cocos2d::CCMenuItemSprite::create(cocos2d::CCNode* p0, cocos2d::CCNode* p1, cocos2d::CCNode* p2, cocos2d::CCObject* p3, cocos2d::SEL_MenuHandler p4) {
    auto ret = new CCMenuItemSprite();
    if (ret->initWithNormalSprite(p0, p1, p2, p3, p4)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

