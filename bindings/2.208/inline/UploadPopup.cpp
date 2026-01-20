#include <Geode/Geode.hpp>

UploadPopup::UploadPopup() {
    m_level = nullptr;
    m_textArea = nullptr;
    m_loadingCircle = nullptr;
    m_backButton = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
UploadPopup::~UploadPopup() {
    CC_SAFE_RELEASE(m_level);
    auto glm = GameLevelManager::sharedState();
    if (glm->m_levelUploadDelegate == this) glm->m_levelUploadDelegate = nullptr;
}

UploadPopup* UploadPopup::create(GJGameLevel* level) {
    auto ret = new UploadPopup();
    if (ret->init(level)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void UploadPopup::keyBackClicked() {}
#endif

#if defined(GEODE_IS_IOS)
#endif

