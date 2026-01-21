#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool MusicArtistObject::init(int id, gd::string name, gd::string url, gd::string youtube) {
    m_artistID = id;
    m_artistName = name;
    m_artistURL = url;
    m_artistYouTube = youtube;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

