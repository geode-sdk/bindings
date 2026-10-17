#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
// TODO: 2.209
bool MusicArtistObject::init(int id, std::string name) {
    m_artistID = id;
    m_artistName = name;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

