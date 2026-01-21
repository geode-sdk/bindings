#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool ProfilePage::isOnWatchlist(int id) { return false; }

void ProfilePage::toggleMainPageVisibility(bool visible) {
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_arrayWithUsernameLabel)) {
        static_cast<cocos2d::CCNode*>(obj)->setVisible(visible);
    }
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_buttons)) {
        static_cast<cocos2d::CCNode*>(obj)->setVisible(visible);
    }
    if (m_list) m_list->setVisible(visible);
    if (visible) this->updatePageArrows();
    m_rightArrow->setVisible(false);
    m_leftArrow->setVisible(false);
}

void ProfilePage::updateLevelsLabel() {}
#endif

#if defined(GEODE_IS_WINDOWS)
void ProfilePage::blockUser() {
    if (GameLevelManager::sharedState()->blockUser(m_score->m_accountID)) {
        m_popupDelegate = UploadActionPopup::create(this, "Blocking user...");
        m_popupDelegate->show();
    }
}

void ProfilePage::setupComments() {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto leftSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_arrow_01_001.png");
    leftSprite->setScale(.8f);
    m_leftArrow = CCMenuItemSpriteExtra::create(leftSprite, this, menu_selector(ProfilePage::onPrevPage));
    m_buttonMenu->addChild(m_leftArrow);
    m_leftArrow->setPosition(m_buttonMenu->convertToNodeSpace(winSize / 2.f + cocos2d::CCPoint { -195.f, -53.f }));
    m_leftArrow->setSizeMult(2.f);
    auto rightSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_arrow_01_001.png");
    rightSprite->setFlipX(true);
    rightSprite->setScale(.8f);
    m_rightArrow = CCMenuItemSpriteExtra::create(rightSprite, this, menu_selector(ProfilePage::onNextPage));
    m_buttonMenu->addChild(m_rightArrow);
    m_rightArrow->setPosition(m_buttonMenu->convertToNodeSpace(winSize / 2.f + cocos2d::CCPoint { 195.f, -53.f }));
    m_rightArrow->setSizeMult(2.f);
    m_leftArrow->setVisible(false);
    m_rightArrow->setVisible(false);
}
#endif

#if defined(GEODE_IS_IOS)
void ProfilePage::updatePageArrows() {
    m_leftArrow->setVisible(m_pageStartIdx != 0);
    m_rightArrow->setVisible(m_itemCount > m_pageEndIdx + m_pageStartIdx);
}
#endif

