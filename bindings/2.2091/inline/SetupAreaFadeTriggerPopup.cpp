#include <Geode/Bindings.hpp>

SetupAreaFadeTriggerPopup::SetupAreaFadeTriggerPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupAreaFadeTriggerPopup* SetupAreaFadeTriggerPopup::create(EnterEffectObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupAreaFadeTriggerPopup();
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

