#include <Geode/Bindings.hpp>

float PlatformToolbox::getDeviceRefreshRate() {
    return 60.f;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void PlatformToolbox::downloadAndSavePromoImage(gd::string url, gd::string path) {}

void PlatformToolbox::onGameLaunch() {}

void PlatformToolbox::setBlockBackButton(bool block) {}

void PlatformToolbox::signInGooglePlay() {}

void PlatformToolbox::signOutGooglePlay() {}

void PlatformToolbox::toggleCallGLFinish(bool enable) {}

void PlatformToolbox::toggleCPUSleepMode(bool enable) {}

void PlatformToolbox::updateMouseControl() {
    #ifdef GEODE_IS_WINDOWS
    cocos2d::CCApplication::sharedApplication()->updateMouseControl();
    #endif
}

void PlatformToolbox::updateWindowedSize(float width, float height) {
    #ifdef GEODE_IS_WINDOWS
    cocos2d::CCEGLView::sharedOpenGLView()->setWindowedSize({ width, height });
    #endif
}
#endif

#if defined(GEODE_IS_WINDOWS)
void PlatformToolbox::activateGameCenter() {}

bool PlatformToolbox::doesFileExist(gd::string path) {
    return false;
}

void PlatformToolbox::gameDidSave() {
    cocos2d::CCApplication::sharedApplication()->gameDidSave();
}

gd::string PlatformToolbox::getRawPath(char const* path) {
    return "";
}

gd::string PlatformToolbox::getUserID() {
    return PlatformToolbox::getUniqueUserID();
}

void PlatformToolbox::hideCursor() {
    cocos2d::CCEGLView::sharedOpenGLView()->showCursor(false);
}

bool PlatformToolbox::isControllerConnected() {
    return cocos2d::CCApplication::sharedApplication()->getControllerConnected();
}

bool PlatformToolbox::isHD() {
    return false;
}

bool PlatformToolbox::isLocalPlayerAuthenticated() {
    return false;
}

bool PlatformToolbox::isLowMemoryDevice() {
    return false;
}

bool PlatformToolbox::isNetworkAvailable() {
    return true;
}

bool PlatformToolbox::isSignedInGooglePlay() {
    return false;
}

void PlatformToolbox::logEvent(char const* event) {}

void PlatformToolbox::onNativePause() {}

void PlatformToolbox::onNativeResume() {}

void PlatformToolbox::onToggleKeyboard() {}

void PlatformToolbox::openAppPage() {}

void PlatformToolbox::reportLoadingFinished() {}

void PlatformToolbox::resizeWindow(float width, float height) {
    auto view = cocos2d::CCEGLView::sharedOpenGLView();
    view->resizeWindow(width, height);
    view->centerWindow();
}

void PlatformToolbox::sendMail(char const* title, char const* content, char const* address) {}

void PlatformToolbox::setKeyboardState(bool state) {}

bool PlatformToolbox::shouldResumeSound() {
    return true;
}

void PlatformToolbox::showAchievements() {}

void PlatformToolbox::showCursor() {
    cocos2d::CCEGLView::sharedOpenGLView()->showCursor(true);
}

void PlatformToolbox::toggleForceTimer(bool enable) {
    cocos2d::CCApplication::sharedApplication()->setForceTimer(enable);
}

void PlatformToolbox::toggleFullScreen(bool fullscreen, bool borderless, bool fix) {
    cocos2d::CCEGLView::sharedOpenGLView()->toggleFullScreen(fullscreen, borderless, fix);
}

void PlatformToolbox::toggleLockCursor(bool isLocked) {
    cocos2d::CCEGLView::sharedOpenGLView()->toggleLockCursor(isLocked);
}

void PlatformToolbox::toggleMouseControl(bool enable) {
    cocos2d::CCApplication::sharedApplication()->toggleMouseControl(enable);
}

void PlatformToolbox::toggleSmoothFix(bool enable) {
    cocos2d::CCDirector::sharedDirector()->setSmoothFix(enable);
}

void PlatformToolbox::toggleVerticalSync(bool enable) {
    cocos2d::CCApplication::sharedApplication()->toggleVerticalSync(enable);
}

void PlatformToolbox::tryShowRateDialog(gd::string gameName) {}
#endif

#if defined(GEODE_IS_IOS)
#endif

