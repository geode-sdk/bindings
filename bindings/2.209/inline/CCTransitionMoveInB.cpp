#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionMoveInB::CCTransitionMoveInB()
{
}
CCTransitionMoveInB::~CCTransitionMoveInB()
{
}

CCTransitionMoveInB* CCTransitionMoveInB::create(float t, CCScene* scene)
{
    CCTransitionMoveInB* pScene = new CCTransitionMoveInB();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

void CCTransitionMoveInB::initScenes()
{
    CCSize s = CCDirector::sharedDirector()->getWinSize();
    m_pInScene->setPosition( ccp(0,-s.height) );
}
#endif

