#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCEaseElastic* cocos2d::CCEaseElastic::create(cocos2d::CCActionInterval* pAction) {
    return cocos2d::CCEaseElastic::create(pAction, 0.3f);
}

cocos2d::CCEaseElastic* cocos2d::CCEaseElastic::create(cocos2d::CCActionInterval* pAction, float fPeriod) {
    CCEaseElastic *pRet = new CCEaseElastic();
    if (pRet)
    {
        if (pRet->initWithAction(pAction, fPeriod))
        {
            pRet->autorelease();
        }
        else
        {
            CC_SAFE_RELEASE_NULL(pRet);
        }
    }

    return pRet; 
}

cocos2d::CCObject* cocos2d::CCEaseElastic::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCEaseElastic* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCEaseElastic*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCEaseElastic();
        pNewZone = new CCZone(pCopy);
    }

    pCopy->initWithAction((cocos2d::CCActionInterval *)(m_pInner->copy()->autorelease()), m_fPeriod);

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

cocos2d::CCActionInterval* cocos2d::CCEaseElastic::reverse() {
    return nullptr;
}

bool cocos2d::CCEaseElastic::initWithAction(cocos2d::CCActionInterval* pAction, float fPeriod) {
    if (CCActionEase::initWithAction(pAction))
    {
        m_fPeriod = fPeriod;
        return true;
    }

    return false;
}
#endif

