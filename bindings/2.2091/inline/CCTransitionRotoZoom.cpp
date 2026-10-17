#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionRotoZoom::CCTransitionRotoZoom()
{
}

CCTransitionRotoZoom* CCTransitionRotoZoom::create(float t, CCScene* scene)                   
{                                                               
    CCTransitionRotoZoom* pScene = new CCTransitionRotoZoom();                                
    if(pScene && pScene->initWithDuration(t, scene))            
    {                                                           
        pScene->autorelease();                                  
        return pScene;                                          
    }                                                           
    CC_SAFE_DELETE(pScene);                                     
    return NULL;                                                
}

CCTransitionRotoZoom::~CCTransitionRotoZoom()
{
}

void CCTransitionRotoZoom:: onEnter()
{
    CCTransitionScene::onEnter();

    m_pInScene->setScale(0.001f);
    m_pOutScene->setScale(1.0f);

    m_pInScene->setAnchorPoint(ccp(0.5f, 0.5f));
    m_pOutScene->setAnchorPoint(ccp(0.5f, 0.5f));

    CCActionInterval *rotozoom = (CCActionInterval*)(CCSequence::create
    (
        CCSpawn::create
        (
            CCScaleBy::create(m_fDuration/2, 0.001f),
            CCRotateBy::create(m_fDuration/2, 360 * 2),
            NULL
        ),
        CCDelayTime::create(m_fDuration/2),
        NULL
    ));

    m_pOutScene->runAction(rotozoom);
    m_pInScene->runAction
    (
        CCSequence::create
        (
            rotozoom->reverse(),
            CCCallFunc::create(this, callfunc_selector(CCTransitionScene::finish)),
            NULL
        )
    );
}
#endif

