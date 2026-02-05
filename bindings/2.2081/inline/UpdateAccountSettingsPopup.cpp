#include <Geode/Bindings.hpp>

UpdateAccountSettingsPopup::UpdateAccountSettingsPopup() {
    m_updateSuccess = false;
    m_textArea = nullptr;
    m_loadingCircle = nullptr;
    m_closeButton = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
UpdateAccountSettingsPopup::~UpdateAccountSettingsPopup() {
    auto gjam = GJAccountManager::sharedState();
    if (gjam->m_accountSettingsDelegate == this) gjam->m_accountSettingsDelegate = nullptr;
}
#endif

