#include <Geode/Geode.hpp>

CCMenuItemSpriteExtra* CCMenuItemSpriteExtra::create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
    return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
}

void CCMenuItemSpriteExtra::setSprite(cocos2d::CCSprite* sprite) {
    this->setNormalImage(sprite);
    this->updateSprite();
}

void CCMenuItemSpriteExtra::updateSprite() {
    auto sprite = this->getNormalImage();
    auto size = sprite->getScaledContentSize();
    sprite->setPosition(size / 2);
    sprite->setAnchorPoint({ .5f, .5f });
    this->setContentSize(size);
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void CCMenuItemSpriteExtra::setSizeMult(float mult) {
    //inlined on windows, member is in CCMenuItemSprite
    m_fSizeMult = mult;
}

void CCMenuItemSpriteExtra::useAnimationType(MenuAnimationType type) {
    m_startPosition = this->getNormalImage()->getPosition();
    m_animationType = type;
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MAC) || defined(GEODE_IS_ANDROID)
CCMenuItemSpriteExtra::CCMenuItemSpriteExtra() {
    m_animationEnabled = false; //this is changed to true in init
    m_colorEnabled = false;
    m_colorDip = 0.78431374f;
    m_scaleMultiplier = 1.f; //this is changed to 1.26f in init
    m_volume = 1.f;
    m_duration = 0.3f;
    m_unselectedDuration = 0.4f;
    m_animationType = MenuAnimationType::Scale;
    m_iconType = IconType::Cube;
    m_baseScale = 0.f; //this is changed to 1.f in init
}
#endif

