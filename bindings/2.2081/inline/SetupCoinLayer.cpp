#include <Geode/Geode.hpp>

SetupCoinLayer::SetupCoinLayer() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupCoinLayer* SetupCoinLayer::create(EffectGameObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupCoinLayer();
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

