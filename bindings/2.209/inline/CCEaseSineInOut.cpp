#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCEaseSineInOut* cocos2d::CCEaseSineInOut::create(cocos2d::CCActionInterval* pAction) {
     CCEaseSineInOut *pRet = new CCEaseSineInOut();
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

cocos2d::CCObject* cocos2d::CCEaseSineInOut::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCEaseSineInOut* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject)
    {
        //in case of being called at sub class
        pCopy = (CCEaseSineInOut*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCEaseSineInOut();
        pNewZone = new CCZone(pCopy);
    }

    pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
    
    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void cocos2d::CCEaseSineInOut::update(float time) {
    m_pInner->update(-0.5f * (cosf((float)M_PI * time) - 1));
}

cocos2d::CCActionInterval* cocos2d::CCEaseSineInOut::reverse() {
    return CCEaseSineInOut::create(m_pInner->reverse());
}
#endif

