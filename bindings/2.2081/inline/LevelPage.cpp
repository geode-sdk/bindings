#include <Geode/Geode.hpp>

LevelPage::LevelPage() {
    m_isBusy = false;
    m_level = nullptr;
    m_levelMenu = nullptr;
    m_coinObject = nullptr;
    m_secretDoor = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void LevelPage::onMoreGames(cocos2d::CCObject* sender) {
    GameManager::sharedState()->reportAchievementWithID("geometry.ach.moreGames", 100, false);
    auto layer = GJMoreGamesLayer::create();
    cocos2d::CCDirector::sharedDirector()->getRunningScene()->addChild(layer, 100);
    layer->showLayer(false);
}
#endif

#if defined(GEODE_IS_WINDOWS)
LevelPage::~LevelPage() {
    CC_SAFE_RELEASE(m_level);
    CC_SAFE_RELEASE(m_dynamicObjects);
    CC_SAFE_RELEASE(m_progressObjects);
    CC_SAFE_RELEASE(m_coins);
    CC_SAFE_RELEASE(m_levelObjects);
}

LevelPage* LevelPage::create(GJGameLevel* level) {
    auto ret = new LevelPage();
    if (ret->init(level)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void LevelPage::ccTouchMoved(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void LevelPage::ccTouchEnded(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}
#endif

#if defined(GEODE_IS_IOS)
#endif

