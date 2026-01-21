#include <Geode/Geode.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool EndLevelLayer::init(PlayLayer* playLayer) {
    m_playLayer = playLayer;
    return GJDropDownLayer::init(" ", 230.f, true);
}

void EndLevelLayer::onEveryplay(cocos2d::CCObject* sender) {}
#endif

#if defined(GEODE_IS_WINDOWS)
EndLevelLayer::EndLevelLayer() {
    m_playLayer = nullptr;
    m_notLocal = false;
    m_coinsVerified = false;
    m_unknown3 = false;
    m_exiting = false;
    m_animateCoins = false;
    m_endEffectPlayed = false;
    m_sideMenu = nullptr;
    m_coinsToAnimate = nullptr;
    m_orbs = 0;
    m_stars = 0;
    m_moons = 0;
    m_diamonds = 0;
    m_hidden = false;
}

EndLevelLayer::~EndLevelLayer() {
    CC_SAFE_RELEASE(m_coinsToAnimate);
}

EndLevelLayer* EndLevelLayer::create(PlayLayer* playLayer) {
    auto ret = new EndLevelLayer();
    if (ret->init(playLayer)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void EndLevelLayer::enterAnimFinished() {}

void EndLevelLayer::keyUp(cocos2d::enumKeyCodes key, double timestamp) {}
#endif

#if defined(GEODE_IS_IOS)
#endif

