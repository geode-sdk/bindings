#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCTransitionCrossFade() {}
cocos2d::~CCTransitionCrossFade() {}

cocos2d::CCTransitionCrossFade* cocos2d::CCTransitionCrossFade::create(float t, cocos2d::CCScene* scene) {
    CCTransitionCrossFade* pScene = new CCTransitionCrossFade();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

void cocos2d::CCTransitionCrossFade::onEnter() {
    cocos2d::CCTransitionScene::onEnter();

    // create a transparent color layer
    // in which we are going to add our rendertextures
    cocos2d::ccColor4B  color = {0,0,0,0};
    cocos2d::CCSize size = cocos2d::CCDirector::sharedDirector()->getWinSize();
    cocos2d::CCLayerColor* layer = cocos2d::CCLayerColor::create(color);

    // create the first render texture for inScene
    cocos2d::CCRenderTexture* inTexture = cocos2d::CCRenderTexture::create((int)size.width, (int)size.height);

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
    cocos2d::CCRenderTexture* outTexture = cocos2d::CCRenderTexture::create((int)size.width, (int)size.height);
    outTexture->getSprite()->setAnchorPoint( ccp(0.5f,0.5f) );
    outTexture->setPosition( ccp(size.width/2, size.height/2) );
    outTexture->setAnchorPoint( ccp(0.5f,0.5f) );

    // render outScene to its texturebuffer
    outTexture->begin();
    m_pOutScene->visit();
    outTexture->end();

    // create blend functions

    cocos2d::ccBlendFunc blend1 = {GL_ONE, GL_ONE}; // inScene will lay on background and will not be used with alpha
    cocos2d::ccBlendFunc blend2 = {GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA}; // we are going to blend outScene via alpha 

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
    cocos2d::CCAction* layerAction = cocos2d::CCSequence::create
    (
        cocos2d::CCFadeTo::create(m_fDuration, 0),
        cocos2d::CCCallFunc::create(this, callfunc_selector(cocos2d::CCTransitionScene::hideOutShowIn)),
        cocos2d::CCCallFunc::create(this, callfunc_selector(cocos2d::CCTransitionScene::finish)),
        NULL
    );


    // run the blend action
    outTexture->getSprite()->runAction( layerAction );

    // add the layer (which contains our two rendertextures) to the scene
    addChild(layer, 2, kSceneFade);
}

void cocos2d::CCTransitionCrossFade::onExit() {
    // remove our layer and release all containing objects 
    this->removeChildByTag(kSceneFade, false);
    CCTransitionScene::onExit();
}

void cocos2d::CCTransitionCrossFade::draw() {
    // override draw since both scenes (textures) are rendered in 1 scene
}

#endif

