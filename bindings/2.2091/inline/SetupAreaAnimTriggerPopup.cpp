#include <Geode/Bindings.hpp>

SetupAreaAnimTriggerPopup::SetupAreaAnimTriggerPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupAreaAnimTriggerPopup* SetupAreaAnimTriggerPopup::create(EnterEffectObject* object, cocos2d::CCArray* objects, int id) {
    auto ret = new SetupAreaAnimTriggerPopup();
    if (ret->init(object, objects, id)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

