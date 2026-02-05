#include <Geode/Bindings.hpp>

OptionsLayer::OptionsLayer() {
    m_optionsMenu = nullptr;
    m_unknown = nullptr;
    m_layerChoice = 0;
    m_recordReplays = false;
    m_lastVaultDialog = -1;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
CCMenuItemToggler* OptionsLayer::createToggleButton(gd::string text, cocos2d::SEL_MenuHandler selector, bool toggled, cocos2d::CCMenu* menu, cocos2d::CCPoint position) {
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
    return toggler;
}

void OptionsLayer::exitLayer() {
    GJDropDownLayer::exitLayer(nullptr);
}

void OptionsLayer::onProgressBar(cocos2d::CCObject* sender) {
    auto gameManager = GameManager::sharedState();
    gameManager->m_showProgressBar = !gameManager->m_showProgressBar;
}

void OptionsLayer::onRecordReplays(cocos2d::CCObject* sender) {
    auto gameManager = GameManager::sharedState();
    gameManager->m_recordGameplay = !gameManager->m_recordGameplay;
}

void OptionsLayer::tryEnableRecord() {
    m_recordReplays = false;
    FLAlertLayer::create(
        nullptr,
        "Unavailable",
        "Gameplay recording is not supported on this device.",
        "OK",
        nullptr,
        300.f
    )->show();
}
#endif

#if defined(GEODE_IS_WINDOWS)
OptionsLayer* OptionsLayer::create() {
    auto ret = new OptionsLayer();
    if (ret->init("Settings")) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void OptionsLayer::FLAlert_Clicked(FLAlertLayer* layer, bool btn2) {}
#endif

#if defined(GEODE_IS_IOS)
void OptionsLayer::onVideo(cocos2d::CCObject* sender) {
    VideoOptionsLayer::create()->show();
}
#endif

