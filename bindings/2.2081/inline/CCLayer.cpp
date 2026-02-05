#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
int cocos2d::CCLayer::excuteScriptTouchHandler(int type, cocos2d::CCTouch* touch) {
    return CCScriptEngineManager::sharedManager()->getScriptEngine()->executeLayerTouchEvent(this, type, touch);
}

int cocos2d::CCLayer::excuteScriptTouchHandler(int type, cocos2d::CCSet* touches) {
    return CCScriptEngineManager::sharedManager()->getScriptEngine()->executeLayerTouchesEvent(this, type, touches);
}

void cocos2d::CCLayer::registerScriptAccelerateHandler(int handler) {
    this->unregisterScriptAccelerateHandler();
    m_pScriptAccelerateHandlerEntry = CCScriptHandlerEntry::create(handler);
    m_pScriptAccelerateHandlerEntry->retain();
}

void cocos2d::CCLayer::registerScriptKeypadHandler(int handler) {
    this->unregisterScriptKeypadHandler();
    m_pScriptKeypadHandlerEntry = CCScriptHandlerEntry::create(handler);
    m_pScriptKeypadHandlerEntry->retain();
}

void cocos2d::CCLayer::unregisterScriptAccelerateHandler() {
    CC_SAFE_RELEASE_NULL(m_pScriptAccelerateHandlerEntry);
}

void cocos2d::CCLayer::unregisterScriptKeypadHandler() {
    CC_SAFE_RELEASE_NULL(m_pScriptKeypadHandlerEntry);
}
#endif

