#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCTimer::CCTimer() {
    m_pTarget = nullptr;
    m_fElapsed = -1.f;
    m_bRunForever = false;
    m_bUseDelay = false;
    m_uTimesExecuted = 0;
    m_uRepeat = 0;
    m_fDelay = 0.f;
    m_fInterval = 0.f;
    m_pfnSelector = nullptr;
    m_nScriptHandler = 0;
}

float cocos2d::CCTimer::getInterval() const {
    return m_fInterval;
}

cocos2d::SEL_SCHEDULE cocos2d::CCTimer::getSelector() const {
    return m_pfnSelector;
}

bool cocos2d::CCTimer::initWithScriptHandler(int handler, float seconds) {
    m_nScriptHandler = handler;
    m_fElapsed = -1.f;
    m_fInterval = seconds;
    return true;
}

bool cocos2d::CCTimer::initWithTarget(cocos2d::CCObject* target, cocos2d::SEL_SCHEDULE selector) {
    return this->initWithTarget(target, selector, 0.f, kCCRepeatForever, 0.f);
}

bool cocos2d::CCTimer::initWithTarget(cocos2d::CCObject* target, cocos2d::SEL_SCHEDULE selector, float seconds, unsigned int repeat, float delay) {
    m_pTarget = target;
    m_pfnSelector = selector;
    m_fElapsed = -1.f;
    m_fInterval = seconds;
    m_fDelay = delay;
    m_bUseDelay = delay > 0.f;
    m_uRepeat = repeat;
    m_bRunForever = repeat == kCCRepeatForever;
    return true;
}

void cocos2d::CCTimer::setInterval(float interval) {
    m_fInterval = interval;
}

cocos2d::CCTimer* cocos2d::CCTimer::timerWithTarget(cocos2d::CCObject* target, cocos2d::SEL_SCHEDULE selector) {
    auto ret = new CCTimer();
    ret->initWithTarget(target, selector, 0.f, kCCRepeatForever, 0.f);
    ret->autorelease();
    return ret;
}

cocos2d::CCTimer* cocos2d::CCTimer::timerWithTarget(cocos2d::CCObject* target, cocos2d::SEL_SCHEDULE selector, float seconds) {
    auto ret = new CCTimer();
    ret->initWithTarget(target, selector, seconds, kCCRepeatForever, 0.f);
    ret->autorelease();
    return ret;
}

cocos2d::CCTimer* cocos2d::CCTimer::timerWithScriptHandler(int handler, float seconds) {
    auto ret = new CCTimer();
    ret->initWithScriptHandler(handler, seconds);
    ret->autorelease();
    return ret;
}
#endif

