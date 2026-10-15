#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCTransitionScene::CCTransitionScene() {}

cocos2d::CCTransitionScene* cocos2d::CCTransitionScene::create(float t, cocos2d::CCScene* scene) {
    auto ret = new CCTransitionScene();
    if (ret->initWithDuration(t, scene)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

