#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCEaseSineOut* cocos2d::CCEaseSineOut::create(cocos2d::CCActionInterval* pAction) {
    CCEaseSineOut *pRet = new CCEaseSineOut();
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

cocos2d::CCObject* cocos2d::CCEaseSineOut::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCEaseSineOut* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCEaseSineOut*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCEaseSineOut();
        pNewZone = new CCZone(pCopy);
    }

    pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void cocos2d::CCEaseSineOut::update(float time) {
    m_pInner->update(sinf(time * (float)M_PI_2));
}

cocos2d::CCActionInterval* cocos2d::CCEaseSineOut::reverse() {
    return CCEaseSineIn::create(m_pInner->reverse());
}
#endif

