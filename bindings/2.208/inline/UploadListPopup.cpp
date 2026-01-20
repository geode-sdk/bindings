#include <Geode/Geode.hpp>

UploadListPopup::UploadListPopup() {
    m_levelList = nullptr;
    m_textArea = nullptr;
    m_loadingCircle = nullptr;
    m_backButton = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
UploadListPopup::~UploadListPopup() {
    CC_SAFE_RELEASE(m_levelList);
    auto glm = GameLevelManager::sharedState();
    if (glm->m_listUploadDelegate == this) glm->m_listUploadDelegate = nullptr;
}

UploadListPopup* UploadListPopup::create(GJLevelList* list) {
    auto ret = new UploadListPopup();
    if (ret->init(list)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void UploadListPopup::keyBackClicked() {}
#endif

#if defined(GEODE_IS_IOS)
#endif

