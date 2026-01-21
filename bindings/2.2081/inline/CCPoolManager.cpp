#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCAutoreleasePool* cocos2d::CCPoolManager::getCurReleasePool() {
    if (!m_pCurReleasePool) this->push();
    return m_pCurReleasePool;
}
#endif

