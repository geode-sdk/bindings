#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;
#define ADJUST_FACTOR 0.5f

CCTransitionSlideInR::CCTransitionSlideInR()
{
}
CCTransitionSlideInR::~CCTransitionSlideInR()
{
}

CCTransitionSlideInR* CCTransitionSlideInR::create(float t, CCScene* scene)
{
    CCTransitionSlideInR* pScene = new CCTransitionSlideInR();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

void CCTransitionSlideInR::sceneOrder()
{
    m_bIsInSceneOnTop = true;
}

void CCTransitionSlideInR::initScenes()
{
    CCSize s = CCDirector::sharedDirector()->getWinSize();
    m_pInScene->setPosition( ccp(s.width-ADJUST_FACTOR,0) );
}


CCActionInterval* CCTransitionSlideInR:: action()
{
    CCSize s = CCDirector::sharedDirector()->getWinSize();
    return CCMoveBy::create(m_fDuration, ccp(-(s.width-ADJUST_FACTOR),0));
}
#endif

