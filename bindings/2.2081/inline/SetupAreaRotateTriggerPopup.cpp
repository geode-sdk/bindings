#include <Geode/Geode.hpp>

SetupAreaRotateTriggerPopup::SetupAreaRotateTriggerPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupAreaRotateTriggerPopup* SetupAreaRotateTriggerPopup::create(EnterEffectObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupAreaRotateTriggerPopup();
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

