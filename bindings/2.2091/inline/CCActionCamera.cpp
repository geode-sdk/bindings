#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

void CCActionCamera::startWithTarget(CCNode *pTarget)
{
    CCActionInterval::startWithTarget(pTarget);
    
    CCCamera *camera = pTarget->getCamera();
    camera->getCenterXYZ(&m_fCenterXOrig, &m_fCenterYOrig, &m_fCenterZOrig);
    camera->getEyeXYZ(&m_fEyeXOrig, &m_fEyeYOrig, &m_fEyeZOrig);
    camera->getUpXYZ(&m_fUpXOrig, &m_fUpYOrig, &m_fUpZOrig);
}

CCActionInterval * CCActionCamera::reverse()
{
    return CCReverseTime::create(this);
}
#endif

