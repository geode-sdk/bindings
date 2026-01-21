#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool GameLevelOptionsLayer::init(GJGameLevel* level) {
    m_gap = 40.f;
    m_maxLabelScale = .4f;
    if (level) {
        m_level = level;
        level->retain();
    }
    if (!GJOptionsLayer::init(2)) return false;
    this->preSetup();
    this->postSetup();
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

