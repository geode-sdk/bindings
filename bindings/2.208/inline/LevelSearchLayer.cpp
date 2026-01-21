#include <Geode/Geode.hpp>

LevelSearchLayer::LevelSearchLayer() {
    m_type = 0;
    m_searchInput = nullptr;
    m_starsSprite = nullptr;
    m_difficultySprites = nullptr;
    m_lengthSprites = nullptr;
    m_difficultyDict = nullptr;
    m_lastDifficultySprite = nullptr;
    m_demonTypeButton = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
char const* LevelSearchLayer::getDiffKey(int diff) {
    return cocos2d::CCString::createWithFormat("D%i", diff)->getCString();
}

char const* LevelSearchLayer::getTimeKey(int time) {
    return cocos2d::CCString::createWithFormat("T%i", time)->getCString();
}

void LevelSearchLayer::onClose(cocos2d::CCObject* sender) {
    m_searchInput->onClickTrackNode(false);
}

void LevelSearchLayer::onStarAward(cocos2d::CCObject* sender) {
    this->onClose(nullptr);
    cocos2d::CCDirector::sharedDirector()->pushScene(cocos2d::CCTransitionFade::create(.5f, LevelBrowserLayer::scene(this->getSearchObject(SearchType::Sends, ""))));
}
#endif

#if defined(GEODE_IS_WINDOWS)
LevelSearchLayer::~LevelSearchLayer() {
    CC_SAFE_RELEASE(m_difficultyDict);
    CC_SAFE_RELEASE(m_difficultySprites);
    CC_SAFE_RELEASE(m_lengthSprites);
}

LevelSearchLayer* LevelSearchLayer::create(int type) {
    auto ret = new LevelSearchLayer();
    if (ret->init(type)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

gd::string LevelSearchLayer::getLevelLenKey() {
    return GameLevelManager::sharedState()->getLengthStr(
        this->checkTime(0),
        this->checkTime(1),
        this->checkTime(2),
        this->checkTime(3),
        this->checkTime(4),
        this->checkTime(5)
    );
}

gd::string LevelSearchLayer::getSearchDiffKey() {
    return GameLevelManager::sharedState()->getDifficultyStr(
        this->checkDiff(0),
        this->checkDiff(1),
        this->checkDiff(2),
        this->checkDiff(3),
        this->checkDiff(4),
        this->checkDiff(5),
        this->checkDiff(6),
        this->checkDiff(7)
    );
}
#endif

#if defined(GEODE_IS_IOS)
#endif

