#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool cocos2d::CCSchedulerScriptHandlerEntry::init(float fInterval, bool bPaused) {
    m_pTimer = new CCTimer();
    m_pTimer->initWithScriptHandler(this->m_nHandler, fInterval);
    m_pTimer->autorelease();
    m_pTimer->retain();
    m_bPaused = bPaused;
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

