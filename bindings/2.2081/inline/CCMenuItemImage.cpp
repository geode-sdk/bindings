#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCMenuItemImage* cocos2d::CCMenuItemImage::create() {
    auto ret = new CCMenuItemImage();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCMenuItemImage* cocos2d::CCMenuItemImage::create(char const* p0, char const* p1) {
    return create(p0, p1, nullptr, nullptr, nullptr);
}

cocos2d::CCMenuItemImage* cocos2d::CCMenuItemImage::create(char const* p0, char const* p1, char const* p2) {
    auto ret = new CCMenuItemImage();
    if (ret->initWithNormalImage(p0, p1, p2, nullptr, nullptr)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCMenuItemImage* cocos2d::CCMenuItemImage::create(char const* p0, char const* p1, cocos2d::CCObject* p2, cocos2d::SEL_MenuHandler p3) {
    return create(p0, p1, nullptr, p2, p3);
}

cocos2d::CCMenuItemImage* cocos2d::CCMenuItemImage::create(char const* p0, char const* p1, char const* p2, cocos2d::CCObject* p3, cocos2d::SEL_MenuHandler p4) {
    auto ret = new CCMenuItemImage();
    if (ret->initWithNormalImage(p0, p1, p2, p3, p4)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void cocos2d::CCMenuItemImage::setDisabledSpriteFrame(cocos2d::CCSpriteFrame* p0) {
    this->setDisabledImage(CCSprite::createWithSpriteFrame(p0));
}

void cocos2d::CCMenuItemImage::setNormalSpriteFrame(cocos2d::CCSpriteFrame* p0) {
    this->setNormalImage(CCSprite::createWithSpriteFrame(p0));
}

void cocos2d::CCMenuItemImage::setSelectedSpriteFrame(cocos2d::CCSpriteFrame* p0) {
    this->setSelectedImage(CCSprite::createWithSpriteFrame(p0));
}
#endif

