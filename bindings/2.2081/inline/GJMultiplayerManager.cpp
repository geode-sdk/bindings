#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GJMultiplayerManager::addDLToActive(char const* tag) {
    this->addDLToActive(tag, cocos2d::CCNode::create());
}

void GJMultiplayerManager::addDLToActive(char const* tag, cocos2d::CCObject* obj) {
    m_activeDownloads->setObject(obj, tag);
}

cocos2d::CCObject* GJMultiplayerManager::getDLObject(char const* tag) {
    return m_activeDownloads->objectForKey(tag);
}

int GJMultiplayerManager::getLastCommentIDForGame(int id) {
    auto comments = static_cast<cocos2d::CCArray*>(m_lobbyComments->objectForKey(id));
    if (comments && comments->count() > 0) {
        auto commentID = 0;
        for (int i = 0; i < comments->count(); i++) {
            auto comment = static_cast<GJComment*>(comments->objectAtIndex(i));
            if (comment->m_commentID > commentID) commentID = comment->m_commentID;
        }
        return commentID;
    }
    return 0;
}

void GJMultiplayerManager::handleItDelayed(bool success, gd::string response, gd::string tag, GJHttpType type) {
    auto result = GJHttpResult::create(true, response, tag, type);
    result->retain();
    m_pActionManager->addAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(.1f),
        cocos2d::CCCallFuncND::create(this, callfuncND_selector(GJMultiplayerManager::handleItND), result),
        nullptr
    ), this, false);
}

void GJMultiplayerManager::handleItND(cocos2d::CCNode* node, void* data) {
    auto result = static_cast<GJHttpResult*>(data);
    this->handleIt(result->m_success, result->m_response, result->m_requestTag, result->m_httpType);
    result->release();
}

bool GJMultiplayerManager::isDLActive(char const* tag) {
    return this->getDLObject(tag) != nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS)
void GJMultiplayerManager::dataLoaded(DS_Dictionary* dict) {}

void GJMultiplayerManager::encodeDataTo(DS_Dictionary* dict) {}

void GJMultiplayerManager::firstSetup() {}

void GJMultiplayerManager::onExitLobbyCompleted(gd::string response, gd::string tag) {
    this->removeDLFromActive(tag.c_str());
    auto id = atoi(tag.c_str());
    if (response == "-1") {
        if (m_uploadDelegate) m_uploadDelegate->uploadActionFailed(id, 58);
    }
    else {
        if (m_uploadDelegate) m_uploadDelegate->uploadActionFinished(id, 58);
    }
}

void GJMultiplayerManager::onUploadCommentCompleted(gd::string response, gd::string tag) {
    this->removeDLFromActive(tag.c_str());
    if (response != "-1") {
        if (m_mpDelegate) m_mpDelegate->didUploadMPComment(atoi(tag.c_str()));
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

