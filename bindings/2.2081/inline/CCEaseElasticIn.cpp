#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCEaseElasticIn* cocos2d::CCEaseElasticIn::create(cocos2d::CCActionInterval* pAction) {
    return cocos2d::CCEaseElasticIn::create(pAction, 0.3f);
}
#endif

