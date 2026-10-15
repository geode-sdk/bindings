#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionPageTurn::CCTransitionPageTurn()
{
}

CCTransitionPageTurn::~CCTransitionPageTurn()
{
}

/** creates a base transition with duration and incoming scene */
CCTransitionPageTurn * CCTransitionPageTurn::create(float t, CCScene *scene, bool backwards)
{
    CCTransitionPageTurn * pTransition = new CCTransitionPageTurn();
    pTransition->initWithDuration(t,scene,backwards);
    pTransition->autorelease();
    return pTransition;
}

/** initializes a transition with duration and incoming scene */
bool CCTransitionPageTurn::initWithDuration(float t, CCScene *scene, bool backwards)
{
    // XXX: needed before [super init]
    m_bBack = backwards;

    if (CCTransitionScene::initWithDuration(t, scene))
    {
        // do something
    }
    return true;
}

void CCTransitionPageTurn::sceneOrder()
{
    m_bIsInSceneOnTop = m_bBack;
}

void CCTransitionPageTurn::onEnter()
{
    CCTransitionScene::onEnter();
    CCSize s = CCDirector::sharedDirector()->getWinSize();
    int x,y;
    if (s.width > s.height)
    {
        x=16;
        y=12;
    }
    else
    {
        x=12;
        y=16;
    }

    CCActionInterval *action  = this->actionWithSize(CCSizeMake(x,y));

    if (! m_bBack )
    {
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
    else
    {
        // to prevent initial flicker
        m_pInScene->setVisible(false);
        m_pInScene->runAction
        (
            CCSequence::create
            (
                CCShow::create(),
                action,
                CCCallFunc::create(this, callfunc_selector(CCTransitionScene::finish)),
                CCStopGrid::create(),
                NULL
            )
        );
    }
}


CCActionInterval* CCTransitionPageTurn:: actionWithSize(const CCSize& vector)
{
    if (m_bBack)
    {
        // Get hold of the PageTurn3DAction
        return CCReverseTime::create
        (
            CCPageTurn3D::create(m_fDuration, vector)
        );
    }
    else
    {
        // Get hold of the PageTurn3DAction
        return CCPageTurn3D::create(m_fDuration, vector);
    }
}
#endif

