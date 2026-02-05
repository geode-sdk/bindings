#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCJumpBy* cocos2d::CCJumpBy::create(float p0, cocos2d::CCPoint const& p1, float p2, unsigned int p3) {
    auto ret = new CCJumpBy();
    ret->initWithDuration(p0, p1, p2, p3);
    ret->autorelease();
    return ret;
}

cocos2d::CCObject* cocos2d::CCJumpBy::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = nullptr;
    CCJumpBy* pCopy = nullptr;
    if (pZone && pZone->m_pCopyObject) {
        pCopy = (CCJumpBy*)(pZone->m_pCopyObject);
    }
    else {
        pCopy = new CCJumpBy();
        pZone = pNewZone = new CCZone(pCopy);
    }

    CCActionInterval::copyWithZone(pZone);

    pCopy->initWithDuration(m_fDuration, m_delta, m_height, m_nJumps);

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void cocos2d::CCJumpBy::update(float t) {
    if (m_pTarget) {
        float frac = fmodf(t * m_nJumps, 1.f);
        float y = m_height * 4.f * frac * (1.f - frac);
        y += m_delta.y * t;

        float x = m_delta.x * t;
        CCPoint currentPos = m_pTarget->getPosition();

        CCPoint diff = currentPos - m_previousPos;
        m_startPosition = diff + m_startPosition;

        CCPoint newPos = m_startPosition + CCPoint { x, y };
        m_pTarget->setPosition(newPos);

        m_previousPos = newPos;
    }
}

void cocos2d::CCJumpBy::startWithTarget(cocos2d::CCNode* pTarget) {
    CCActionInterval::startWithTarget(pTarget);
    m_previousPos = m_startPosition = pTarget->getPosition();
}

cocos2d::CCActionInterval* cocos2d::CCJumpBy::reverse() {
    return CCJumpBy::create(m_fDuration, -m_delta, m_height, m_nJumps);
}

bool cocos2d::CCJumpBy::initWithDuration(float p0, cocos2d::CCPoint const& p1, float p2, unsigned int p3) {
    if (!CCActionInterval::initWithDuration(p0)) return false;
    m_delta = p1;
    m_height = p2;
    m_nJumps = p3;
    return true;
}
#endif

