#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCTargetedTouchHandler::setSwallowsTouches(bool bSwallowsTouches) {
    m_bSwallowsTouches = bSwallowsTouches;
}
#endif

