#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void AccountLoginLayer::disableNodes() {
    m_usernameInput->onClickTrackNode(false);
    m_passwordInput->onClickTrackNode(false);
}

void AccountLoginLayer::hideLoadingUI() {
    this->toggleUI(true);
    m_loadingCircle->setVisible(false);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void AccountLoginLayer::textInputOpened(CCTextInputNode* node) {}

void AccountLoginLayer::textChanged(CCTextInputNode* node) {}

void AccountLoginLayer::resetLabels() {
    this->resetLabel(1);
    this->resetLabel(2);
}

void AccountLoginLayer::showLoadingUI() {
    this->disableNodes();
    this->toggleUI(false);
    m_loadingCircle->setVisible(true);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

