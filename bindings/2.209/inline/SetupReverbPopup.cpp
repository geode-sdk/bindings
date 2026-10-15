#include <Geode/Bindings.hpp>

SetupReverbPopup::SetupReverbPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupReverbPopup* SetupReverbPopup::create(SFXTriggerGameObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupReverbPopup();
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

