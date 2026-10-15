#include <Geode/Bindings.hpp>

LeaderboardsLayer::LeaderboardsLayer() {
    m_list = nullptr;
    m_userScores = nullptr;
    m_type = LeaderboardType::Default;
    m_stat = LeaderboardStat::Stars;
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

LeaderboardsLayer* LeaderboardsLayer::create(LeaderboardType type, LeaderboardStat stat) {
    auto ret = new LeaderboardsLayer();
    if (ret->init(type, stat)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCScene* LeaderboardsLayer::scene(LeaderboardType type, LeaderboardStat stat) {
    auto scene = cocos2d::CCScene::create();
    AppDelegate::get()->m_runningScene = scene;
    auto layer = LeaderboardsLayer::create(type, stat);
    scene->addChild(layer);
    return scene;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

