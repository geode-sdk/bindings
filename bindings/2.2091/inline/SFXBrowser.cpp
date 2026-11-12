#include <Geode/binding/SFXBrowser.hpp>
#include <Geode/binding/SFXSearchResult.hpp>

#if !defined(GEODE_IS_IOS)
SFXBrowser::SFXBrowser() {
    m_searchResult = nullptr;
    m_sfxObjects = nullptr;
    m_listLayer = nullptr;
    m_nameLabel = nullptr;
    m_pathLabel = nullptr;
    m_settingsButton = nullptr;
    m_infoLabel = nullptr;
    m_pageLabel = nullptr;
    m_prevButton = nullptr;
    m_refreshButton = nullptr;
    m_toggleSearchButton = nullptr;
    m_searchInput = nullptr;
    m_searchBackground = nullptr;
    m_clearSearchButton = nullptr;
    m_searchControls = nullptr;
    m_searchActive = false;
    m_favoritesButton = nullptr;
    m_recentButton = nullptr;
    m_levelSFXButton = nullptr;
    m_customSFXButton = nullptr;
    m_newFolderButton = nullptr;
    m_importFolderButton = nullptr;
    m_replaceButton = nullptr;
    m_shareButton = nullptr;
    m_pendingLevelSFXImport = false;
    m_exportFileButton = nullptr;
    m_importFileButton = nullptr;
    m_selectAllButton = nullptr;
    m_moveToFolderButton = nullptr;
    m_deleteSelectedButton = nullptr;
    m_selectedCountLabel = nullptr;
    m_selectedCustomID = 0;
    m_pendingPlacementSFXID = 0;
    m_pendingPlacementCustomID = 0;
    m_pendingRenameCustomID = 0;
    m_savedLibraryFolderID = 0;
    m_savedCustomFolderID = 0;
    m_savedLibraryPage = 0;
    m_savedLibraryScrollY = 0.0f;
    m_savedCustomPage = 0;
    m_savedCustomScrollY = 0.0f;
    m_circleSprite = nullptr;
    m_libraryVersion = 0;
    m_cellAmount = 0;
    m_gettingURL = false;
    m_selectedCell = false;
    m_snapToSelected = false;
    m_compactMode = false;
    m_sortType = AudioSortType::NameAscending;
    m_lastFolderView = AudioViewType{};
    m_delegate = nullptr;
    m_autoUpdating = false;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif
