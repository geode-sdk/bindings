#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
GJGarageLayer::GJGarageLayer() {
    m_playerObject = nullptr;
    m_unknown = nullptr;
    m_supporter = nullptr;
    m_hasClosed = false;
    m_cursor2 = nullptr;
    m_currentIcon = nullptr;
    m_iconSelection = nullptr;
    m_iconID = 0;
    m_selectedIconType = IconType::Cube;
    m_videoPlaying = false;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
gd::string GJGarageLayer::achievementForUnlock(int id, UnlockType type) {
    auto achievementManager = AchievementManager::sharedState();
    auto achievement = achievementManager->achievementForUnlock(id, type);
    return achievementManager->isAchievementAvailable(achievement) ? achievement : "";
}

gd::string GJGarageLayer::getLockFrame(int id, UnlockType type) {
    return "GJ_lock_001";
}

void GJGarageLayer::playShadowEffect() {
    auto circleWave = CCCircleWave::create(20.f, 60.f, .3f, false);
    circleWave->m_color.r = 0;
    circleWave->m_color.g = 0;
    circleWave->m_color.b = 0;
    circleWave->m_opacityMod = .5f;
    circleWave->m_blendAdditive = false;
    circleWave->setPosition(m_playerObject->getPosition());
    this->addChild(circleWave, -1);
}

void GJGarageLayer::showUnlockPopupNew(int id, UnlockType type) {
    ItemInfoPopup::create(id, type)->show();
}

void GJGarageLayer::toggleGlow() {
    auto gameManager = GameManager::sharedState();
    gameManager->m_playerGlow = !gameManager->m_playerGlow;
    m_playerObject->m_hasGlowOutline = gameManager->m_playerGlow;
    m_playerObject->updateColors();
    if (gameManager->m_playerGlow) this->playRainbowEffect();
}

void GJGarageLayer::updatePlayerName(char const* name) {}
#endif

#if defined(GEODE_IS_WINDOWS)
GJGarageLayer::~GJGarageLayer() {
    auto gm = GameManager::sharedState();
    gm->m_gameRateDelegate1 = nullptr;
    CC_SAFE_RELEASE(m_tabButtons);
    CC_SAFE_RELEASE(m_pageButtons);
    if (gm->m_rewardedVideoDelegate == this) gm->m_rewardedVideoDelegate = nullptr;
}

GJGarageLayer* GJGarageLayer::node() {
    auto ret = new GJGarageLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

gd::string GJGarageLayer::titleForUnlock(int id, UnlockType type) {
    auto achievementManager = AchievementManager::sharedState();
    return achievementManager->getAchievementsWithID(achievementManager->achievementForUnlock(id, type).c_str())->valueForKey("title")->getCString();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

