#include <Geode/Bindings.hpp>

SetupObjectOptions2Popup::SetupObjectOptions2Popup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupObjectOptions2Popup* SetupObjectOptions2Popup::create(GameObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupObjectOptions2Popup();
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

