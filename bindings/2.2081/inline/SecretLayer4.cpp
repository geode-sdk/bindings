#include <Geode/Geode.hpp>

SecretLayer4::SecretLayer4() {
    m_threadTag = -1;
    m_basicMessageIndex = -1;
    m_selectedThread = 0;
    m_threadMessageIndex = 0;
    m_basicMessageCount = 0;
    m_errorMessageIndex = -1;
    m_searchInput = nullptr;
    m_messageLabel = nullptr;
    m_messageThreads = nullptr;
    m_exiting = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::CCNode* SecretLayer4::nodeWithTag(int tag) {
    auto node = cocos2d::CCNode::create();
    node->setTag(tag);
    return node;
}
#endif

#if defined(GEODE_IS_WINDOWS)
SecretLayer4::~SecretLayer4() {
    CC_SAFE_RELEASE(m_messageThreads);
}

SecretLayer4* SecretLayer4::create() {
    auto ret = new SecretLayer4();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCScene* SecretLayer4::scene() {
    auto scene = cocos2d::CCScene::create();
    AppDelegate::get()->m_runningScene = scene;
    auto layer = SecretLayer4::create();
    scene->addChild(layer);
    return scene;
}

void SecretLayer4::FLAlert_Clicked(FLAlertLayer* layer, bool btn2) {}

void SecretLayer4::dialogClosed(DialogLayer* layer) {}

void SecretLayer4::selectAThread() {
    auto keys = m_messageThreads->allKeys();
    if (m_threadTag < 0) m_threadTag = (float)(keys->count() - 1) * (float)rand() / (float)RAND_MAX;
    else m_threadTag++;
    if (keys->count() <= m_threadTag) m_threadTag = 0;
    if (m_messageThreads->count() != 0) {
        auto key = static_cast<cocos2d::CCInteger*>(keys->objectAtIndex(m_threadTag));
        m_selectedThread = m_messageThreads->objectForKey(key->getValue())->getTag();
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

