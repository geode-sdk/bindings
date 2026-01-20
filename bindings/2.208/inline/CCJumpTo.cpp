#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCJumpTo* cocos2d::CCJumpTo::create(float p0, cocos2d::CCPoint const& p1, float p2, int p3) {
    auto ret = new CCJumpTo();
    ret->initWithDuration(p0, p1, p2, p3);
    ret->autorelease();
    return ret;
}

cocos2d::CCObject* cocos2d::CCJumpTo::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = nullptr;
    CCJumpTo* pCopy = nullptr;
    if (pZone && pZone->m_pCopyObject) {
        pCopy = (CCJumpTo*)(pZone->m_pCopyObject);
    }
    else {
        pCopy = new CCJumpTo();
        pZone = pNewZone = new CCZone(pCopy);
    }

    CCJumpBy::copyWithZone(pZone);

    pCopy->initWithDuration(m_fDuration, m_delta, m_height, m_nJumps);

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void cocos2d::CCJumpTo::startWithTarget(cocos2d::CCNode* pTarget) {
    CCJumpBy::startWithTarget(pTarget);
    m_delta = m_delta - m_startPosition;
}
#endif

