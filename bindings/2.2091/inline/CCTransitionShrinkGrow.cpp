#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionShrinkGrow::CCTransitionShrinkGrow()
{
}
CCTransitionShrinkGrow::~CCTransitionShrinkGrow()
{
}

CCTransitionShrinkGrow* CCTransitionShrinkGrow::create(float t, CCScene* scene)
{
    CCTransitionShrinkGrow* pScene = new CCTransitionShrinkGrow();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

void CCTransitionShrinkGrow::onEnter()
{
    CCTransitionScene::onEnter();

    m_pInScene->setScale(0.001f);
    m_pOutScene->setScale(1.0f);

    m_pInScene->setAnchorPoint(ccp(2/3.0f,0.5f));
    m_pOutScene->setAnchorPoint(ccp(1/3.0f,0.5f));    

    CCActionInterval* scaleOut = CCScaleTo::create(m_fDuration, 0.01f);
    CCActionInterval* scaleIn = CCScaleTo::create(m_fDuration, 1.0f);

    m_pInScene->runAction(this->easeActionWithAction(scaleIn));
    m_pOutScene->runAction
    (
        CCSequence::create
        (
            this->easeActionWithAction(scaleOut),
            CCCallFunc::create(this, callfunc_selector(CCTransitionScene::finish)), 
            NULL
        )
    );
}
CCActionInterval* CCTransitionShrinkGrow:: easeActionWithAction(CCActionInterval* action)
{
    return CCEaseOut::create(action, 2.0f);
//    return [EaseElasticOut actionWithAction:action period:0.3f];
}
#endif

