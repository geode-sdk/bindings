#include <Geode/mapping/CCDirector.hpp>
#include <Geode/binding/VideoOptionsLayer.hpp>
#include <Geode/binding/MenuLayer.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void VideoOptionsLayer::onInfo(cocos2d::CCObject* sender) {
    FLAlertLayer::create(
        nullptr,
        "Video Options",
        "No info yet",
        "OK",
        nullptr,
        360.f
    )->show();
}

void VideoOptionsLayer::reloadMenu() {
    cocos2d::CCDirector::sharedDirector()->replaceScene(MenuLayer::scene(true));
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

