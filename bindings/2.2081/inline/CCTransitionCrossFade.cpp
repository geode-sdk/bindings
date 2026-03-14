#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;
const unsigned int kSceneFade = 0xFADEFADE;

CCTransitionCrossFade::CCTransitionCrossFade()
{
}
CCTransitionCrossFade::~CCTransitionCrossFade()
{
}

CCTransitionCrossFade* CCTransitionCrossFade::create(float t, CCScene* scene)
{
    CCTransitionCrossFade* pScene = new CCTransitionCrossFade();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

void CCTransitionCrossFade:: draw()
{
    // override draw since both scenes (textures) are rendered in 1 scene
}

void CCTransitionCrossFade::onEnter()
{
    CCTransitionScene::onEnter();

    // create a transparent color layer
    // in which we are going to add our rendertextures
    ccColor4B  color = {0,0,0,0};
    CCSize size = CCDirector::sharedDirector()->getWinSize();
    CCLayerColor* layer = CCLayerColor::create(color);

    // create the first render texture for inScene
    CCRenderTexture* inTexture = CCRenderTexture::create((int)size.width, (int)size.height);

    if (NULL == inTexture)
    {
        return;
    }

    inTexture->getSprite()->setAnchorPoint( ccp(0.5f,0.5f) );
    inTexture->setPosition( ccp(size.width/2, size.height/2) );
    inTexture->setAnchorPoint( ccp(0.5f,0.5f) );

    // render inScene to its texturebuffer
    inTexture->begin();
    m_pInScene->visit();
    inTexture->end();

    // create the second render texture for outScene
    CCRenderTexture* outTexture = CCRenderTexture::create((int)size.width, (int)size.height);
    outTexture->getSprite()->setAnchorPoint( ccp(0.5f,0.5f) );
    outTexture->setPosition( ccp(size.width/2, size.height/2) );
    outTexture->setAnchorPoint( ccp(0.5f,0.5f) );

    // render outScene to its texturebuffer
    outTexture->begin();
    m_pOutScene->visit();
    outTexture->end();

    // create blend functions

    ccBlendFunc blend1 = {GL_ONE, GL_ONE}; // inScene will lay on background and will not be used with alpha
    ccBlendFunc blend2 = {GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA}; // we are going to blend outScene via alpha 

    // set blendfunctions
    inTexture->getSprite()->setBlendFunc(blend1);
    outTexture->getSprite()->setBlendFunc(blend2);    

    // add render textures to the layer
    layer->addChild(inTexture);
    layer->addChild(outTexture);

    // initial opacity:
    inTexture->getSprite()->setOpacity(255);
    outTexture->getSprite()->setOpacity(255);

    // create the blend action
    CCAction* layerAction = CCSequence::create
    (
        CCFadeTo::create(m_fDuration, 0),
        CCCallFunc::create(this, callfunc_selector(CCTransitionScene::hideOutShowIn)),
        CCCallFunc::create(this, callfunc_selector(CCTransitionScene::finish)),
        NULL
    );


    // run the blend action
    outTexture->getSprite()->runAction( layerAction );

    // add the layer (which contains our two rendertextures) to the scene
    addChild(layer, 2, kSceneFade);
}

// clean up on exit
void CCTransitionCrossFade::onExit()
{
    // remove our layer and release all containing objects 
    this->removeChildByTag(kSceneFade, false);
    CCTransitionScene::onExit();
}
#endif

