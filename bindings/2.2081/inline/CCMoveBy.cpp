#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
bool cocos2d::CCMoveBy::initWithDuration(float p0, cocos2d::CCPoint const& p1) {
    if (!CCActionInterval::initWithDuration(p0)) return false;
    m_positionDelta = p1;
    return true;
}
#endif

