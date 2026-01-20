#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCRepeat::~CCRepeat() {
    CC_SAFE_RELEASE(m_pInnerAction);
}

cocos2d::CCRepeat* cocos2d::CCRepeat::create(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) {
    CCRepeat* pRepeat = new CCRepeat();
    pRepeat->initWithAction(pAction, times);
    pRepeat->autorelease();

    return pRepeat;
}

cocos2d::CCObject* cocos2d::CCRepeat::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCRepeat* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCRepeat*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCRepeat();
        pZone = pNewZone = new CCZone(pCopy);
    }

    CCActionInterval::copyWithZone(pZone);

    pCopy->initWithAction((CCFiniteTimeAction*)(m_pInnerAction->copy()->autorelease()), m_uTimes);

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void cocos2d::CCRepeat::update(float dt) {
    if (dt >= m_fNextDt) {
        while (dt > m_fNextDt && m_uTotal < m_uTimes) {
            m_pInnerAction->update(1.0f);
            m_uTotal++;
            m_pInnerAction->stop();
            m_pInnerAction->startWithTarget(m_pTarget);
            m_fNextDt += m_pInnerAction->getDuration() / m_fDuration;
        }
        if (dt >= 1.0f && m_uTotal < m_uTimes) m_uTotal++;
        if (!m_bActionInstant) {
            if (m_uTotal == m_uTimes) {
                m_pInnerAction->update(1);
                m_pInnerAction->stop();
            }
            else m_pInnerAction->update(dt - (m_fNextDt - m_pInnerAction->getDuration() / m_fDuration));
        }
    }
    else m_pInnerAction->update(fmodf(dt * m_uTimes, 1.0f));
}

bool cocos2d::CCRepeat::isDone() {
    return m_uTotal == m_uTimes;
}

void cocos2d::CCRepeat::startWithTarget(cocos2d::CCNode* pTarget) {
    m_uTotal = 0;
    m_fNextDt = m_pInnerAction->getDuration()/m_fDuration;
    CCActionInterval::startWithTarget(pTarget);
    m_pInnerAction->startWithTarget(pTarget);
}

void cocos2d::CCRepeat::stop() {
    m_pInnerAction->stop();
    CCActionInterval::stop();
}

cocos2d::CCActionInterval* cocos2d::CCRepeat::reverse() {
    return CCRepeat::create(m_pInnerAction->reverse(), m_uTimes);
}

bool cocos2d::CCRepeat::initWithAction(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) {
    float d = pAction->getDuration() * times;

    if (CCActionInterval::initWithDuration(d))
    {
        m_uTimes = times;
        m_pInnerAction = pAction;
        pAction->retain();

        m_bActionInstant = geode::cast::typeinfo_cast<CCActionInstant*>(pAction) ? true : false;
        //an instant action needs to be executed one time less in the update method since it uses startWithTarget to execute the action
        if (m_bActionInstant) 
        {
            m_uTimes -=1;
        }
        m_uTotal = 0;

        return true;
    }

    return false;
}
#endif

