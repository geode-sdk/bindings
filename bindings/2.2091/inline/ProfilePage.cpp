#include <Geode/binding/ProfilePage.hpp>
#include <Geode/utils/cocos.hpp>
#include <Geode/binding/GJCommentListLayer.hpp>
#include <Geode/binding/GJUserScore.hpp>
#include <Geode/binding/GameLevelManager.hpp>
#include <Geode/binding/UploadActionPopup.hpp>

bool ProfilePage::ownsTouchPrio() { return true; }

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool ProfilePage::isOnWatchlist(int id) { return false; }

void ProfilePage::toggleMainPageVisibility(bool visible) {
    for (auto node : geode::cocos::CCArrayExt<cocos2d::CCNode, false>(m_arrayWithUsernameLabel)) {
        node->setVisible(visible);
    }
    for (auto node : geode::cocos::CCArrayExt<cocos2d::CCNode, false>(m_buttons)) {
        node->setVisible(visible);
    }
    if (m_list) m_list->setVisible(visible);
    if (visible) this->updatePageArrows();
    else {
        m_rightArrow->setVisible(false);
        m_leftArrow->setVisible(false);
    }
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

#endif

#if defined(GEODE_IS_IOS)
void ProfilePage::updatePageArrows() {
    m_leftArrow->setVisible(m_pageStartIdx != 0);
    m_rightArrow->setVisible(m_itemCount > m_pageEndIdx + m_pageStartIdx);
}
#endif

