#include <Geode/Bindings.hpp>

ShardsPage::ShardsPage() {
    m_pages = nullptr;
    m_prevButton = nullptr;
    m_nextButton = nullptr;
    m_tierSprite = nullptr;
    m_page = -1;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void ShardsPage::FLAlert_Clicked(FLAlertLayer* alert, bool btn2) {}
#endif

#if defined(GEODE_IS_WINDOWS)
ShardsPage::~ShardsPage() {
    CC_SAFE_RELEASE(m_pages);
}

ShardsPage* ShardsPage::create() {
    auto ret = new ShardsPage();
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

