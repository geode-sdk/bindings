#include <Geode/Geode.hpp>

void CustomSongDelegate::songIDChanged(int id) {}

int CustomSongDelegate::getActiveSongID() { return 0; }

gd::string CustomSongDelegate::getSongFileName() { return ""; }

LevelSettingsObject* CustomSongDelegate::getLevelSettings() { return nullptr; }

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

