#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::CCSchedulerScriptHandlerEntry::~CCSchedulerScriptHandlerEntry() {
    m_pTimer->release();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

