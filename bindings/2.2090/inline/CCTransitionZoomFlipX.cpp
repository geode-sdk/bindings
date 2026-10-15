#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionZoomFlipX::CCTransitionZoomFlipX()
{
}
CCTransitionZoomFlipX::~CCTransitionZoomFlipX()
{
}

void CCTransitionZoomFlipX::onEnter()
{
    CCTransitionSceneOriented::onEnter();

    CCActionInterval *inA, *outA;
    m_pInScene->setVisible(false);

    float inDeltaZ, inAngleZ;
    float outDeltaZ, outAngleZ;

    if( m_eOrientation == kCCTransitionOrientationRightOver ) {
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
    inA = (CCActionInterval *)CCSequence::create
        (
            CCDelayTime::create(m_fDuration/2),
            CCSpawn::create
            (
                CCOrbitCamera::create(m_fDuration/2, 1, 0, inAngleZ, inDeltaZ, 0, 0),
                CCScaleTo::create(m_fDuration/2, 1),
                CCShow::create(),
                NULL
            ),
            CCCallFunc::create(this, callfunc_selector(CCTransitionScene::finish)),
            NULL
        );
    outA = (CCActionInterval *)CCSequence::create
        (
            CCSpawn::create
            (
                CCOrbitCamera::create(m_fDuration/2, 1, 0, outAngleZ, outDeltaZ, 0, 0),
                CCScaleTo::create(m_fDuration/2, 0.5f),
                NULL
            ),
            CCHide::create(),
            CCDelayTime::create(m_fDuration/2),                            
            NULL
        );

    m_pInScene->setScale(0.5f);
    m_pInScene->runAction(inA);
    m_pOutScene->runAction(outA);
}

CCTransitionZoomFlipX* CCTransitionZoomFlipX::create(float t, CCScene* s, tOrientation o)
{
    CCTransitionZoomFlipX* pScene = new CCTransitionZoomFlipX();
    pScene->initWithDuration(t, s, o);
    pScene->autorelease();

    return pScene;
}

CCTransitionZoomFlipX* CCTransitionZoomFlipX::create(float t, CCScene* s)
{
    return CCTransitionZoomFlipX::create(t, s, kCCTransitionOrientationRightOver);
}
#endif

