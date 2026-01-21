#include <Geode/Geode.hpp>

SetupCollisionStateTriggerPopup::SetupCollisionStateTriggerPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupCollisionStateTriggerPopup* SetupCollisionStateTriggerPopup::create(EffectGameObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupCollisionStateTriggerPopup();
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

