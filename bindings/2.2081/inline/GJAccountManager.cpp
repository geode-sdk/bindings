#include <Geode/Bindings.hpp>

GJAccountManager* GJAccountManager::get() {
    return GJAccountManager::sharedState();
}

#if defined(GEODE_IS_IOS)
void GJAccountManager::addDLToActive(char const* tag) {
    this->addDLToActive(tag, cocos2d::CCNode::create());
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GJAccountManager::handleItDelayed(bool success, gd::string response, gd::string tag, GJHttpType type) {
    auto result = GJHttpResult::create(true, response, tag, type);
    result->retain();
    m_pActionManager->addAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(.1f),
        cocos2d::CCCallFuncND::create(this, callfuncND_selector(GJMultiplayerManager::handleItND), result),
        nullptr
    ), this, false);
}

void GJAccountManager::handleItND(cocos2d::CCNode* node, void* data) {
    auto result = static_cast<GJHttpResult*>(data);
    this->handleIt(result->m_success, result->m_response, result->m_requestTag, result->m_httpType);
    result->release();
}

bool GJAccountManager::isDLActive(char const* tag) {
    return this->getDLObject(tag) != nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS)
void GJAccountManager::addDLToActive(char const* tag, cocos2d::CCObject* object) {
    m_activeDownloads->setObject(object, tag);
}

void GJAccountManager::dataLoaded(DS_Dictionary* dict) {
    m_username = dict->getStringForKey("GJA_001");
    m_accountID = dict->getIntegerForKey("GJA_003");
    m_password = dict->getStringForKey("GJA_002");
    m_GJP2 = dict->getStringForKey("GJA_005");
    if (!m_password.empty() && m_GJP2.empty()) {
        m_GJP2 = this->getShaPassword(m_password);
    }
}

void GJAccountManager::encodeDataTo(DS_Dictionary* dict) {
    dict->setStringForKey("GJA_001", m_username);
    dict->setIntegerForKey("GJA_003", m_accountID);
    dict->setStringForKey("GJA_005", m_GJP2);
}

void GJAccountManager::firstSetup() {}

cocos2d::CCObject* GJAccountManager::getDLObject(char const* tag) {
    return m_activeDownloads->objectForKey(tag);
}

void GJAccountManager::removeDLFromActive(char const* tag) {
    m_activeDownloads->removeObjectForKey(tag);
}

void GJAccountManager::unlinkFromAccount() {
    m_GJP2 = "";
    m_password = "";
    m_username = "";
    m_accountID = 0;
    auto gameManager = GameManager::sharedState();
    gameManager->m_shouldLoadUnlockValueKeeper = true;
    gameManager->firstLoad();
    gameManager->m_shouldLoadUnlockValueKeeper = false;
    LocalLevelManager::sharedState()->firstLoad();
    if (m_accountDelegate) m_accountDelegate->accountStatusChanged();
    gameManager->accountStatusChanged();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

