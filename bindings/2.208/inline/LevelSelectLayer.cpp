#include <Geode/Geode.hpp>

LevelSelectLayer::LevelSelectLayer() {
    m_width = 0.f;
    m_backgroundSprite = nullptr;
    m_groundLayer = nullptr;
    m_scrollLayer = nullptr;
    m_unknown = 0;
    m_scrolls = 0;
    m_masterDetectiveUnlocked = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void LevelSelectLayer::tryShowAd() {
    GameManager::sharedState()->tryShowInterstitial(120, 140, 0);
}
#endif

#if defined(GEODE_IS_WINDOWS)
LevelSelectLayer* LevelSelectLayer::create(int page) {
    auto ret = new LevelSelectLayer();
    if (ret->init(page)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::ccColor3B LevelSelectLayer::getColorValue(int page1, int page2, float progress) {
    auto modifier = std::clamp(progress * 2.f / 3.f - .2f, 0.f, 1.f);
    auto color1 = this->colorForPage(page1);
    auto color2 = this->colorForPage(page2);
    if (modifier > .8f) modifier = 1.f;
    else if (modifier < .2f) modifier = 0.f;
    else modifier = (modifier - .2f) / .6f;
    auto complement = 1.f - modifier;
    cocos2d::ccColor3B ret;
    ret.r = color1.r * complement + color2.r * modifier;
    ret.g = color1.g * complement + color2.g * modifier;
    ret.b = color1.b * complement + color2.b * modifier;
    return ret;
}

void LevelSelectLayer::onPlay(cocos2d::CCObject* sender) {
    if (!*reinterpret_cast<bool*>(geode::base::get() + 0x6a3048)) {
        static_cast<LevelPage*>(m_scrollLayer->getPage(m_scrollLayer->m_page))->onPlay(nullptr);
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

