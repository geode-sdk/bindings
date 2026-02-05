#include <Geode/Bindings.hpp>


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
void AccountLoginLayer::resetLabel(int tag) {
    if (tag == 1) {
        m_usernameLabel->setString("Username:");
        m_usernameLabel->setColor({ 255, 255, 255 });
    }
    else if (tag == 2) {
        m_passwordLabel->setString("Password:");
        m_passwordLabel->setColor({ 255, 255, 255 });
    }
}
#endif

