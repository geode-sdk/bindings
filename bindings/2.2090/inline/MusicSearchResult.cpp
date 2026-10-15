#include <Geode/Bindings.hpp>
#include <Geode/utils/cocos.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool MusicSearchResult::init(GJSongType songType) {
    m_songType = songType;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
MusicSearchResult::~MusicSearchResult() {
    CC_SAFE_RELEASE(m_filterObjects);
}

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
    if (objects->count() == 0) return objects;
    auto filterObjects = cocos2d::CCArray::create();
    m_artistFilter = false;
    for (auto object : geode::cocos::CCArrayExt<OptionsObject, false>(m_artistFilterObjects)) {
        if (object->m_enabled) {
            m_artistFilter = true;
            auto filtered = MusicDownloadManager::sharedState()->filterMusicByArtistID(object->m_optionID, objects);
            for (auto fobj : geode::cocos::CCArrayExt<OptionsObject, false>(filtered)) {
                filterObjects->addObject(fobj);
            }
        }
    }
    return m_artistFilter ? filterObjects : objects;
}

void MusicSearchResult::createArtistFilterObjects() {
    if (m_artistFilterObjects) return;
    auto objects = MusicDownloadManager::sharedState()->getAllMusicArtists(this);
    if (m_artistFilterObjects != objects) {
        CC_SAFE_RETAIN(objects);
        CC_SAFE_RELEASE(m_artistFilterObjects);
        m_artistFilterObjects = objects;
    }
}

void MusicSearchResult::createTagFilterObjects() {
    if (m_tagFilterObjects) return;
    auto objects = MusicDownloadManager::sharedState()->getAllMusicTags(this);
    if (m_tagFilterObjects != objects) {
        CC_SAFE_RETAIN(objects);
        CC_SAFE_RELEASE(m_tagFilterObjects);
        m_tagFilterObjects = objects;
    }
}

void MusicSearchResult::updateFutureCount(cocos2d::CCArray* objects, cocos2d::CCArray* allObjects) {
    auto count = objects->count();
    for (auto object : geode::cocos::CCArrayExt<OptionsObject, false>(m_tagFilterObjects)) {
        object->m_count = object->m_enabled ? MusicDownloadManager::sharedState()->filterMusicByTag(object->m_optionID, objects)->count() : count;
    }
    auto filtered = this->applyTagFilters(allObjects);
    for (auto object : geode::cocos::CCArrayExt<OptionsObject, false>(m_artistFilterObjects)) {
        object->m_count = MusicDownloadManager::sharedState()->filterMusicByArtistID(object->m_optionID, filtered)->count();
    }
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

