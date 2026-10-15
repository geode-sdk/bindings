#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionSplitCols::CCTransitionSplitCols()
{
}
CCTransitionSplitCols::~CCTransitionSplitCols()
{
}

CCTransitionSplitCols* CCTransitionSplitCols::create(float t, CCScene* scene)
{
    CCTransitionSplitCols* pScene = new CCTransitionSplitCols();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

void CCTransitionSplitCols::onEnter()
{
    CCTransitionScene::onEnter();
    m_pInScene->setVisible(false);

    CCActionInterval* split = action();
    CCActionInterval* seq = (CCActionInterval*)CCSequence::create
    (
        split,
        CCCallFunc::create(this, callfunc_selector(CCTransitionScene::hideOutShowIn)),
        split->reverse(),
        NULL
    );

    this->runAction
    ( 
        CCSequence::create
        (
            easeActionWithAction(seq),
            CCCallFunc::create(this, callfunc_selector(CCTransitionScene::finish)),
            CCStopGrid::create(),
            NULL
        )
    );
}

CCActionInterval* CCTransitionSplitCols:: action()
{
    return CCSplitCols::create(m_fDuration/2.0f, 3);
}


CCActionInterval* CCTransitionSplitCols::easeActionWithAction(CCActionInterval * action)
{
    return CCEaseInOut::create(action, 3.0f);
}
#endif

