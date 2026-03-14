#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionProgressInOut* CCTransitionProgressInOut::create(float t, CCScene* scene)
{
    CCTransitionProgressInOut* pScene = new CCTransitionProgressInOut();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

void CCTransitionProgressInOut::sceneOrder()
{
    m_bIsInSceneOnTop = false;
}

void CCTransitionProgressInOut::setupTransition()
{
    m_pSceneToBeModified = m_pInScene;
    m_fFrom = 0;
    m_fTo = 100;    
}

CCProgressTimer* CCTransitionProgressInOut::progressTimerNodeWithRenderTexture(CCRenderTexture* texture)
{    
    CCSize size = CCDirector::sharedDirector()->getWinSize();
    
    CCProgressTimer* pNode = CCProgressTimer::create(texture->getSprite());
    
    // but it is flipped upside down so we flip the sprite
    pNode->getSprite()->setFlipY(true);
    pNode->setType( kCCProgressTimerTypeBar);
    
    pNode->setMidpoint(ccp(0.5f, 0.5f));
    pNode->setBarChangeRate(ccp(1, 1));
    
    pNode->setPercentage(0);
    pNode->setPosition(ccp(size.width/2, size.height/2));
    pNode->setAnchorPoint(ccp(0.5f,0.5f));
    
    return pNode;
}
#endif

