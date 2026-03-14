#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCTransitionFlipX::CCTransitionFlipX() {}
cocos2d::CCTransitionFlipX::~CCTransitionFlipX() {}

void cocos2d::CCTransitionFlipX::onEnter() {
    cocos2d::CCTransitionSceneOriented::onEnter();

    CCActionInterval *inA, *outA;
    m_pInScene->setVisible(false);

    float inDeltaZ, inAngleZ;
    float outDeltaZ, outAngleZ;

    if( m_eOrientation == cocos2d::kCCTransitionOrientationRightOver )
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

    inA = (CCActionInterval*)cocos2d::CCSequence::create
        (
            cocos2d::CCDelayTime::create(m_fDuration/2),
            cocos2d::CCShow::create(),
            cocos2d::CCOrbitCamera::create(m_fDuration/2, 1, 0, inAngleZ, inDeltaZ, 0, 0),
            cocos2d::CCCallFunc::create(this, callfunc_selector(cocos2d::CCTransitionScene::finish)), 
            NULL
        );

    outA = (CCActionInterval *)cocos2d::CCSequence::create
        (
            cocos2d::CCOrbitCamera::create(m_fDuration/2, 1, 0, outAngleZ, outDeltaZ, 0, 0),
            cocos2d::CCHide::create(),
            cocos2d::CCDelayTime::create(m_fDuration/2),                            
            NULL 
        );

    m_pInScene->runAction(inA);
    m_pOutScene->runAction(outA);
}

cocos2d::CCTransitionFlipX* cocos2d::CCTransitionFlipX::create(float t, cocos2d::CCScene* s, cocos2d::tOrientation o) {
    cocos2d::CCTransitionFlipX* pScene = new cocos2d::CCTransitionFlipX();
    pScene->initWithDuration(t, s, o);
    pScene->autorelease();

    return pScene;
}

cocos2d::CCTransitionFlipX* cocos2d::CCTransitionFlipX::create(float t, cocos2d::CCScene* s) {
    return cocos2d::CCTransitionFlipX::create(t, s, cocos2d::kCCTransitionOrientationRightOver);
}
#endif

