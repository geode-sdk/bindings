#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionTurnOffTiles::CCTransitionTurnOffTiles()
{
}

CCTransitionTurnOffTiles::~CCTransitionTurnOffTiles()
{
}

CCTransitionTurnOffTiles* CCTransitionTurnOffTiles::create(float t, CCScene* scene)
{
    CCTransitionTurnOffTiles* pScene = new CCTransitionTurnOffTiles();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

// override addScenes, and change the order
void CCTransitionTurnOffTiles::sceneOrder()
{
    m_bIsInSceneOnTop = false;
}

void CCTransitionTurnOffTiles::onEnter()
{
    CCTransitionScene::onEnter();
    CCSize s = CCDirector::sharedDirector()->getWinSize();
    float aspect = s.width / s.height;
    int x = (int)(12 * aspect);
    int y = 12;

    CCTurnOffTiles* toff = CCTurnOffTiles::create(m_fDuration, CCSizeMake(x,y));
    CCActionInterval* action = easeActionWithAction(toff);
    m_pOutScene->runAction
    (
        CCSequence::create
        (
            action,
            CCCallFunc::create(this, callfunc_selector(CCTransitionScene::finish)), 
            CCStopGrid::create(),
            NULL
        )
    );
}


CCActionInterval* CCTransitionTurnOffTiles:: easeActionWithAction(CCActionInterval* action)
{
    return action;
}
#endif

