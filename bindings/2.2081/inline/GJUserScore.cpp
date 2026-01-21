#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GJUserScore::mergeWithScore(GJUserScore* score) {
    m_stars = std::max(m_stars, score->m_stars);
    m_moons = std::max(m_moons, score->m_moons);
    m_diamonds = std::max(m_diamonds, score->m_diamonds);
    m_demons = std::max(m_demons, score->m_demons);
    m_creatorPoints = std::max(m_creatorPoints, score->m_creatorPoints);
    m_secretCoins = std::max(m_secretCoins, score->m_secretCoins);
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJUserScore* GJUserScore::create() {
    auto ret = new GJUserScore();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }

    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MAC) || defined(GEODE_IS_ANDROID)
GJUserScore::GJUserScore() {
    m_scoreType = 0;
    m_userID = 0;
    m_accountID = 0;
    m_stars = 0;
    m_moons = 0;
    m_diamonds = 0;
    m_demons = 0;
    m_playerRank = 0;
    m_creatorPoints = 0;
    m_secretCoins = 0;
    m_iconID = 0;
    m_color1 = 0;
    m_color2 = 0;
    m_special = 0;
    m_iconType = IconType::Cube;
    m_messageState = 0;
    m_friendStatus = 0;
    m_commentHistoryStatus = 0;
    m_glowEnabled = false;
    m_modBadge = 0;
    m_globalRank = 0;
    m_friendReqStatus = 0;
    m_newMsgCount = 0;
    m_friendReqCount = 0;
    m_newFriendCount = 0;
    m_newFriendRequest = false;
    m_toggled = false;
    m_playerCube = 1;
    m_playerShip = 1;
    m_playerBall = 1;
    m_playerUfo = 1;
    m_playerWave = 1;
    m_playerRobot = 1;
    m_playerSpider = 1;
    m_playerSwing = 1;
    m_playerStreak = 1;
    m_unkInt = 0;
    m_unkInt2 = 0;
    m_levelMode = 0;
    m_leaderboardMode = LevelLeaderboardMode::Time;
    m_unk390 = 0;
}
#endif

