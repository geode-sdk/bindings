#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void LevelLeaderboard::deleteLocalScores() {
    m_level->m_localBestTimes.clear();
    m_level->m_localBestPoints.clear();
    auto parent = this->getParent();
    this->onClose(nullptr);
    if (parent) {
        parent->addChild(TextAlertPopup::create("Local scores reset.", 1.f, .6f, 150, ""), 100);
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

