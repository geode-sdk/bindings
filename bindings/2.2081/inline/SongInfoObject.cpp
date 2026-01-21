#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool SongInfoObject::containsTag(int tag) {
    return m_tags.find(tag) != m_tags.end();
}
#endif

#if defined(GEODE_IS_WINDOWS)
bool SongInfoObject::canEncode() { return true; }

void SongInfoObject::updateArtists(gd::string artists) {
    m_extraArtists = artists;
    m_artistIDs.clear();
    if (m_extraArtists.empty()) return;
    std::vector<std::string> splitArtists;
    auto start = 0;
    auto index = artists.find_first_of(".");
    auto size = artists.size();
    while (index != std::string::npos) {
        auto str = artists.substr(start, index - start);
        if (!str.empty() || start != size) {
            splitArtists.push_back(str);
        }
        start = index + 1;
        index = artists.find_first_of(".", start);
    }
    for (auto& artistID : splitArtists) {
        m_artistIDs.insert(atoi(artistID.c_str()));
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

