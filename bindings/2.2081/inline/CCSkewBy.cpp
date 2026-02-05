#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCSkewBy* cocos2d::CCSkewBy::create(float t, float sx, float sy) {
	CCSkewBy *pSkewBy = new CCSkewBy();
    if (pSkewBy)
    {
        if (pSkewBy->initWithDuration(t, sx, sy))
        {
            pSkewBy->autorelease();
        }
        else
        {
            CC_SAFE_DELETE(pSkewBy);
        }
    }

    return pSkewBy;
}

void cocos2d::CCSkewBy::startWithTarget(cocos2d::CCNode* pTarget) {
	CCSkewTo::startWithTarget(pTarget);
    m_fDeltaX = m_fSkewX;
    m_fDeltaY = m_fSkewY;
    m_fEndSkewX = m_fStartSkewX + m_fDeltaX;
    m_fEndSkewY = m_fStartSkewY + m_fDeltaY;
}

cocos2d::CCActionInterval* cocos2d::CCSkewBy::reverse() {
	return create(m_fDuration, -m_fSkewX, -m_fSkewY);
}

bool cocos2d::CCSkewBy::initWithDuration(float t, float deltaSkewX, float deltaSkewY) {
	bool bRet = false;

    if (CCSkewTo::initWithDuration(t, deltaSkewX, deltaSkewY))
    {
        m_fSkewX = deltaSkewX;
        m_fSkewY = deltaSkewY;

        bRet = true;
    }

    return bRet;
}
#endif

