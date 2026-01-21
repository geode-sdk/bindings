#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCScaleBy* cocos2d::CCScaleBy::create(float duration, float s) {
    cocos2d::CCScaleBy *pScaleBy = new cocos2d::CCScaleBy();
    pScaleBy->initWithDuration(duration, s);
    pScaleBy->autorelease();

    return pScaleBy;
}

cocos2d::CCScaleBy* cocos2d::CCScaleBy::create(float duration, float sx, float sy) {
    cocos2d::CCScaleBy *pScaleBy = new cocos2d::CCScaleBy();
    pScaleBy->initWithDuration(duration, sx, sy);
    pScaleBy->autorelease();

    return pScaleBy;
}

cocos2d::CCObject* cocos2d::CCScaleBy::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCScaleTo* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject)
    {
        //in case of being called at sub class
        pCopy = (CCScaleBy*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCScaleBy();
        pZone = pNewZone = new CCZone(pCopy);
    }

    CCScaleTo::copyWithZone(pZone);


    pCopy->initWithDuration(m_fDuration, m_fEndScaleX, m_fEndScaleY);
    
    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void cocos2d::CCScaleBy::startWithTarget(cocos2d::CCNode* pTarget) {
    cocos2d::CCScaleTo::startWithTarget(pTarget);
    m_fDeltaX = m_fStartScaleX * m_fEndScaleX - m_fStartScaleX;
    m_fDeltaY = m_fStartScaleY * m_fEndScaleY - m_fStartScaleY;
}

cocos2d::CCActionInterval* cocos2d::CCScaleBy::reverse() {
    return cocos2d::CCScaleBy::create(m_fDuration, 1 / m_fEndScaleX, 1 / m_fEndScaleY);
}
#endif

