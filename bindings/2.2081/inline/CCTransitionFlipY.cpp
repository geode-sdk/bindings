#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionFlipY::CCTransitionFlipY()
{
}
CCTransitionFlipY::~CCTransitionFlipY()
{
}

void CCTransitionFlipY::onEnter()
{
    CCTransitionSceneOriented::onEnter();

    CCActionInterval *inA, *outA;
    m_pInScene->setVisible(false);

    float inDeltaZ, inAngleZ;
    float outDeltaZ, outAngleZ;

    if( m_eOrientation == kCCTransitionOrientationUpOver ) 
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
            CCOrbitCamera::create(m_fDuration/2, 1, 0, inAngleZ, inDeltaZ, 90, 0),
            CCCallFunc::create(this, callfunc_selector(CCTransitionScene::finish)), 
            NULL
        );
    outA = (CCActionInterval*)CCSequence::create
        (
            CCOrbitCamera::create(m_fDuration/2, 1, 0, outAngleZ, outDeltaZ, 90, 0),
            CCHide::create(),
            CCDelayTime::create(m_fDuration/2),                            
            NULL
        );

    m_pInScene->runAction(inA);
    m_pOutScene->runAction(outA);

}

CCTransitionFlipY* CCTransitionFlipY::create(float t, CCScene* s, tOrientation o)
{
    CCTransitionFlipY* pScene = new CCTransitionFlipY();
    pScene->initWithDuration(t, s, o);
    pScene->autorelease();

    return pScene;
}

CCTransitionFlipY* CCTransitionFlipY::create(float t, CCScene* s)
{
    return CCTransitionFlipY::create(t, s, kCCTransitionOrientationUpOver);
}
#endif

