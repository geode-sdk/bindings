
#include <Geode/binding/GJAccountSettingsLayer.hpp>
#include <Geode/Geode.hpp>

GJAccountSettingsLayer::GJAccountSettingsLayer() {
    m_accountID = 0;
    m_messageStatus = 0;
    m_friendStatus = 0;
    m_commentHistoryStatus = 0;
    // TODO: fix
    // m_youtubeInput = nullptr;
    // m_twitterInput = nullptr;
    // m_twitchInput = nullptr;
    m_inputs = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJAccountSettingsLayer::~GJAccountSettingsLayer() {
    CC_SAFE_RELEASE(m_inputs);
    CC_SAFE_RELEASE(m_messageSettings);
    CC_SAFE_RELEASE(m_friendRequestSettings);
    CC_SAFE_RELEASE(m_commentSettings);
}

GJAccountSettingsLayer* GJAccountSettingsLayer::create(int accountID) {
    auto ret = new GJAccountSettingsLayer();
    if (ret->init(accountID)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void GJAccountSettingsLayer::updateScoreValues() {
    if (auto score = GameLevelManager::sharedState()->userInfoForAccountID(m_accountID)) {
        score->m_messageState = m_messageStatus;
        score->m_friendStatus = m_friendStatus;
        score->m_commentHistoryStatus = m_commentHistoryStatus;
        // TODO: fix
        // score->m_youtubeURL = m_youtubeURL;
        // score->m_twitterURL = m_twitterURL;
        // score->m_twitchURL = m_twitchURL;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

