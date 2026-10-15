#include <Geode/Bindings.hpp>

SecretLayer::SecretLayer() {
    m_basicMessageIndex = -1;
    m_selectedThread = 0;
    m_threadMessageIndex = 0;
    m_basicMessageCount = 0;
    m_doomedIndex = 0;
    m_searchInput = nullptr;
    m_messageLabel = nullptr;
    m_messageThreads = nullptr;
    m_threadTag = -1;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::CCNode* SecretLayer::nodeWithTag(int tag) {
    auto node = cocos2d::CCNode::create();
    node->setTag(tag);
    return node;
}
#endif

#if defined(GEODE_IS_WINDOWS)
SecretLayer::~SecretLayer() {
    CC_SAFE_RELEASE(m_messageThreads);
}

SecretLayer* SecretLayer::create() {
    auto ret = new SecretLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCScene* SecretLayer::scene() {
    auto scene = cocos2d::CCScene::create();
    AppDelegate::get()->m_runningScene = scene;
    auto layer = SecretLayer::create();
    scene->addChild(layer);
    return scene;
}

void SecretLayer::FLAlert_Clicked(FLAlertLayer* layer, bool btn2) {}

void SecretLayer::selectAThread() {
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

