#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCCallFuncND* cocos2d::CCCallFuncND::create(cocos2d::CCObject* p0, cocos2d::SEL_CallFuncND p1, void* p2) {
    auto ret = new CCCallFuncND();
    if (ret->initWithTarget(p0, p1, p2)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool cocos2d::CCCallFuncND::initWithTarget(cocos2d::CCObject* p0, cocos2d::SEL_CallFuncND p1, void* p2) {
    if (!CCCallFunc::initWithTarget(p0)) return false;
    m_pData = p2;
    m_pCallFuncND = p1;
    return true;
}

cocos2d::CCObject* cocos2d::CCCallFuncND::copyWithZone(cocos2d::CCZone* p0) {
    cocos2d::CCZone* zone = nullptr;
    cocos2d::CCCallFuncND* ret = nullptr;
    if (p0 && p0->m_pCopyObject) {
        ret = static_cast<cocos2d::CCCallFuncND*>(p0->m_pCopyObject);
    } else {
        ret = new cocos2d::CCCallFuncND();
        zone = p0 = new cocos2d::CCZone(ret);
    }
    CCCallFunc::copyWithZone(p0);
    ret->initWithTarget(m_pSelectorTarget, m_pCallFuncND, m_pData);
    CC_SAFE_DELETE(zone);
    return ret;
}

void cocos2d::CCCallFuncND::execute() {
    if (m_pCallFuncND) {
        (m_pSelectorTarget->*m_pCallFuncND)(m_pTarget, m_pData);
    }
}
#endif

