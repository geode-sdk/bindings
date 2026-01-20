#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
bool cocos2d::CCFadeTo::initWithDuration(float p0, unsigned char p1) {
    if (!CCActionInterval::initWithDuration(p0)) return false;
    m_toOpacity = p1;
    return true;
}
#endif

