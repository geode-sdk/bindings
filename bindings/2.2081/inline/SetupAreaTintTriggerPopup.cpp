#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupAreaTintTriggerPopup* SetupAreaTintTriggerPopup::create(EnterEffectObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupAreaTintTriggerPopup();
    if (ret->init(object, objects)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MAC) || defined(GEODE_IS_ANDROID)
SetupAreaTintTriggerPopup::SetupAreaTintTriggerPopup() {
    m_hsvButton = nullptr;
    m_hsvChanged = false;
}
#endif

