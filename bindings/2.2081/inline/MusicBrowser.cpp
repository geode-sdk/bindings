#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void MusicBrowser::setupMusicBrowser() {
    auto mdm = MusicDownloadManager::sharedState();
    if (mdm->m_customContentURL.empty()) mdm->getCustomContentURL();
    auto searchResult = MusicSearchResult::create(m_songType);
    searchResult->setTag(m_songType == GJSongType::NCS ? 6 : 0);
    this->setupList(searchResult);
    if (!mdm->m_downloadingMusicLibrary) this->onUpdateLibrary(nullptr);
}

void MusicBrowser::updatePageLabel() {
    auto count = m_searchResult->m_filterObjects->count();
    if (count > 0) {
        auto start = m_searchResult->m_startIndex * 10;
        auto end = std::min<int>(start + 10, count);
        m_pageLabel->setString(cocos2d::CCString::createWithFormat("%i to %i of %i", start + 1, end, count)->getCString());
    }
    else m_pageLabel->setString("No matches");
}
#endif

