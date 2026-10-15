#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionProgressVertical* CCTransitionProgressVertical::create(float t, CCScene* scene)
{
    CCTransitionProgressVertical* pScene = new CCTransitionProgressVertical();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

CCProgressTimer* CCTransitionProgressVertical::progressTimerNodeWithRenderTexture(CCRenderTexture* texture)
{    
    CCSize size = CCDirector::sharedDirector()->getWinSize();
    
    CCProgressTimer* pNode = CCProgressTimer::create(texture->getSprite());
    
    // but it is flipped upside down so we flip the sprite
    pNode->getSprite()->setFlipY(true);
    pNode->setType(kCCProgressTimerTypeBar);
    
    pNode->setMidpoint(ccp(0, 0));
    pNode->setBarChangeRate(ccp(0,1));
    
    pNode->setPercentage(100);
    pNode->setPosition(ccp(size.width/2, size.height/2));
    pNode->setAnchorPoint(ccp(0.5f,0.5f));
    
    return pNode;
}

#endif

