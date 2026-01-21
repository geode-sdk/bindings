#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCEaseSineIn* cocos2d::CCEaseSineIn::create(cocos2d::CCActionInterval* pAction) {
    CCEaseSineIn *pRet = new CCEaseSineIn();
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

cocos2d::CCObject* cocos2d::CCEaseSineIn::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCEaseSineIn* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject)
    {
        //in case of being called at sub class
        pCopy = (CCEaseSineIn*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCEaseSineIn();
        pNewZone = new CCZone(pCopy);
    }
    pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
    
    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void cocos2d::CCEaseSineIn::update(float time) {
    m_pInner->update(-1 * cosf(time * (float)M_PI_2) + 1);
}

cocos2d::CCActionInterval* cocos2d::CCEaseSineIn::reverse() {
    return CCEaseSineOut::create(m_pInner->reverse());
}
#endif

