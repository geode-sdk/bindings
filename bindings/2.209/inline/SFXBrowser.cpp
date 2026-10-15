#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
SFXBrowser::SFXBrowser() {
    m_searchResult = nullptr;
    m_sfxObjects = nullptr;
    m_listLayer = nullptr;
    m_nameLabel = nullptr;
    m_pathLabel = nullptr;
    m_infoLabel = nullptr;
    m_pageLabel = nullptr;
    m_searchLabel = nullptr;
    m_prevButton = nullptr;
    m_refreshButton = nullptr;
    m_clearSearchButton = nullptr;
    m_circleSprite = nullptr;
    m_libraryVersion = 0;
    m_cellAmount = 0;
    m_gettingURL = false;
    m_selectedCell = false;
    m_snapToSelected = false;
    m_compactMode = false;
    m_sortType = AudioSortType::NameAscending;
    m_delegate = nullptr;
    m_autoUpdating = false;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SFXBrowser::~SFXBrowser() {
    MusicDownloadManager::sharedState()->removeMusicDownloadDelegate(this);
    CC_SAFE_RELEASE(m_sfxObjects);
    CC_SAFE_RELEASE(m_searchResult);
}

SFXBrowser* SFXBrowser::create(int id) {
    auto ret = new SFXBrowser();
    if (ret->init(id)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

