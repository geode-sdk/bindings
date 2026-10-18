#include <Geode/binding/SongInfoObject.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool SongInfoObject::containsTag(int tag) {
    return m_tags.find(tag) != m_tags.end();
}
#endif

#if defined(GEODE_IS_WINDOWS)
bool SongInfoObject::canEncode() { return true; }

void SongInfoObject::copyValues(SongInfoObject* object) {
    // Fill missing metadata.
    if (!object) return;

    // Keep links in sync.
    if (m_songLinksString.empty()) {
        this->setSongLinks(object->m_songLinksString);
    }
    if (m_artistLinksString.empty()) {
        this->setArtistLinks(object->m_artistLinksString);
    }
    if (m_songUrl.empty()) {
        m_songUrl = object->m_songUrl;
    }
    if (m_extraArtists.empty()) {
        m_extraArtists = object->m_extraArtists;
    }
    if (m_extraArtistNames.empty()) {
        m_extraArtistNames = object->m_extraArtistNames;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

