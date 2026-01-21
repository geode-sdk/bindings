#include <Geode/Geode.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS) || defined(GEODE_IS_ANDROID)
SetupOptionsTriggerPopup::SetupOptionsTriggerPopup() {
    m_togglePage = 0;
}
#endif

#if defined(GEODE_IS_WINDOWS)
SetupOptionsTriggerPopup* SetupOptionsTriggerPopup::create(GameOptionsTrigger* object, cocos2d::CCArray* objects) {
    auto ret = new SetupOptionsTriggerPopup();
    if (ret->init(object, objects)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

