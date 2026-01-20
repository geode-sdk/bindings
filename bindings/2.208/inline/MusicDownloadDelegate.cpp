#include <Geode/Geode.hpp>

void MusicDownloadDelegate::loadSongInfoFinished(SongInfoObject* object) {}

void MusicDownloadDelegate::loadSongInfoFailed(int id, GJSongError errorType) {}

void MusicDownloadDelegate::downloadSongFinished(int id) {}

void MusicDownloadDelegate::downloadSongFailed(int id, GJSongError errorType) {}

void MusicDownloadDelegate::songStateChanged() {}

void MusicDownloadDelegate::downloadSFXFinished(int id) {}

void MusicDownloadDelegate::downloadSFXFailed(int id, GJSongError errorType) {}

void MusicDownloadDelegate::musicActionFinished(GJMusicAction action) {}

void MusicDownloadDelegate::musicActionFailed(GJMusicAction action) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

