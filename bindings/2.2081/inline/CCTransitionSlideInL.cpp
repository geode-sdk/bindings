#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;
#define ADJUST_FACTOR 0.5f

CCTransitionSlideInL::CCTransitionSlideInL()
{
}

CCTransitionSlideInL::~CCTransitionSlideInL()
{
}

void CCTransitionSlideInL::onEnter()
{
    CCTransitionScene::onEnter();
    this->initScenes();

    CCActionInterval *in = this->action();
    CCActionInterval *out = this->action();

    CCActionInterval* inAction = easeActionWithAction(in);
    CCActionInterval* outAction = (CCActionInterval*)CCSequence::create
    (
        easeActionWithAction(out),
        CCCallFunc::create(this, callfunc_selector(CCTransitionScene::finish)), 
        NULL
    );
    m_pInScene->runAction(inAction);
    m_pOutScene->runAction(outAction);
}

void CCTransitionSlideInL::sceneOrder()
{
    m_bIsInSceneOnTop = false;
}

void CCTransitionSlideInL:: initScenes()
{
    CCSize s = CCDirector::sharedDirector()->getWinSize();
    m_pInScene->setPosition( ccp(-(s.width-ADJUST_FACTOR),0) );
}

CCActionInterval* CCTransitionSlideInL::action()
{
    CCSize s = CCDirector::sharedDirector()->getWinSize();
    return CCMoveBy::create(m_fDuration, ccp(s.width-ADJUST_FACTOR,0));
}

CCActionInterval* CCTransitionSlideInL::easeActionWithAction(CCActionInterval* action)
{
    return CCEaseOut::create(action, 2.0f);
}

CCTransitionSlideInL* CCTransitionSlideInL::create(float t, CCScene* scene)
{
    CCTransitionSlideInL* pScene = new CCTransitionSlideInL();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}
#endif

