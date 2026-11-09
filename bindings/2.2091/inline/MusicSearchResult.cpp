#include <Geode/mapping/CCArray.hpp>
#include <Geode/binding/MusicSearchResult.hpp>
#include <Geode/utils/cocos.hpp>


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

cocos2d::CCArray* MusicSearchResult::applyArtistFilters(cocos2d::CCArray* objects) {
    m_artistFilter = false;
    std::vector<int> artistIDs;
    for (auto object : geode::cocos::CCArrayExt<OptionsObject, false>(m_artistFilterObjects)) {
        if (object->m_enabled) artistIDs.push_back(object->m_optionID);
    }
    if (artistIDs.empty() || objects->count() == 0) return objects;
    m_artistFilter = true;
    auto filterObjects = cocos2d::CCArray::create();
    for (auto song : geode::cocos::CCArrayExt<SongInfoObject, false>(objects)) {
        for (auto artistID : artistIDs) {
            if (song->m_artistID == artistID || song->m_artistIDs.contains(artistID)) {
                filterObjects->addObject(song);
                break;
            }
        }
    }
    return filterObjects;
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

