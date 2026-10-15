#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void AppDelegate::setIdleTimerDisabled(bool disabled) {}
#endif

#if defined(GEODE_IS_WINDOWS)
AppDelegate* AppDelegate::get() {
    return static_cast<AppDelegate*>(cocos2d::CCApplication::sharedApplication());
}

float AppDelegate::bgScale() {
    return cocos2d::CCDirector::sharedDirector()->getScreenScaleFactorMax();
}

void AppDelegate::checkSound() {
    if (this->musicTest()) FMODAudioEngine::sharedEngine()->pauseAllMusic(true);
}

void AppDelegate::hideLoadingCircle() {}

void AppDelegate::loadingIsFinished() {
    m_loadingFinished = true;
    PlatformToolbox::reportLoadingFinished();
}

void AppDelegate::showLoadingCircle(bool unk1, bool unk2, bool unk3) {}
#endif

#if defined(GEODE_IS_IOS)
void AppDelegate::platformShutdown() {}
#endif

