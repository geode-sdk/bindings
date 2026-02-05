#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
CCBlockLayer* CCBlockLayer::create() {
    auto ret = new CCBlockLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS)
bool CCBlockLayer::ccTouchBegan(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) { return true; }

void CCBlockLayer::ccTouchMoved(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void CCBlockLayer::ccTouchEnded(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void CCBlockLayer::ccTouchCancelled(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void CCBlockLayer::customSetup() {}

void CCBlockLayer::enterAnimFinished() {}

void CCBlockLayer::disableUI() {}

void CCBlockLayer::enableUI() {}

void CCBlockLayer::decrementForcePrio() {
    if (m_forcePrioRegistered) {
        m_forcePrioRegistered = false;
        cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->unregisterForcePrio(this);
    }
}

void CCBlockLayer::incrementForcePrio() {
    if (!m_forcePrioRegistered) {
        m_forcePrioRegistered = true;
        cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->registerForcePrio(this, 2);
    }
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
CCBlockLayer::CCBlockLayer() {
    m_closeOnHide = false;
    m_forcePrioRegistered = false;
}
#endif

