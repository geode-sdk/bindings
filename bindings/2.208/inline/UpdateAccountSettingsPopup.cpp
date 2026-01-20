
#include <Geode/binding/UpdateAccountSettingsPopup.hpp>
#include <Geode/Geode.hpp>

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

#if defined(GEODE_IS_IOS)
UpdateAccountSettingsPopup* UpdateAccountSettingsPopup::create(GJAccountSettingsLayer* settingsLayer, int messageStatus, int friendStatus, int commentStatus, gd::string youtubeURL, gd::string twitterURL, gd::string twitchURL) {
    auto ret = new UpdateAccountSettingsPopup();
    if (ret->init(settingsLayer, messageStatus, friendStatus, commentStatus, youtubeURL, twitterURL, twitchURL)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

