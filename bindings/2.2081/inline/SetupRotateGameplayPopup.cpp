#include <Geode/Geode.hpp>

SetupRotateGameplayPopup::SetupRotateGameplayPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupRotateGameplayPopup* SetupRotateGameplayPopup::create(RotateGameplayGameObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupRotateGameplayPopup();
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

