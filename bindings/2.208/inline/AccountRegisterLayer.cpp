#include <Geode/Geode.hpp>

AccountRegisterLayer::AccountRegisterLayer() {
    m_usernameField = nullptr;
    m_passwordField = nullptr;
    m_confirmPasswordField = nullptr;
    m_emailField = nullptr;
    m_usernameLabel = nullptr;
    m_passwordLabel = nullptr;
    m_confirmPasswordLabel = nullptr;
    m_emailLabel = nullptr;
    m_loadingCircle = nullptr;
    m_lockInput = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void AccountRegisterLayer::hideLoadingUI() {
    this->toggleUI(true);
    m_loadingCircle->setVisible(false);
}

bool AccountRegisterLayer::validPassword(gd::string password) {
    return password.size() > 5;
}

bool AccountRegisterLayer::validUser(gd::string username) {
    return username.size() > 2;
}
#endif

#if defined(GEODE_IS_WINDOWS)
AccountRegisterLayer::~AccountRegisterLayer() {
    auto gjam = GJAccountManager::sharedState();
    if (gjam->m_accountRegisterDelegate == this) gjam->m_accountRegisterDelegate = nullptr;
    CC_SAFE_RELEASE(m_loadingCircle);
}

AccountRegisterLayer* AccountRegisterLayer::create() {
    auto ret = new AccountRegisterLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void AccountRegisterLayer::textInputOpened(CCTextInputNode* node) {}

void AccountRegisterLayer::textChanged(CCTextInputNode* node) {}

void AccountRegisterLayer::resetLabels() {
    this->resetLabel(1);
    this->resetLabel(2);
    this->resetLabel(3);
    this->resetLabel(4);
    this->resetLabel(5);
}

void AccountRegisterLayer::showLoadingUI() {
    this->disableNodes();
    this->toggleUI(false);
    m_loadingCircle->setVisible(true);
}
#endif

#if defined(GEODE_IS_IOS)
bool AccountRegisterLayer::validEmail(gd::string email) {
    if (!email.c_str()) return false;
    auto first = email[0];
    if (first < 'A' || (first > 'Z' && first < 'a') || first > 'z') return false;
    auto len = strlen(email.c_str());
    auto atPos = -1;
    auto dotPos = -1;
    for (int i = 0; i < len; i++) {
        if (email[i] == '@') atPos = i;
        else if (email[i] == '.') dotPos = i;
    }
    return atPos != -1 && dotPos != -1 && atPos <= dotPos && dotPos < len - 1;
}
#endif

