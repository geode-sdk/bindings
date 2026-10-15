#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionMoveInR::CCTransitionMoveInR()
{
}
CCTransitionMoveInR::~CCTransitionMoveInR()
{
}

CCTransitionMoveInR* CCTransitionMoveInR::create(float t, CCScene* scene)
{
    CCTransitionMoveInR* pScene = new CCTransitionMoveInR();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

void CCTransitionMoveInR::initScenes()
{
    CCSize s = CCDirector::sharedDirector()->getWinSize();
    m_pInScene->setPosition( ccp(s.width,0) );
}
#endif

