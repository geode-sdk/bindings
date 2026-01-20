#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
char const* GJSearchObject::getNextPageKey() {
    return this->getSearchKey(m_searchType, m_searchQuery, m_difficulty, m_length, m_page + 1, m_starFilter, m_uncompletedFilter, m_featuredFilter, m_songID, m_originalFilter, m_twoPlayerFilter, m_customSongFilter, m_songFilter, m_noStarFilter, m_coinsFilter, m_epicFilter, m_legendaryFilter, m_mythicFilter, m_completedFilter, (int)m_demonFilter, m_folder, m_searchMode);
}

GJSearchObject* GJSearchObject::getNextPageObject() {
    return this->getPageObject(m_page + 1);
}

GJSearchObject* GJSearchObject::getPrevPageObject() {
    return this->getPageObject(std::max(m_page - 1, 0));
}

bool GJSearchObject::init(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) {
    m_searchType = searchType;
    m_searchQuery = searchQuery;
    m_difficulty = difficulty;
    m_length = length;
    m_page = page;
    m_starFilter = star;
    m_uncompletedFilter = uncompleted;
    m_featuredFilter = featured;
    m_songID = songID;
    m_originalFilter = original;
    m_twoPlayerFilter = twoPlayer;
    m_customSongFilter = customSong;
    m_songFilter = songFilter;
    m_noStarFilter = noStar;
    m_coinsFilter = coins;
    m_epicFilter = epic;
    m_mythicFilter = mythic;
    m_legendaryFilter = legendary;
    m_completedFilter = onlyCompleted;
    m_demonFilter = (GJDifficulty)demonFilter;
    m_folder = folder;
    m_searchMode = searchMode;
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

