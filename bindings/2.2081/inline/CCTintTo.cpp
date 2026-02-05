#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
bool cocos2d::CCTintTo::initWithDuration(float p0, unsigned char p1, unsigned char p2, unsigned char p3) {
    if (!CCActionInterval::initWithDuration(p0)) return false;
    m_to.r = p1;
    m_to.g = p2;
    m_to.b = p3;
    return true;
}
#endif

