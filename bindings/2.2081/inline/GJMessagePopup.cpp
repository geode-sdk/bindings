#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void GJMessagePopup::blockUser() {
    if (GameLevelManager::sharedState()->blockUser(m_message->m_accountID)) {
        m_uploadPopup = UploadActionPopup::create(this, "Blocking user...");
        m_uploadPopup->show();
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

