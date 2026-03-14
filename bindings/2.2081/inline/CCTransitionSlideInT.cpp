#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;
#define ADJUST_FACTOR 0.5f

CCTransitionSlideInT::CCTransitionSlideInT()
{
}
CCTransitionSlideInT::~CCTransitionSlideInT()
{
}

CCTransitionSlideInT* CCTransitionSlideInT::create(float t, CCScene* scene)
{
    CCTransitionSlideInT* pScene = new CCTransitionSlideInT();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

void CCTransitionSlideInT::sceneOrder()
{
    m_bIsInSceneOnTop = false;
}

void CCTransitionSlideInT::initScenes()
{
    CCSize s = CCDirector::sharedDirector()->getWinSize();
    m_pInScene->setPosition( ccp(0,s.height-ADJUST_FACTOR) );
}


CCActionInterval* CCTransitionSlideInT::action()
{
    CCSize s = CCDirector::sharedDirector()->getWinSize();
    return CCMoveBy::create(m_fDuration, ccp(0,-(s.height-ADJUST_FACTOR)));
}
#endif

