#include <Geode/Bindings.hpp>

SetupDashRingPopup::SetupDashRingPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupDashRingPopup* SetupDashRingPopup::create(DashRingObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupDashRingPopup();
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

