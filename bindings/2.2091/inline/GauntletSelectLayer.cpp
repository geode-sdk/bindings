#include <Geode/Bindings.hpp>

GauntletSelectLayer::GauntletSelectLayer() {
    m_backgroundSprite = nullptr;
    m_scrollLayer = nullptr;
    m_refreshButton = nullptr;
    m_exiting = false;
    m_playing = false;
    m_tryAgainText = nullptr;
    m_loadingCircle = nullptr;
    m_gauntlets = nullptr;
    m_playBlocked = false;
    m_gauntletID = 0;
    m_videoPlaying = false;
    m_locked = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GauntletSelectLayer::showUnlockGauntlet() {
    static_cast<GauntletNode*>(m_gauntlets->objectForKey(m_gauntletID))->onUnlock();
}

void GauntletSelectLayer::updateArrows() {
    m_leftButton->setVisible(m_scrollLayer != nullptr);
    m_rightButton->setVisible(m_scrollLayer != nullptr);
}
#endif

#if defined(GEODE_IS_WINDOWS)
GauntletSelectLayer::~GauntletSelectLayer() {
    auto glm = GameLevelManager::sharedState();
    if (glm->m_levelManagerDelegate == this) glm->m_levelManagerDelegate = nullptr;
    CC_SAFE_RELEASE(m_gauntlets);
}

GauntletSelectLayer* GauntletSelectLayer::create(int unused) {
    auto ret = new GauntletSelectLayer();
    if (ret->init(unused)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

