#include <Geode/Bindings.hpp>

EditGameObjectPopup::EditGameObjectPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
EditGameObjectPopup* EditGameObjectPopup::create(EffectGameObject* object, cocos2d::CCArray* objects, bool platformer) {
    auto ret = new EditGameObjectPopup();
    if (ret->init(object, objects, platformer)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

