#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCEaseBounce* cocos2d::CCEaseBounce::create(cocos2d::CCActionInterval* pAction) {
    CCEaseBounce *pRet = new CCEaseBounce();
    if (pRet)
    {
        if (pRet->initWithAction(pAction))
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

cocos2d::CCObject* cocos2d::CCEaseBounce::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCEaseBounce* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCEaseBounce*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCEaseBounce();
        pNewZone = new CCZone(pCopy);
    }

    pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
    
    CC_SAFE_DELETE(pNewZone);
    return pCopy; 
}

cocos2d::CCActionInterval* cocos2d::CCEaseBounce::reverse() {
    return CCEaseBounce::create(m_pInner->reverse());
}
#endif

