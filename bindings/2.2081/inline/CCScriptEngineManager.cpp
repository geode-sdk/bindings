#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCScriptEngineManager::setScriptEngine(cocos2d::CCScriptEngineProtocol* engine) {
    if (m_pScriptEngine) delete m_pScriptEngine;
    m_pScriptEngine = engine;
}
#endif

