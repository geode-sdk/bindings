#include <Geode/Geode.hpp>

SetupGameplayOffsetPopup::SetupGameplayOffsetPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupGameplayOffsetPopup* SetupGameplayOffsetPopup::create(EffectGameObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupGameplayOffsetPopup();
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

