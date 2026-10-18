#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionFlipX::CCTransitionFlipX()
{
}
CCTransitionFlipX::~CCTransitionFlipX()
{
}

void CCTransitionFlipX::onEnter()
{
    CCTransitionSceneOriented::onEnter();

    CCActionInterval *inA, *outA;
    m_pInScene->setVisible(false);

    float inDeltaZ, inAngleZ;
    float outDeltaZ, outAngleZ;

    if( m_eOrientation == kCCTransitionOrientationRightOver )
    {
        inDeltaZ = 90;
        inAngleZ = 270;
        outDeltaZ = 90;
        outAngleZ = 0;
    }
    else
    {
        inDeltaZ = -90;
        inAngleZ = 90;
        outDeltaZ = -90;
        outAngleZ = 0;
    }

    inA = (CCActionInterval*)CCSequence::create
        (
            CCDelayTime::create(m_fDuration/2),
            CCShow::create(),
            CCOrbitCamera::create(m_fDuration/2, 1, 0, inAngleZ, inDeltaZ, 0, 0),
            CCCallFunc::create(this, callfunc_selector(CCTransitionScene::finish)), 
            NULL
        );

    outA = (CCActionInterval *)CCSequence::create
        (
            CCOrbitCamera::create(m_fDuration/2, 1, 0, outAngleZ, outDeltaZ, 0, 0),
            CCHide::create(),
            CCDelayTime::create(m_fDuration/2),                            
            NULL 
        );

    m_pInScene->runAction(inA);
    m_pOutScene->runAction(outA);
}

CCTransitionFlipX* CCTransitionFlipX::create(float t, CCScene* s, tOrientation o)
{
    CCTransitionFlipX* pScene = new CCTransitionFlipX();
    pScene->initWithDuration(t, s, o);
    pScene->autorelease();

    return pScene;
}

CCTransitionFlipX* CCTransitionFlipX::create(float t, CCScene* s)
{
    return CCTransitionFlipX::create(t, s, kCCTransitionOrientationRightOver);
}
#endif

