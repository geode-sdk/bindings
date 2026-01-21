#include <Geode/Geode.hpp>

CommunityCreditsPage::CommunityCreditsPage() {
    m_pageObjects = nullptr;
    m_prevButton = nullptr;
    m_nextButton = nullptr;
    m_page = -1;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void CommunityCreditsPage::FLAlert_Clicked(FLAlertLayer* alert, bool btn2) {}
#endif

#if defined(GEODE_IS_WINDOWS)
CommunityCreditsPage::~CommunityCreditsPage() {
    CC_SAFE_RELEASE(m_pageObjects);
}

CommunityCreditsPage* CommunityCreditsPage::create() {
    auto ret = new CommunityCreditsPage();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

