#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCMouseDispatcher::forceAddDelegate(cocos2d::CCMouseDelegate* p0) {
    if (auto handler = CCMouseHandler::handlerWithDelegate(p0)) m_pMouseHandlers->addObject(handler);
}
#endif

