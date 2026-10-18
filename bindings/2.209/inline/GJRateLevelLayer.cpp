#include <Geode/Bindings.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_ANDROID)
GJRateLevelLayer::GJRateLevelLayer() {
    m_level = nullptr;
    m_uploadFinished = false;
    m_submitButton = nullptr;
    m_starButtons = nullptr;
    m_stars = 0;
    m_coinsToggled = false;
    m_coinSprite = nullptr;
    m_uploadPopup = nullptr;
    m_difficultySprite = nullptr;
    m_featureState = GJFeatureState::None;
    m_loadingCircle = nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJRateLevelLayer::~GJRateLevelLayer() {
    auto glm = GameLevelManager::sharedState();
    if (glm->m_uploadActionDelegate == this) glm->m_uploadActionDelegate = nullptr;
    if (glm->m_levelRateInfoDelegate == this) glm->m_levelRateInfoDelegate = nullptr;
    CC_SAFE_RELEASE(m_starButtons);
    CC_SAFE_RELEASE(m_level);
    CC_SAFE_RELEASE(m_loadingCircle);
}

GJRateLevelLayer* GJRateLevelLayer::create(GJGameLevel* level) {
    auto ret = new GJRateLevelLayer();
    if (ret->init(level)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

CCMenuItemSpriteExtra* GJRateLevelLayer::getStarsButton(int stars, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale) {
    auto button = CCMenuItemSpriteExtra::create(
        ButtonSprite::create(cocos2d::CCString::createWithFormat("%i", stars)->getCString(), 20, 0, .5f, true, "bigFont.fnt", "GJ_button_01.png", 30.f),
        this, selector
    );
    button->setScale(scale);
    button->m_baseScale = scale;
    if (menu) menu->addChild(button);
    return button;
}
#endif

#if defined(GEODE_IS_IOS)
#endif
