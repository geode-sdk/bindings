#include <Geode/Geode.hpp>

MenuLayer* MenuLayer::get() {
    return GameManager::get()->m_menuLayer;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void MenuLayer::onEveryplay(cocos2d::CCObject* sender) {}

void MenuLayer::onGooglePlayGames(cocos2d::CCObject* sender) {
    if (PlatformToolbox::isSignedInGooglePlay()) {
        GameManager::sharedState()->syncPlatformAchievements();
        PlatformToolbox::showAchievements();
    }
    else PlatformToolbox::signInGooglePlay();
}

void MenuLayer::onTrailer(cocos2d::CCObject* sender) {
    PlatformToolbox::logEvent("gjl_trailer");
    if (GameToolbox::doWeHaveInternet()) {
        cocos2d::CCApplication::sharedApplication()->openURL("https://www.youtube.com/watch?v=k90y6PIzIaE");
    }
}

void MenuLayer::showMeltdownPromo() {}

void MenuLayer::tryShowAd(float dt) {
    auto gameManager = GameManager::sharedState();
    if (gameManager->shouldShowInterstitial(180, 140, 0)) {
        gameManager->showInterstitial();
        this->unschedule(schedule_selector(MenuLayer::tryShowAd));
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
void MenuLayer::onGameCenter(cocos2d::CCObject* sender) {
    auto gameManager = GameManager::sharedState();
    if (gameManager->getGameVariable(GameVar::EnableGameCenter)) {
        gameManager->syncPlatformAchievements();
        PlatformToolbox::showAchievements();
    }
    this->showGCQuestion();
}

void MenuLayer::showGCQuestion() {
    auto alert = FLAlertLayer::create(
        this,
        "Game Center",
        "Do you want to <cg>enable</c>\n<cy>Game Center</c>? You can change this anytime in the options menu.",
        "NO",
        "YES",
        300.f
    );
    alert->setTag(1);
    alert->m_scene = AppDelegate::get()->m_runningScene;
    alert->show();
}

void MenuLayer::syncPlatformAchievements(float dt) {
    this->unschedule(schedule_selector(MenuLayer::syncPlatformAchievements));
    GameManager::sharedState()->syncPlatformAchievements();
}

void MenuLayer::videoOptionsClosed() {
    m_menuGameLayer->m_videoOptionsOpen = false;
}

void MenuLayer::videoOptionsOpened() {
    m_menuGameLayer->m_videoOptionsOpen = true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

