#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
CCAnimatedSprite* CCAnimatedSprite::createWithType(char const* definition, cocos2d::CCTexture2D* texture, bool useTexture) {
    auto ret = new CCAnimatedSprite();
    if (ret->initWithType(definition, texture, useTexture)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void CCAnimatedSprite::cleanupSprite() {
    if (m_paSprite) m_paSprite->cleanup();
    if (m_fbfSprite) m_fbfSprite->cleanup();
    if (m_animationManager) m_animationManager->doCleanup();
    if (m_fbfSprite) m_fbfSprite->removeFromParentAndCleanup(true);
    if (m_paSprite) m_paSprite->removeFromParentAndCleanup(true);
    m_animationManager = nullptr;
    m_sprite = nullptr;
    m_fbfSprite = nullptr;
    m_paSprite = nullptr;
    m_spriteMode = (spriteMode)0;
}

void CCAnimatedSprite::runAnimationForced(gd::string animation) {
    m_animationManager->overridePrio();
    m_animationManager->runAnimation(animation);
}

void CCAnimatedSprite::stopTween() {
    m_paSprite->stopAllActions();
    this->stopActionByTag(1);
    m_activeTween = "";
}

void CCAnimatedSprite::willPlayAnimation() {
    this->stopActionByTag(1);
    m_activeTween = "";
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MAC) || defined(GEODE_IS_ANDROID)
CCAnimatedSprite::CCAnimatedSprite() {
    m_animationManager = nullptr;
    m_sprite = nullptr;
    m_fbfSprite = nullptr;
    m_paSprite = nullptr;
    m_spriteMode = (spriteMode)0;
    m_delegate = nullptr;
}
#endif

