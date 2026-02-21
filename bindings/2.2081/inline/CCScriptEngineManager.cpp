#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCScriptEngineManager::~CCScriptEngineManager() {
    this->removeScriptEngine();
}

void cocos2d::CCScriptEngineManager::purgeSharedManager() {
    auto manager = reinterpret_cast<cocos2d::CCScriptEngineManager**>(geode::base::get() + 0x86d818);
    if (*manager) {
        delete *manager;
        *manager = nullptr;
    }
}

void cocos2d::CCScriptEngineManager::removeScriptEngine() {
    if (m_pScriptEngine) {
        delete m_pScriptEngine;
        m_pScriptEngine = nullptr;
    }
}

void cocos2d::CCScriptEngineManager::setScriptEngine(cocos2d::CCScriptEngineProtocol* engine) {
    this->removeScriptEngine();
    m_pScriptEngine = engine;
}
#endif

