#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCSkewTo::CCSkewTo() {
    m_fSkewX = 0.0;
    m_fSkewY = 0.0;
    m_fStartSkewX = 0.0;
    m_fStartSkewY = 0.0;
    m_fEndSkewX = 0.0;
    m_fEndSkewY = 0.0;
    m_fDeltaX = 0.0;
    m_fDeltaY = 0.0;
}

cocos2d::CCSkewTo* cocos2d::CCSkewTo::create(float t, float sx, float sy) {
	CCSkewTo *pSkewTo = new CCSkewTo();
    if (pSkewTo)
    {
        if (pSkewTo->initWithDuration(t, sx, sy))
        {
            pSkewTo->autorelease();
        }
        else
        {
            CC_SAFE_DELETE(pSkewTo);
        }
    }

    return pSkewTo;
}

cocos2d::CCObject* cocos2d::CCSkewTo::copyWithZone(cocos2d::CCZone* pZone) {
    CCZone* pNewZone = NULL;
    CCSkewTo* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCSkewTo*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCSkewTo();
        pZone = pNewZone = new CCZone(pCopy);
    }

    CCActionInterval::copyWithZone(pZone);

    pCopy->initWithDuration(m_fDuration, m_fEndSkewX, m_fEndSkewY);

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void cocos2d::CCSkewTo::update(float t) {
    m_pTarget->setSkewX(m_fStartSkewX + m_fDeltaX * t);
    m_pTarget->setSkewY(m_fStartSkewY + m_fDeltaY * t);
}

void cocos2d::CCSkewTo::startWithTarget(cocos2d::CCNode* pTarget) {
    CCActionInterval::startWithTarget(pTarget);

    m_fStartSkewX = pTarget->getSkewX();

    if (m_fStartSkewX > 0)
    {
        m_fStartSkewX = fmodf(m_fStartSkewX, 180.f);
    }
    else
    {
        m_fStartSkewX = fmodf(m_fStartSkewX, -180.f);
    }

    m_fDeltaX = m_fEndSkewX - m_fStartSkewX;

    if (m_fDeltaX > 180)
    {
        m_fDeltaX -= 360;
    }
    if (m_fDeltaX < -180)
    {
        m_fDeltaX += 360;
    }

    m_fStartSkewY = pTarget->getSkewY();

    if (m_fStartSkewY > 0)
    {
        m_fStartSkewY = fmodf(m_fStartSkewY, 360.f);
    }
    else
    {
        m_fStartSkewY = fmodf(m_fStartSkewY, -360.f);
    }

    m_fDeltaY = m_fEndSkewY - m_fStartSkewY;

    if (m_fDeltaY > 180)
    {
        m_fDeltaY -= 360;
    }
    if (m_fDeltaY < -180)
    {
        m_fDeltaY += 360;
    }
}

bool cocos2d::CCSkewTo::initWithDuration(float t, float sx, float sy) {
    bool bRet = false;

    if (CCActionInterval::initWithDuration(t))
    {
        m_fEndSkewX = sx;
        m_fEndSkewY = sy;

        bRet = true;
    }

    return bRet;
}
#endif

