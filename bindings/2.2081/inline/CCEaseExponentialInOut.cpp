#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCEaseExponentialInOut* cocos2d::CCEaseExponentialInOut::create(cocos2d::CCActionInterval* pAction) {
    CCEaseExponentialInOut *pRet = new CCEaseExponentialInOut();
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

cocos2d::CCObject* cocos2d::CCEaseExponentialInOut::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCEaseExponentialInOut* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCEaseExponentialInOut*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCEaseExponentialInOut();
        pNewZone = new CCZone(pCopy);
    }

    pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void cocos2d::CCEaseExponentialInOut::update(float time) {
    time /= 0.5f;
    if (time < 1)
    {
        time = 0.5f * powf(2, 10 * (time - 1));
    }
    else
    {
        time = 0.5f * (-powf(2, -10 * (time - 1)) + 2);
    }

    m_pInner->update(time);
}

cocos2d::CCActionInterval* cocos2d::CCEaseExponentialInOut::reverse() {
    return CCEaseExponentialInOut::create(m_pInner->reverse());
}
#endif

