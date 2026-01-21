#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCEaseBackInOut* cocos2d::CCEaseBackInOut::create(cocos2d::CCActionInterval* pAction) {
    CCEaseBackInOut *pRet = new CCEaseBackInOut();
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

cocos2d::CCObject* cocos2d::CCEaseBackInOut::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCEaseBackInOut* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCEaseBackInOut*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCEaseBackInOut();
        pNewZone = new CCZone(pCopy);
    }

    pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void cocos2d::CCEaseBackInOut::update(float time) {
    float overshoot = 1.70158f * 1.525f;

    time = time * 2;
    if (time < 1)
    {
        m_pInner->update((time * time * ((overshoot + 1) * time - overshoot)) / 2);
    }
    else
    {
        time = time - 2;
        m_pInner->update((time * time * ((overshoot + 1) * time + overshoot)) / 2 + 1);
    }
}

cocos2d::CCActionInterval* cocos2d::CCEaseBackInOut::reverse() {
    return CCEaseBackInOut::create(m_pInner->reverse());
}
#endif

