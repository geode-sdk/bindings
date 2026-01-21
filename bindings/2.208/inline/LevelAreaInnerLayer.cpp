#include <Geode/Geode.hpp>

LevelAreaInnerLayer::LevelAreaInnerLayer() {
    m_nextFloorButton = nullptr;
    m_enteringLevel = false;
    m_levelID = 0;
    m_exiting = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void LevelAreaInnerLayer::tryShowAd() {
    GameManager::sharedState()->tryShowInterstitial(120, 140, 0);
}
#endif

#if defined(GEODE_IS_WINDOWS)
LevelAreaInnerLayer* LevelAreaInnerLayer::create(bool returning) {
    auto ret = new LevelAreaInnerLayer();
    if (ret->init(returning)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

