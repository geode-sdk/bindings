#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
bool cocos2d::CCRepeatForever::initWithAction(cocos2d::CCActionInterval* p0) {
    p0->retain();
    m_pInnerAction = p0;
    return true;
}
#endif

