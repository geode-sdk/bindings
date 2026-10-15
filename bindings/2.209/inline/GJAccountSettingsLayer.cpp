#include <Geode/Bindings.hpp>

GJAccountSettingsLayer::GJAccountSettingsLayer() {
    m_accountID = 0;
    m_messageStatus = 0;
    m_friendStatus = 0;
    m_commentHistoryStatus = 0;
    m_inputs = nullptr;
    m_messageSettings = nullptr;
    m_friendRequestSettings = nullptr;
    m_commentSettings = nullptr;
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
#endif

#if defined(GEODE_IS_IOS)
#endif

