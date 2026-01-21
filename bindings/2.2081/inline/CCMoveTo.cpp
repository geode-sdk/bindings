#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
bool cocos2d::CCMoveTo::initWithDuration(float p0, cocos2d::CCPoint const& p1) {
    if (!CCActionInterval::initWithDuration(p0)) return false;
    m_endPosition = p1;
    return true;
}
#endif

