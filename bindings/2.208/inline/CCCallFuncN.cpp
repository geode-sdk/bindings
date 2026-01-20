#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCCallFuncN* cocos2d::CCCallFuncN::create(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) {
	CCCallFuncN *pRet = new CCCallFuncN();

    if (pRet && pRet->initWithTarget(pSelectorTarget, selector))
    {
        pRet->autorelease();
        return pRet;
    }

    CC_SAFE_DELETE(pRet);
    return NULL;
}

bool cocos2d::CCCallFuncN::initWithTarget(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) {
    if (CCCallFunc::initWithTarget(pSelectorTarget)) {
        m_pCallFuncN = selector;
        return true;
    }

    return false;
}

cocos2d::CCObject* cocos2d::CCCallFuncN::copyWithZone(cocos2d::CCZone* zone) {
    cocos2d::CCZone* pNewZone = NULL;
    CCCallFuncN* pRet = NULL;

    if (zone && zone->m_pCopyObject) {
        //in case of being called at sub class
        pRet = (CCCallFuncN*) (zone->m_pCopyObject);
    } else {
        pRet = new CCCallFuncN();
        zone = pNewZone = new CCZone(pRet);
    }

    CCCallFunc::copyWithZone(zone);
    pRet->initWithTarget(m_pSelectorTarget, m_pCallFuncN);
    CC_SAFE_DELETE(pNewZone);
    return pRet;
}

void cocos2d::CCCallFuncN::execute() {
    if (m_pCallFuncN) {
        (m_pSelectorTarget->*m_pCallFuncN)(m_pTarget);
    }
    // if (m_nScriptHandler) {
    //     CCScriptEngineManager::sharedManager()->getScriptEngine()->executeCallFuncActionEvent(this, m_pTarget);
    // }
}
#endif

