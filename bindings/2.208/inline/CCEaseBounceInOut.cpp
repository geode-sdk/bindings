#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCEaseBounceInOut* cocos2d::CCEaseBounceInOut::create(cocos2d::CCActionInterval* pAction) {
    CCEaseBounceInOut *pRet = new CCEaseBounceInOut();
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

cocos2d::CCObject* cocos2d::CCEaseBounceInOut::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCEaseBounceInOut* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCEaseBounceInOut*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCEaseBounceInOut();
        pNewZone = new CCZone(pCopy);
    }

    pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void cocos2d::CCEaseBounceInOut::update(float time) {
    float newT = 0;
    if (time < 0.5f)
    {
        time = time * 2;
        newT = (1 - bounceTime(1 - time)) * 0.5f;
    }
    else
    {
        newT = bounceTime(time * 2 - 1) * 0.5f + 0.5f;
    }

    m_pInner->update(newT);
}

cocos2d::CCActionInterval* cocos2d::CCEaseBounceInOut::reverse() {
    return CCEaseBounceInOut::create(m_pInner->reverse());
}
#endif

