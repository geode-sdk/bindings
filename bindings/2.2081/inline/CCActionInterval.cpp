#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCActionInterval* cocos2d::CCActionInterval::create(float p0) {
    auto ret = new CCActionInterval();
    ret->initWithDuration(p0);
    ret->autorelease();
    return ret;
}

float cocos2d::CCActionInterval::getAmplitudeRate() {
    return 0.f;
}

void cocos2d::CCActionInterval::setAmplitudeRate(float p0) {}
#endif

