#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCRemoveSelf* cocos2d::CCRemoveSelf::create(bool isNeedCleanUp) {
    CCRemoveSelf *pRet = new CCRemoveSelf();

    if (pRet && pRet->init(isNeedCleanUp)) {
        pRet->autorelease();
    }

    return pRet;
}

cocos2d::CCObject* cocos2d::CCRemoveSelf::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone *pNewZone = NULL;
    CCRemoveSelf *pRet = NULL;

    if (pZone && pZone->m_pCopyObject) {
        pRet = (CCRemoveSelf*)(pZone->m_pCopyObject);
    } else {
        pRet = new CCRemoveSelf();
        pZone = pNewZone = new cocos2d::CCZone(pRet);
    }

    cocos2d::CCActionInstant::copyWithZone(pZone);
    pRet->init(m_bIsNeedCleanUp);
    CC_SAFE_DELETE(pNewZone);
    return pRet;
}

void cocos2d::CCRemoveSelf::update(float time) {
    CC_UNUSED_PARAM(time);
    m_pTarget->removeFromParentAndCleanup(m_bIsNeedCleanUp);
}

cocos2d::CCFiniteTimeAction* cocos2d::CCRemoveSelf::reverse() {
    return (CCFiniteTimeAction*)(cocos2d::CCRemoveSelf::create(m_bIsNeedCleanUp));
}

bool cocos2d::CCRemoveSelf::init(bool isNeedCleanUp) {
    m_bIsNeedCleanUp = isNeedCleanUp;
    return true;
}
#endif

