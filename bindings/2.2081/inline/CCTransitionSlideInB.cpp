#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;
#define ADJUST_FACTOR 0.5f

CCTransitionSlideInB::CCTransitionSlideInB()
{
}
CCTransitionSlideInB::~CCTransitionSlideInB()
{
}

CCTransitionSlideInB* CCTransitionSlideInB::create(float t, CCScene* scene)
{
    CCTransitionSlideInB* pScene = new CCTransitionSlideInB();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

void CCTransitionSlideInB::sceneOrder()
{
    m_bIsInSceneOnTop = true;
}

void CCTransitionSlideInB:: initScenes()
{
    CCSize s = CCDirector::sharedDirector()->getWinSize();
    m_pInScene->setPosition( ccp(0,-(s.height-ADJUST_FACTOR)) );
}


CCActionInterval* CCTransitionSlideInB:: action()
{
    CCSize s = CCDirector::sharedDirector()->getWinSize();
    return CCMoveBy::create(m_fDuration, ccp(0,s.height-ADJUST_FACTOR));
}
#endif

