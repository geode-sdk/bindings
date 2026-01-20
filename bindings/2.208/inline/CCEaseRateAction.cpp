#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCEaseRateAction::~CCEaseRateAction() {}

cocos2d::CCEaseRateAction* cocos2d::CCEaseRateAction::create(cocos2d::CCActionInterval* pAction, float fRate) {
    CCEaseRateAction *pRet = new CCEaseRateAction();
    if (pRet)
    {
        if (pRet->initWithAction(pAction, fRate))
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

cocos2d::CCObject* cocos2d::CCEaseRateAction::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCEaseRateAction* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCEaseRateAction*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCEaseRateAction();
        pNewZone = new CCZone(pCopy);
    }

    pCopy->initWithAction((CCActionInterval*)(m_pInner->copy()->autorelease()), m_fRate);

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

cocos2d::CCActionInterval* cocos2d::CCEaseRateAction::reverse() {
    return CCEaseRateAction::create(m_pInner->reverse(), 1 / m_fRate);
}

bool cocos2d::CCEaseRateAction::initWithAction(cocos2d::CCActionInterval* pAction, float fRate) {
    if (CCActionEase::initWithAction(pAction))
    {
        m_fRate = fRate;
        return true;
    }

    return false;
}
#endif

