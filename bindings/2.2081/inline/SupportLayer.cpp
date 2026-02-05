#include <Geode/Bindings.hpp>

SupportLayer::SupportLayer() {
    m_uploadPopup = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void SupportLayer::exitLayer() {
    GJDropDownLayer::exitLayer(nullptr);
}
#endif

#if defined(GEODE_IS_WINDOWS)
SupportLayer::~SupportLayer() {
    auto glm = GameLevelManager::sharedState();
    if (glm->m_uploadActionDelegate == this) glm->m_uploadActionDelegate = nullptr;
}

SupportLayer* SupportLayer::create() {
    auto ret = new SupportLayer();
    if (ret->init("Support", 220.f, false)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void SupportLayer::sendSupportMail() {
    PlatformToolbox::sendMail("Geometry Dash Support", cocos2d::CCString::createWithFormat(
        "\n\nGame: %s"
        "\n\nUserID: %s"
        "\n\nAccount: %s"
        "\n\nPlatform: %i"
        "\n\nVersion: %i - %i",
        "Geometry Dash",
        GameManager::sharedState()->m_playerUDID.c_str(),
        GJAccountManager::sharedState()->m_username.c_str(),
        (int)AppDelegate::get()->m_ios,
        22,
        47
    )->getCString(), "support@robtopgames.com");
}
#endif

#if defined(GEODE_IS_IOS)
#endif

