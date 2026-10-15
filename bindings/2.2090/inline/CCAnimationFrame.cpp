#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCAnimationFrame::CCAnimationFrame() {
    m_pSpriteFrame = nullptr;
    m_fDelayUnits = 0.f;
    m_pUserInfo = nullptr;
}

bool cocos2d::CCAnimationFrame::initWithSpriteFrame(cocos2d::CCSpriteFrame* spriteFrame, float delayUnits, cocos2d::CCDictionary* userInfo) {
    this->setSpriteFrame(spriteFrame);
    this->setDelayUnits(delayUnits);
    this->setUserInfo(userInfo);
    return true;
}
#endif

