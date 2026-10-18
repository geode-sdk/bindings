#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionFadeTR::CCTransitionFadeTR()
{
}
CCTransitionFadeTR::~CCTransitionFadeTR()
{
}

CCTransitionFadeTR* CCTransitionFadeTR::create(float t, CCScene* scene)
{
    CCTransitionFadeTR* pScene = new CCTransitionFadeTR();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

void CCTransitionFadeTR::sceneOrder()
{
    m_bIsInSceneOnTop = false;
}

void CCTransitionFadeTR::onEnter()
{
    CCTransitionScene::onEnter();

    CCSize s = CCDirector::sharedDirector()->getWinSize();
    float aspect = s.width / s.height;
    int x = (int)(12 * aspect);
    int y = 12;

    CCActionInterval* action  = actionWithSize(CCSizeMake(x,y));

    m_pOutScene->runAction
    (
        CCSequence::create
        (
            easeActionWithAction(action),
            CCCallFunc::create(this, callfunc_selector(CCTransitionScene::finish)), 
            CCStopGrid::create(),
            NULL
        )
    );
}


CCActionInterval*  CCTransitionFadeTR::actionWithSize(const CCSize& size)
{
    return CCFadeOutTRTiles::create(m_fDuration, size);
}

CCActionInterval* CCTransitionFadeTR:: easeActionWithAction(CCActionInterval* action)
{
    return action;
}
#endif

