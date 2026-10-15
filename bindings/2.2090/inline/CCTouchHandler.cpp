#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
int cocos2d::CCTouchHandler::getEnabledSelectors() {
    return m_nEnabledSelectors;
}

cocos2d::CCTouchHandler* cocos2d::CCTouchHandler::handlerWithDelegate(cocos2d::CCTouchDelegate* delegate, int priority) {
    auto ret = new CCTouchHandler();
    if (ret->initWithDelegate(delegate, priority)) {
        ret->autorelease();
        return ret;
    }
    ret->release();
    return nullptr;
}

void cocos2d::CCTouchHandler::setDelegate(cocos2d::CCTouchDelegate* delegate) {
    if (delegate) geode::cast::typeinfo_cast<cocos2d::CCObject*>(delegate)->retain();
    if (m_pDelegate) geode::cast::typeinfo_cast<cocos2d::CCObject*>(m_pDelegate)->release();
    m_pDelegate = delegate;
}

void cocos2d::CCTouchHandler::setEnalbedSelectors(int value) {
    m_nEnabledSelectors = value;
}

void cocos2d::CCTouchHandler::setPriority(int prio) {
    m_nPriority = prio;
}
#endif

