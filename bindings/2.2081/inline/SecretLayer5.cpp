#include <Geode/Bindings.hpp>
#ifdef GEODE_IS_WINDOWS
#include <random>
#endif

#if !defined(GEODE_IS_IOS)
SecretLayer5::SecretLayer5() {
    m_threadTag = -1;
    m_basicMessageIndex = -1;
    m_selectedThread = 0;
    m_threadMessageIndex = 0;
    m_basicMessageCount = 0;
    m_errorMessageIndex = -1;
    m_textInput = nullptr;
    m_messageLabel = nullptr;
    m_exiting = false;
    m_torchFires = nullptr;
    m_loading = false;
    m_rewardStatus = 0;
    m_uiLocked = false;
    m_chatIndex = -1;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
gd::string SecretLayer5::getMessage() {
    return " ";
}

cocos2d::CCNode* SecretLayer5::nodeWithTag(int tag) {
    auto ret = cocos2d::CCNode::create();
    ret->setTag(tag);
    return ret;
}
#endif

#if defined(GEODE_IS_WINDOWS)
SecretLayer5::~SecretLayer5() {
    CC_SAFE_RELEASE(m_torchFires);
    auto glm = GameLevelManager::sharedState();
    if (glm->m_GJOnlineRewardDelegate == this) glm->m_GJOnlineRewardDelegate = nullptr;
}

SecretLayer5* SecretLayer5::create() {
    auto ret = new SecretLayer5();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCScene* SecretLayer5::scene() {
    auto scene = cocos2d::CCScene::create();
    AppDelegate::get()->m_runningScene = scene;
    auto layer = SecretLayer5::create();
    scene->addChild(layer);
    return scene;
}

void SecretLayer5::FLAlert_Clicked(FLAlertLayer* layer, bool btn2) {}

void SecretLayer5::dialogClosed(DialogLayer* layer) {}

void SecretLayer5::fadeInMessage() {
    auto labels = m_messageArea->getChildren()->data;
    CCObject* obj;
    CCARRAYDATA_FOREACH(labels, obj) {
        auto characters = static_cast<cocos2d::CCLabelBMFont*>(obj)->getChildren()->data;
        CCObject* charObj;
        CCARRAYDATA_FOREACH(characters, charObj) {
            static_cast<cocos2d::CCSprite*>(charObj)->setColor({ (uint8_t)(((float)rand() / (float)RAND_MAX) * 25.f + 150.f), 0, 255 });
        }
    }
    auto duration = m_messageArea->fadeInCharacters(.6f, .06f, false, TextFadeInStyle::Scale);
    this->runAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(duration + .6f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(SecretLayer5::fadeOutMessage)),
        nullptr
    ));
}

void SecretLayer5::hideTextInput() {
    m_textInput->setTouchEnabled(false);
    m_textInput->onClickTrackNode(false);
    m_textInput->setVisible(false);
    m_messageArea->stopAllActions();
    m_messageArea->runAction(cocos2d::CCFadeTo::create(.5f, 0));
}

void SecretLayer5::incrementChatIdx() {
    m_chatIndex++;
    if (m_chatIndex > m_soundEffects.size() - 1) {
        auto effectID = m_soundEffects[m_chatIndex - 1];
        std::mt19937 rng(rand());
        std::shuffle(m_soundEffects.begin(), m_soundEffects.end(), rng);
        m_chatIndex = m_soundEffects[0] == effectID ? 1 : 0;
    }
}

void SecretLayer5::updateMessageLabel(gd::string text) {
    m_messageLabel->setString(text.c_str());
    m_messageLabel->limitLabelWidth(320.f, .6f, 0.f);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

