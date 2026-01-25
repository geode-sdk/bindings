#include <Geode/Geode.hpp>

LeaderboardsLayer::LeaderboardsLayer() {
    m_list = nullptr;
    m_userScores = nullptr;
    m_state = LeaderboardState::Default;
    m_mode = 0;
    m_topBtn = nullptr;
    m_globalBtn = nullptr;
    m_creatorsBtn = nullptr;
    m_friendsBtn = nullptr;
    m_circle = nullptr;
    m_noInternet = nullptr;
    m_modeButtons = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
LeaderboardsLayer::~LeaderboardsLayer() {
    auto glm = GameLevelManager::sharedState();
    if (glm->m_leaderboardManagerDelegate == this) glm->m_leaderboardManagerDelegate = nullptr;
}

LeaderboardsLayer* LeaderboardsLayer::create(LeaderboardState state, int mode) {
    auto ret = new LeaderboardsLayer();
    if (ret->init(state, mode)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCScene* LeaderboardsLayer::scene(LeaderboardState state, int mode) {
    auto scene = cocos2d::CCScene::create();
    AppDelegate::get()->m_runningScene = scene;
    auto layer = LeaderboardsLayer::create(state, mode);
    scene->addChild(layer);
    return scene;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

