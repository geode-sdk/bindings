#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GooglePlayManager::googlePlaySignedIn() {
    if (m_delegate1) m_delegate1->googlePlaySignedIn();
    if (m_delegate2) m_delegate2->googlePlaySignedIn();
}
#endif

#if defined(GEODE_IS_WINDOWS)
bool GooglePlayManager::init() { return true; }
#endif

#if defined(GEODE_IS_IOS)
#endif

