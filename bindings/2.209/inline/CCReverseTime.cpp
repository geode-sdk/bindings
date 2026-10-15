#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCReverseTime* CCReverseTime::create(CCFiniteTimeAction *pAction)
{
    // casting to prevent warnings
    CCReverseTime *pReverseTime = new CCReverseTime();
    pReverseTime->initWithAction(pAction);
    pReverseTime->autorelease();

    return pReverseTime;
}

bool CCReverseTime::initWithAction(CCFiniteTimeAction *pAction)
{
    CCAssert(pAction != NULL, "");
    CCAssert(pAction != m_pOther, "");

    if (CCActionInterval::initWithDuration(pAction->getDuration()))
    {
        // Don't leak if action is reused
        CC_SAFE_RELEASE(m_pOther);

        m_pOther = pAction;
        pAction->retain();

        return true;
    }

    return false;
}

CCObject* CCReverseTime::copyWithZone(CCZone *pZone)
{
    CCZone* pNewZone = NULL;
    CCReverseTime* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCReverseTime*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCReverseTime();
        pZone = pNewZone = new CCZone(pCopy);
    }

    CCActionInterval::copyWithZone(pZone);

    pCopy->initWithAction((CCFiniteTimeAction*)(m_pOther->copy()->autorelease()));

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

CCReverseTime::CCReverseTime() : m_pOther(NULL) 
{

}

CCReverseTime::~CCReverseTime(void)
{
    CC_SAFE_RELEASE(m_pOther);
}

void CCReverseTime::startWithTarget(CCNode *pTarget)
{
    CCActionInterval::startWithTarget(pTarget);
    m_pOther->startWithTarget(pTarget);
}

void CCReverseTime::stop(void)
{
    m_pOther->stop();
    CCActionInterval::stop();
}

void CCReverseTime::update(float time)
{
    if (m_pOther)
    {
        m_pOther->update(1 - time);
    }
}

CCActionInterval* CCReverseTime::reverse(void)
{
    return (CCActionInterval*)(m_pOther->copy()->autorelease());
}
#endif

