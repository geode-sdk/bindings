#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
bool cocos2d::CCRotateBy::initWithDuration(float p0, float p1) {
    if (!CCActionInterval::initWithDuration(p0)) return false;
    m_fAngleX = p1;
    m_fAngleY = p1;
    return true;
}

bool cocos2d::CCRotateBy::initWithDuration(float p0, float p1, float p2) {
    if (!CCActionInterval::initWithDuration(p0)) return false;
    m_fAngleX = p1;
    m_fAngleY = p2;
    return true;
}
#endif

