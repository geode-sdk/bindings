#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCRotateTo* cocos2d::CCRotateTo::create(float fDuration, float fDeltaAngleX, float fDeltaAngleY) {
    CCRotateTo* pRotateTo = new CCRotateTo();
    pRotateTo->initWithDuration(fDuration, fDeltaAngleX, fDeltaAngleY);
    pRotateTo->autorelease();

    return pRotateTo;
}

bool cocos2d::CCRotateTo::initWithDuration(float p0, float p1) {
    if (!CCActionInterval::initWithDuration(p0)) return false;
    m_fDstAngleX = p1;
    m_fDstAngleY = p1;
    return true;
}
#endif

