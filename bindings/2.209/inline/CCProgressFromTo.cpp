#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

#define kProgressTimerCast CCProgressTimer*

CCProgressFromTo* CCProgressFromTo::create(float duration, float fFromPercentage, float fToPercentage)
{
    CCProgressFromTo *pProgressFromTo = new CCProgressFromTo();
    pProgressFromTo->initWithDuration(duration, fFromPercentage, fToPercentage);
    pProgressFromTo->autorelease();

    return pProgressFromTo;
}

bool CCProgressFromTo::initWithDuration(float duration, float fFromPercentage, float fToPercentage)
{
    if (CCActionInterval::initWithDuration(duration))
    {
        m_fTo = fToPercentage;
        m_fFrom = fFromPercentage;

        return true;
    }

    return false;
}

CCObject* CCProgressFromTo::copyWithZone(CCZone *pZone)
{
    CCZone* pNewZone = NULL;
    CCProgressFromTo* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCProgressFromTo*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCProgressFromTo();
        pZone = pNewZone = new CCZone(pCopy);
    }

    CCActionInterval::copyWithZone(pZone);

    pCopy->initWithDuration(m_fDuration, m_fFrom, m_fTo);

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

CCActionInterval* CCProgressFromTo::reverse(void)
{
    return CCProgressFromTo::create(m_fDuration, m_fTo, m_fFrom);
}

void CCProgressFromTo::startWithTarget(CCNode *pTarget)
{
    CCActionInterval::startWithTarget(pTarget);
}

void CCProgressFromTo::update(float time)
{
    ((kProgressTimerCast)(m_pTarget))->setPercentage(m_fFrom + (m_fTo - m_fFrom) * time);
}
#endif

