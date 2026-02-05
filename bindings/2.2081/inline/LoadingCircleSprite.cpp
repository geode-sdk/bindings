#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void LoadingCircleSprite::hideCircle() {
    this->stopActionByTag(0);
    this->setOpacity(0);
    this->setVisible(false);
}

bool LoadingCircleSprite::init(float spinSpeed) {
    if (!CCSprite::initWithFile("loadingCircle.png")) return false;
    this->setBlendFunc({ GL_SRC_ALPHA, GL_ONE });
    this->runAction(cocos2d::CCRepeatForever::create(cocos2d::CCRotateBy::create(1.f, spinSpeed * 360.f)));
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

