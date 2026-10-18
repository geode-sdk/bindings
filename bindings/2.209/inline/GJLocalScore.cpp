#include <Geode/Bindings.hpp>

GJLocalScore::GJLocalScore() {
    m_points = 0;
    m_type = LevelLeaderboardType::Friends;
    m_currentScore = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool GJLocalScore::init(int points, int type) {
    m_points = points;
    m_type = (LevelLeaderboardType)type;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJLocalScore* GJLocalScore::create(int points, int type) {
    auto ret = new GJLocalScore();
    if (ret->init(points, type)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

