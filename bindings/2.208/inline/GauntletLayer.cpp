#include <Geode/Geode.hpp>

GauntletLayer::GauntletLayer() {
    m_levels = nullptr;
    m_loadingCircle = nullptr;
    m_backgroundSprite = nullptr;
    m_unkPtr = nullptr;
    m_activeItemButton = nullptr;
    m_activeObjects = nullptr;
    m_tryAgainText = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GauntletLayer::~GauntletLayer() {
    auto glm = GameLevelManager::sharedState();
    if (glm->m_levelManagerDelegate == this) glm->m_levelManagerDelegate = nullptr;
    CC_SAFE_RELEASE(m_activeObjects);
}

GauntletLayer* GauntletLayer::create(GauntletType type) {
    auto ret = new GauntletLayer();
    if (ret->init(type)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

