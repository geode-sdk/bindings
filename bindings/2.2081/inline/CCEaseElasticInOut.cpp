#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCEaseElasticInOut* cocos2d::CCEaseElasticInOut::create(cocos2d::CCActionInterval* pAction) {
    return CCEaseElasticInOut::create(pAction, 0.3f);
}

cocos2d::CCEaseElasticInOut* cocos2d::CCEaseElasticInOut::create(cocos2d::CCActionInterval* pAction, float fPeriod) {
    CCEaseElasticInOut *pRet = new CCEaseElasticInOut();
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

cocos2d::CCObject* cocos2d::CCEaseElasticInOut::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCEaseElasticInOut* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCEaseElasticInOut*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCEaseElasticInOut();
        pNewZone = new CCZone(pCopy);
    }

    pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()), m_fPeriod);

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void cocos2d::CCEaseElasticInOut::update(float time) {
    float newT = 0;
    if (time == 0 || time == 1)
    {
        newT = time;
    }
    else
    {
        time = time * 2;
        if (! m_fPeriod)
        {
            m_fPeriod = 0.3f * 1.5f;
        }

        float s = m_fPeriod / 4;

        time = time - 1;
        if (time < 0)
        {
            newT = -0.5f * powf(2, 10 * time) * sinf((time -s) * (M_PI * 2) / m_fPeriod);
        }
        else
        {
            newT = powf(2, -10 * time) * sinf((time - s) * (M_PI * 2) / m_fPeriod) * 0.5f + 1;
        }
    }

    m_pInner->update(newT);
}

cocos2d::CCActionInterval* cocos2d::CCEaseElasticInOut::reverse() {
    return CCEaseElasticInOut::create(m_pInner->reverse(), m_fPeriod);
}
#endif

