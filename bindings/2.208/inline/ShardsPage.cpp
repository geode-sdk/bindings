#include <Geode/Geode.hpp>

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

void ShardsPage::goToPage(int page) {
    if (page < 4 && page != m_page) {
        m_page = page;
        for (int i = 0; i < m_pages->count(); i++) {
            auto arr = static_cast<cocos2d::CCArray*>(m_pages->objectForKey(i));
            for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(arr)) {
                static_cast<cocos2d::CCNode*>(obj)->setVisible(i == page);
            }
        }
        m_prevButton->setVisible(m_page > 0);
        m_nextButton->setVisible(m_page < 3);
        m_tierSprite->setDisplayFrame(cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()->spriteFrameByName(page > 1 ? "tier2Icon_001.png" : "tier1Icon_001.png"));
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

