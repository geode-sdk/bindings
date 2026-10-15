#include <Geode/Bindings.hpp>

CreatorLayer::CreatorLayer() {
    m_secretDoorSprite = nullptr;
    m_questsSprite = nullptr;
    m_vaultDialogIndex = -1;
    m_versusDialogIndex = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool CreatorLayer::canPlayOnlineLevels() {
    return true;
}

void CreatorLayer::onFameLevels(cocos2d::CCObject* sender) {
    cocos2d::CCDirector::sharedDirector()->pushScene(cocos2d::CCTransitionFade::create(0.5f, LevelBrowserLayer::scene(GJSearchObject::create(SearchType::HallOfFame))));
    GameManager::sharedState()->m_sceneEnum = 1;
}
#endif

#if defined(GEODE_IS_WINDOWS)
CreatorLayer* CreatorLayer::create() {
    auto ret = new CreatorLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

