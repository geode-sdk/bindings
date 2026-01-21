#include <Geode/Geode.hpp>

void LevelManagerDelegate::loadLevelsFinished(cocos2d::CCArray* levels, char const* key) {
    this->loadLevelsFinished(levels, key, 0);
}

void LevelManagerDelegate::loadLevelsFailed(char const* key) {
    this->loadLevelsFailed(key, 0);
}

void LevelManagerDelegate::loadLevelsFinished(cocos2d::CCArray* levels, char const* key, int type) {}

void LevelManagerDelegate::loadLevelsFailed(char const* key, int type) {}

void LevelManagerDelegate::setupPageInfo(gd::string info, char const* key) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

