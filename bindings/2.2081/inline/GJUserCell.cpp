#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GJUserCell::GJUserCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}

void GJUserCell::onViewFriendRequest(cocos2d::CCObject* sender) {
    if (!m_userScore || m_userScore->m_accountID <= 0) return;
    if (auto request = GameLevelManager::sharedState()->friendRequestFromAccountID(m_userScore->m_accountID)) {
        if (m_userScore->m_newFriendRequest) {
            if (auto child = m_mainLayer->getChildByTag(100)) child->setVisible(false);
            m_userScore->m_newFriendRequest = false;
        }
        FriendRequestPopup::create(request)->show();
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJUserCell::~GJUserCell() {
    if (m_uploadPopup) m_uploadPopup->m_delegate = nullptr;
    CC_SAFE_RELEASE(m_userScore);
}

void GJUserCell::updateBGColor(int index) {
    m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
    m_backgroundLayer->setOpacity(255);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

