#include <Geode/binding/MusicSearchResult.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool MusicSearchResult::init(GJSongType songType) {
    m_songType = songType;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
MusicSearchResult* MusicSearchResult::create(GJSongType songType) {
    auto ret = new MusicSearchResult();
    if (ret->init(songType)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void MusicSearchResult::updateObjects() {
    this->updateObjects(m_sortType);
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
MusicSearchResult::MusicSearchResult() {
    m_filterObjects = nullptr;
    m_tagFilterObjects = nullptr;
    m_artistFilterObjects = nullptr;
    m_startIndex = 0;
    m_audioType = 0;
    m_sortType = AudioSortType::NameAscending;
    m_tagFilter = false;
    m_artistFilter = false;
    m_songType = GJSongType::Music;
}
#endif

