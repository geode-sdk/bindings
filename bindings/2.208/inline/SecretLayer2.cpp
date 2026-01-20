#include <Geode/Geode.hpp>

SecretLayer2::SecretLayer2() {
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
    m_doorDialogIndex = -1;
    m_secretLevelButton = nullptr;
    m_secretLevelLabels = nullptr;
    m_secretDoorButton = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::CCNode* SecretLayer2::nodeWithTag(int tag) {
    auto node = cocos2d::CCNode::create();
    node->setTag(tag);
    return node;
}
#endif

#if defined(GEODE_IS_WINDOWS)
SecretLayer2::~SecretLayer2() {
    CC_SAFE_RELEASE(m_messageThreads);
    CC_SAFE_RELEASE(m_secretLevelLabels);
}

SecretLayer2* SecretLayer2::create() {
    auto ret = new SecretLayer2();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void SecretLayer2::FLAlert_Clicked(FLAlertLayer* layer, bool btn2) {}

void SecretLayer2::selectAThread() {
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

