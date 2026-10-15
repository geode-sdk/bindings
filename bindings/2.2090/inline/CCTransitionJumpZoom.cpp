#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionJumpZoom::CCTransitionJumpZoom()
{
}
CCTransitionJumpZoom::~CCTransitionJumpZoom()
{
}

CCTransitionJumpZoom* CCTransitionJumpZoom::create(float t, CCScene* scene)
{
    CCTransitionJumpZoom* pScene = new CCTransitionJumpZoom();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

void CCTransitionJumpZoom::onEnter()
{
    CCTransitionScene::onEnter();
    CCSize s = CCDirector::sharedDirector()->getWinSize();

    m_pInScene->setScale(0.5f);
    m_pInScene->setPosition(ccp(s.width, 0));
    m_pInScene->setAnchorPoint(ccp(0.5f, 0.5f));
    m_pOutScene->setAnchorPoint(ccp(0.5f, 0.5f));

    CCActionInterval *jump = CCJumpBy::create(m_fDuration/4, ccp(-s.width,0), s.width/4, 2);
    CCActionInterval *scaleIn = CCScaleTo::create(m_fDuration/4, 1.0f);
    CCActionInterval *scaleOut = CCScaleTo::create(m_fDuration/4, 0.5f);

    CCActionInterval *jumpZoomOut = (CCActionInterval*)(CCSequence::create(scaleOut, jump, NULL));
    CCActionInterval *jumpZoomIn = (CCActionInterval*)(CCSequence::create(jump, scaleIn, NULL));

    CCActionInterval *delay = CCDelayTime::create(m_fDuration/2);

    m_pOutScene->runAction(jumpZoomOut);
    m_pInScene->runAction
    (
        CCSequence::create
        (
            delay,
            jumpZoomIn,
            CCCallFunc::create(this, callfunc_selector(CCTransitionScene::finish)),
            NULL
        )
    );
}
#endif

