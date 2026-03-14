#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionProgress::CCTransitionProgress()
: m_fTo(0.0f)
, m_fFrom(0.0f)
, m_pSceneToBeModified(NULL)
{

}

CCTransitionProgress* CCTransitionProgress::create(float t, CCScene* scene)
{
    CCTransitionProgress* pScene = new CCTransitionProgress();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

// CCTransitionProgress
void CCTransitionProgress::onEnter()
{
    CCTransitionScene::onEnter();

    setupTransition();
    
    // create a transparent color layer
    // in which we are going to add our rendertextures
    CCSize size = CCDirector::sharedDirector()->getWinSize();

    // create the second render texture for outScene
    CCRenderTexture *texture = CCRenderTexture::create((int)size.width, (int)size.height);
    texture->getSprite()->setAnchorPoint(ccp(0.5f,0.5f));
    texture->setPosition(ccp(size.width/2, size.height/2));
    texture->setAnchorPoint(ccp(0.5f,0.5f));

    // render outScene to its texturebuffer
    texture->clear(0, 0, 0, 1);
    texture->begin();
    m_pSceneToBeModified->visit();
    texture->end();


    //    Since we've passed the outScene to the texture we don't need it.
    if (m_pSceneToBeModified == m_pOutScene)
    {
        hideOutShowIn();
    }
    //    We need the texture in RenderTexture.
    CCProgressTimer *pNode = progressTimerNodeWithRenderTexture(texture);

    // create the blend action
    CCActionInterval* layerAction = (CCActionInterval*)CCSequence::create(
        CCProgressFromTo::create(m_fDuration, m_fFrom, m_fTo),
        CCCallFunc::create(this, callfunc_selector(CCTransitionProgress::finish)), 
        NULL);
    // run the blend action
    pNode->runAction(layerAction);

    // add the layer (which contains our two rendertextures) to the scene
    addChild(pNode, 2, kCCSceneRadial);
}

// clean up on exit
void CCTransitionProgress::onExit()
{
    // remove our layer and release all containing objects
    removeChildByTag(kCCSceneRadial, true);
    CCTransitionScene::onExit();
}

void CCTransitionProgress::sceneOrder()
{
    m_bIsInSceneOnTop = false;
}

void CCTransitionProgress::setupTransition()
{
    m_pSceneToBeModified = m_pOutScene;
    m_fFrom = 100;
    m_fTo = 0;
}

CCProgressTimer* CCTransitionProgress::progressTimerNodeWithRenderTexture(CCRenderTexture* texture)
{
    CCAssert(false, "override me - abstract class");
    return NULL;
}
#endif

