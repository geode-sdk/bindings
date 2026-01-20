#include <Geode/Geode.hpp>

SetupCheckpointPopup::SetupCheckpointPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupCheckpointPopup* SetupCheckpointPopup::create(CheckpointGameObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupCheckpointPopup();
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

