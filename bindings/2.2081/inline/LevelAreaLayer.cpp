#include <Geode/Geode.hpp>

LevelAreaLayer::LevelAreaLayer() {
    m_towerSprite = nullptr;
    m_godRays = nullptr;
    m_enteringTower = false;
    m_exiting = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
LevelAreaLayer::~LevelAreaLayer() {
    CC_SAFE_RELEASE(m_godRays);
}

LevelAreaLayer* LevelAreaLayer::create() {
    auto ret = new LevelAreaLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

