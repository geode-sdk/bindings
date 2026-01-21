#include <Geode/Geode.hpp>

AccountHelpLayer::AccountHelpLayer() {
    m_unk290 = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void AccountHelpLayer::doUnlink() {
    GJAccountManager::sharedState()->unlinkFromAccount();
    this->exitLayer();
}

void AccountHelpLayer::exitLayer() {
    GJDropDownLayer::exitLayer(nullptr);
}
#endif

#if defined(GEODE_IS_WINDOWS)
AccountHelpLayer::~AccountHelpLayer() {
    auto gjam = GJAccountManager::sharedState();
    if (gjam->m_accountDelegate == this) gjam->m_accountDelegate = nullptr;
}

AccountHelpLayer* AccountHelpLayer::create() {
    auto ret = new AccountHelpLayer();
    if (ret->init("Account Help")) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void AccountHelpLayer::verifyUnlink() {
    auto alert = FLAlertLayer::create(
        this,
        "Warning",
        "This will <cr>delete</c> ALL <cl>save data</c>.\nDo you want to continue?\n<cy>(You cannot undo this action)</c>",
        "Cancel",
        "DELETE",
        300.f,
        false,
        0.f,
        1.f
    );
    alert->setTag(4);
    alert->m_button2->updateBGImage("GJ_button_06.png");
    alert->show();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

