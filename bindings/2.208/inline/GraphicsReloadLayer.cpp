#include <Geode/Geode.hpp>

GraphicsReloadLayer::GraphicsReloadLayer() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GraphicsReloadLayer* GraphicsReloadLayer::create(cocos2d::TextureQuality quality, cocos2d::CCSize resolution, bool fullscreen, bool borderless, bool fix, bool changedResolution) {
    auto ret = new GraphicsReloadLayer();
    if (ret->init(quality, resolution, fullscreen, borderless, fix, changedResolution)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCScene* GraphicsReloadLayer::scene(cocos2d::TextureQuality quality, cocos2d::CCSize resolution, bool fullscreen, bool borderless, bool fix, bool changedResolution) {
    auto scene = cocos2d::CCScene::create();
    AppDelegate::get()->m_runningScene = scene;
    auto layer = GraphicsReloadLayer::create(quality, resolution, fullscreen, borderless, fix, changedResolution);
    scene->addChild(layer);
    return scene;
}

bool GraphicsReloadLayer::init(cocos2d::TextureQuality quality, cocos2d::CCSize resolution, bool fullscreen, bool borderless, bool fix, bool changedResolution) {
    if (!CCLayer::init()) return false;
    m_quality = quality;
    m_resolution = resolution;
    m_changedResolution = changedResolution;
    m_fullscreen = fullscreen;
    m_borderless = borderless;
    m_fix = fix;
    this->runAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(.1f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(GraphicsReloadLayer::performReload)),
        nullptr
    ));
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void GraphicsReloadLayer::performReload() {
    auto director = cocos2d::CCDirector::sharedDirector();
    director->replaceScene(cocos2d::CCScene::create());
    auto oldQuality = director->getLoadedTextureQuality();
    director->updateContentScale(m_quality);
    auto newQuality = director->getLoadedTextureQuality();
    auto gameManager = GameManager::sharedState();
    if (gameManager->getGameVariable(GameVar::WindowedMode) == m_fullscreen) {
        gameManager->setGameVariable(GameVar::WindowedMode, !m_fullscreen);
        gameManager->setGameVariable(GameVar::BorderlessFullscreen, m_borderless);
        gameManager->setGameVariable(GameVar::BorderlessFix, m_fix);
        gameManager->switchScreenMode(m_fullscreen, m_borderless, m_fix, true);
    }
    else if (!m_fullscreen || m_borderless == gameManager->getGameVariable(GameVar::BorderlessFullscreen) || m_fix == gameManager->getGameVariable(GameVar::BorderlessFix)) {
        gameManager->setGameVariable(GameVar::BorderlessFullscreen, m_borderless);
        gameManager->setGameVariable(GameVar::BorderlessFix, m_fix);
        if (oldQuality == newQuality) gameManager->queueReloadMenu();
        else gameManager->reloadAll(false, false, false, false, true);
    }
    if (gameManager->getGameVariable(GameVar::ShowFPS)) director->toggleShowFPS(1, "chatFont.fnt", { 0.f, 0.f });
}
#endif

