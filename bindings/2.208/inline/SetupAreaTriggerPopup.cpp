#include <Geode/Geode.hpp>

SetupAreaTriggerPopup::SetupAreaTriggerPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupAreaTriggerPopup* SetupAreaTriggerPopup::create(EnterEffectObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupAreaTriggerPopup();
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

