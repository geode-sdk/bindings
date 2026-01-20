#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void AccountLayer::createToggleButton(gd::string text, cocos2d::SEL_MenuHandler selector, bool toggled, cocos2d::CCMenu* menu, cocos2d::CCPoint position) {
    auto onSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOn_001.png");
    auto offSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOff_001.png");
    onSprite->setScale(.8f);
    offSprite->setScale(.8f);
    auto toggler = CCMenuItemToggler::create(offSprite, onSprite, this, selector);
    toggler->toggle(toggled);
    menu->addChild(toggler);
    toggler->setPosition(menu->convertToNodeSpace(position));
    toggler->setSizeMult(1.5f);
    auto label = cocos2d::CCLabelBMFont::create(text.c_str(), "bigFont.fnt");
    m_mainLayer->addChild(label);
    label->setAnchorPoint({ .0f, .5f });
    label->setPosition(position + cocos2d::CCPoint { onSprite->getContentSize().width * .5f + 6.4f, 0.f });
    auto width = label->getContentSize().width;
    if (width > 120.f) label->setScale(120.f / width);
    label->setScale(std::min(label->getScale(), .35f));
}

void AccountLayer::exitLayer() {
    GJDropDownLayer::exitLayer(nullptr);
}

void AccountLayer::hideLoadingUI() {
    this->toggleUI(true);
    m_loadingCircle->setVisible(false);
}

void AccountLayer::showLoadingUI() {
    this->toggleUI(false);
    m_loadingCircle->setVisible(true);
}

void AccountLayer::toggleUI(bool enable) {
    m_buttonMenu->setEnabled(enable);
    this->setKeypadEnabled(enable);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void AccountLayer::doBackup() {
    this->updatePage(false);
    if (!GJAccountManager::sharedState()->getAccountBackupURL()) this->backupAccountFailed(BackupAccountError::GenericError, 0);
    else this->showLoadingUI();
}

void AccountLayer::doSync() {
    this->updatePage(false);
    if (!GJAccountManager::sharedState()->getAccountSyncURL()) this->syncAccountFailed(BackupAccountError::GenericError, 0);
    else this->showLoadingUI();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

