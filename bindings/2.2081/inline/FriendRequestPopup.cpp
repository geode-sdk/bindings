#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void FriendRequestPopup::blockUser() {
    if (GameLevelManager::sharedState()->blockUser(m_request->m_accountID)) {
        m_popup = UploadActionPopup::create(this, "Blocking user...");
        m_popup->show();
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

