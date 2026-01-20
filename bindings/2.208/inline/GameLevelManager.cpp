#include <Geode/Geode.hpp>

GameLevelManager* GameLevelManager::get() {
    return GameLevelManager::sharedState();
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
const char* GameLevelManager::getDeleteCommentKey(int parentID, int id, int type) {
    return cocos2d::CCString::createWithFormat("delcomment_%i_%i_%i", id, type, parentID)->getCString();
}

const char* GameLevelManager::getDeleteMessageKey(int id, bool sent) {
    return cocos2d::CCString::createWithFormat("delMsg_%i_%i", id, (int)sent)->getCString();
}

const char* GameLevelManager::getDescKey(int levelID) {
    return cocos2d::CCString::createWithFormat("desc_%i", levelID)->getCString();
}

const char* GameLevelManager::getDiffKey(int diff) {
    return cocos2d::CCString::createWithFormat("Diff%i", diff)->getCString();
}

const char* GameLevelManager::getGauntletKey(int id) {
    return cocos2d::CCString::createWithFormat("%i", id)->getCString();
}

const char* GameLevelManager::getLenKey(int len) {
    return cocos2d::CCString::createWithFormat("Len%i", len)->getCString();
}

const char* GameLevelManager::getLevelDownloadKey(int levelID, bool isGauntlet) {
    return cocos2d::CCString::createWithFormat("%i_%i", levelID, isGauntlet)->getCString();
}

const char* GameLevelManager::getLevelKey(int levelID) {
    return cocos2d::CCString::createWithFormat("%i", levelID)->getCString();
}

const char* GameLevelManager::getLevelListKey(int listID) {
    return cocos2d::CCString::createWithFormat("%i", listID)->getCString();
}

const char* GameLevelManager::getLikeAccountItemKey(LikeItemType type, int id, bool liked, int parentID) {
    return cocos2d::CCString::createWithFormat("like_%i_%i_%i_%i", type, id, (int)liked, parentID)->getCString();
}

const char* GameLevelManager::getLikeItemKey(LikeItemType type, int id, bool liked, int parentID) {
    return cocos2d::CCString::createWithFormat("like_%i_%i_%i_%i", type, id, (int)liked, parentID)->getCString();
}

GJGameLevel* GameLevelManager::getLocalLevelByName(gd::string name) {
    auto localLevels = LocalLevelManager::sharedState()->m_localLevels;
    for (int i = 0; i < localLevels->count(); i++) {
        auto level = static_cast<GJGameLevel*>(localLevels->objectAtIndex(i));
        if (level->m_levelName == name) return level;
    }
    return nullptr;
}

const char* GameLevelManager::getMapPackKey(int pack) {
    return cocos2d::CCString::createWithFormat("pack_%i", pack)->getCString();
}

const char* GameLevelManager::getMessageKey(int id) {
    return cocos2d::CCString::createWithFormat("message_%i", id)->getCString();
}

void GameLevelManager::getNews() {
    if (!m_testedNetwork) m_testedNetwork = true;
}

const char* GameLevelManager::getRateStarsKey(int levelID) {
    return cocos2d::CCString::createWithFormat("%i", levelID)->getCString();
}

const char* GameLevelManager::getReportKey(int levelID) {
    return cocos2d::CCString::createWithFormat("%i", levelID)->getCString();
}

const char* GameLevelManager::getUploadMessageKey(int accountID) {
    return cocos2d::CCString::createWithFormat("uMsg_%i", accountID)->getCString();
}

const char* GameLevelManager::getUserInfoKey(int id) {
    return cocos2d::CCString::createWithFormat("account_%i", id)->getCString();
}

void GameLevelManager::handleItDelayed(bool success, gd::string response, gd::string tag, GJHttpType type) {
    auto result = GJHttpResult::create(true, response, tag, type);
    result->retain();
    m_pActionManager->addAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(.1f),
        cocos2d::CCCallFuncND::create(this, callfuncND_selector(GJMultiplayerManager::handleItND), result),
        nullptr
    ), this, false);
}

void GameLevelManager::handleItND(cocos2d::CCNode* node, void* data) {
    auto result = static_cast<GJHttpResult*>(data);
    this->handleIt(result->m_success, result->m_response, result->m_requestTag, result->m_httpType);
    result->release();
}

bool GameLevelManager::hasDownloadedList(int id) {
    return this->hasDownloadedLevel(-id);
}

void GameLevelManager::onGetNewsCompleted(gd::string response, gd::string tag) {}

void GameLevelManager::parseRestoreData(gd::string str) {}

void GameLevelManager::resetAllTimers() {
    m_timerDict->removeAllObjects();
}

void GameLevelManager::saveFetchedLevelLists(cocos2d::CCArray* lists) {
    for (int i = 0; i < lists->count(); i++) {
        this->saveLevelList(static_cast<GJLevelList*>(lists->objectAtIndex(i)));
    }
}

void GameLevelManager::saveLocalScore(int id, int value, int type) {}

void GameLevelManager::setActiveSmartTemplate(GJSmartTemplate* smartTemplate) {
    m_smartTemplate = smartTemplate;
}

void GameLevelManager::setLevelFeatured(int id, int rank, bool epic) {}

bool GameLevelManager::setLevelStars(int id, int stars, bool coins) { return false; }

int GameLevelManager::specialFromLikeKey(char const* key) {
    std::string keyStr = key;
    auto parts = cocos2d::CCArray::create();
    auto start = 0;
    auto index = keyStr.find_first_of(",");
    auto size = keyStr.size();
    while (index != std::string::npos) {
        auto str = keyStr.substr(start, index - start);
        if (!str.empty() || start != size) {
            parts->addObject(cocos2d::CCString::create(str));
        }
        start = index + 1;
        index = keyStr.find_first_of(",", start);
    }
    return parts->count() > 4 ? atoi(static_cast<cocos2d::CCString*>(parts->objectAtIndex(4))->getCString()) : 0;
}

void GameLevelManager::storeFriendRequest(GJFriendRequest* request) {
    if (request && request->m_accountID > 0) m_friendRequests->setObject(request, request->m_accountID);
}

void GameLevelManager::storeUserInfo(GJUserScore* score) {
    if (score && score->m_accountID > 0) m_storedUserInfo->setObject(score, score->m_accountID);
}

void GameLevelManager::storeUserMessage(GJUserMessage* message) {
    if (message) m_userMessages->setObject(message, message->m_messageID);
}
#endif

#if defined(GEODE_IS_WINDOWS)
#include <sys/types.h>
#include <sys/timeb.h>
bool GameLevelManager::areGauntletsLoaded() {
    return m_savedGauntlets->count() != 0;
}

void GameLevelManager::banUser(int accountID) {}

cocos2d::CCArray* GameLevelManager::createAndGetAccountComments(gd::string str, int accountID) {
    return this->createAndGetCommentsFull(str, accountID, true);
}

cocos2d::CCArray* GameLevelManager::createAndGetLevelComments(gd::string str, int levelID) {
    return this->createAndGetCommentsFull(str, levelID, false);
}

gd::string GameLevelManager::createPageInfo(int total, int start, int count) {
    return cocos2d::CCString::createWithFormat("%i%s%i%s%i", total, ":", start, ":", count)->getCString();
}

GJSmartTemplate* GameLevelManager::createSmartTemplate() {
    auto smartTemplate = GJSmartTemplate::create();
    smartTemplate->m_nameIndex = this->getNextFreeTemplateID();
    m_smartTemplates->insertObject(smartTemplate, 0);
    return smartTemplate;
}

void GameLevelManager::deleteAccountComment(int id, int accountID) {
    this->deleteComment(id, CommentType::Account, accountID);
}

void GameLevelManager::deleteLevelComment(int id, int levelID) {
    this->deleteComment(id, CommentType::Level, levelID);
}

bool GameLevelManager::deleteSentFriendRequest(int accountID) {
    return this->deleteFriendRequests(accountID, nullptr, true);
}

void GameLevelManager::deleteSmartTemplate(GJSmartTemplate* smartTemplate) {
    if (!smartTemplate) return;
    if (m_smartTemplate && m_smartTemplate->m_nameIndex == smartTemplate->m_nameIndex) m_smartTemplate = nullptr;
    m_smartTemplates->removeObject(smartTemplate);
}

void GameLevelManager::followUser(int id) {
    m_followedCreators->setObject(cocos2d::CCString::create("1"), cocos2d::CCString::createWithFormat("%i", id)->getCString());
}

GJFriendRequest* GameLevelManager::friendRequestFromAccountID(int id) {
    return static_cast<GJFriendRequest*>(m_friendRequests->objectForKey(id));
}

const char* GameLevelManager::getAccountCommentKey(int accountID, int page) {
    return cocos2d::CCString::createWithFormat("%i_%i", accountID, page)->getCString();
}

int GameLevelManager::getActiveDailyID(GJTimedLevelType type) {
    if (type == GJTimedLevelType::Daily) return m_activeDailyID;
    if (type == GJTimedLevelType::Weekly) return m_activeWeeklyID;
    if (type == GJTimedLevelType::Event) return m_activeEventID;
    return 0;
}

GJSmartTemplate* GameLevelManager::getActiveSmartTemplate() {
    return m_smartTemplate;
}

cocos2d::CCArray* GameLevelManager::getAllSmartTemplates() {
    auto smartTemplates = cocos2d::CCArray::create();
    smartTemplates->addObjectsFromArray(m_smartTemplates);
    return smartTemplates;
}

cocos2d::CCDictionary* GameLevelManager::getAllUsedSongIDs() {
    auto dict = cocos2d::CCDictionary::create();
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_onlineLevels->m_pElements, element, temp) {
        auto level = static_cast<GJGameLevel*>(element->getObject());
        if (!level->m_levelNotDownloaded && level->m_songID > 0 && !dict->objectForKey(level->m_songID)) {
            dict->setObject(cocos2d::CCNode::create(), level->m_songID);
        }
    }
    auto localLevels = LocalLevelManager::sharedState()->m_localLevels;
    for (int i = 0; i < localLevels->count(); i++) {
        auto level = static_cast<GJGameLevel*>(localLevels->objectAtIndex(i));
        if (!level->m_levelNotDownloaded && level->m_songID > 0 && !dict->objectForKey(level->m_songID)) {
            dict->setObject(cocos2d::CCNode::create(), level->m_songID);
        }
    }
    return dict;
}

bool GameLevelManager::getBoolForKey(char const* key) {
    return m_searchFilters->valueForKey(key)->boolValue();
}

gd::string GameLevelManager::getCommentKey(int ID, int page, int mode, CommentKeyType keytype) {
    return cocos2d::CCString::createWithFormat("comment_%i_%i_%i_%i", ID, page, mode, (int) keytype)->getCString();
}

int GameLevelManager::getCompletedGauntletDemons() {
    auto completed = 0;
    auto gsm = GameStatsManager::get();
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_gauntletLevels->m_pElements, element, temp) {
        if (auto level = geode::cast::typeinfo_cast<GJGameLevel*>(element->getObject())) {
            if (level->m_stars.value() == 10 && level->m_normalPercent.value() == 100 && gsm->hasCompletedLevel(level)) {
                completed++;
            }
        }
    }
    return completed;
}

int GameLevelManager::getCompletedGauntletLevels() {
    auto completed = 0;
    auto gsm = GameStatsManager::get();
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_gauntletLevels->m_pElements, element, temp) {
        if (auto level = geode::cast::typeinfo_cast<GJGameLevel*>(element->getObject())) {
            if (level->m_stars.value() < 10 && level->m_normalPercent.value() == 100 && gsm->hasCompletedLevel(level)) {
                completed++;
            }
        }
    }
    return completed;
}

int GameLevelManager::getDailyID(GJTimedLevelType type) {
    if (type == GJTimedLevelType::Daily) return m_dailyID;
    if (type == GJTimedLevelType::Weekly) return m_weeklyID;
    if (type == GJTimedLevelType::Event) return m_eventID;
    return 0;
}

int GameLevelManager::getDailyTimer(GJTimedLevelType type) {
    if (type == GJTimedLevelType::Daily) return m_dailyTimeLeft;
    if (type == GJTimedLevelType::Weekly) return m_weeklyTimeLeft;
    if (type == GJTimedLevelType::Event) return m_eventTimeLeft;
    return 0;
}

bool GameLevelManager::getDiffVal(int diff) {
    return m_searchFilters->valueForKey(this->getDiffKey(diff))->boolValue();
}

const char* GameLevelManager::getFriendRequestKey(bool sent, int page) {
    return cocos2d::CCString::createWithFormat("fReq_%i_%i", (int)sent, page)->getCString();
}

gd::string GameLevelManager::getGauntletSearchKey(int id) {
    return cocos2d::CCString::createWithFormat("gauntlet_%i", id)->getCString();
}

int GameLevelManager::getHighestLevelOrder() {
    auto result = 0;
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_onlineLevels->m_pElements, element, temp) {
        auto level = static_cast<GJGameLevel*>(element->getObject());
        if (level->m_levelIndex > result) result = level->m_levelIndex;
    }
    return result;
}

int GameLevelManager::getIntForKey(char const* key) {
    return m_searchFilters->valueForKey(key)->intValue();
}

bool GameLevelManager::getLenVal(int len) {
    return m_searchFilters->valueForKey(this->getLenKey(len))->boolValue();
}

const char* GameLevelManager::getLevelLeaderboardKey(int levelID, LevelLeaderboardType type, LevelLeaderboardMode mode) {
    return cocos2d::CCString::createWithFormat("ll_%i_%i_%i", levelID, (int)type, (int)mode)->getCString();
}

int GameLevelManager::getLowestLevelOrder() {
    auto result = INT_MAX;
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_onlineLevels->m_pElements, element, temp) {
        auto level = static_cast<GJGameLevel*>(element->getObject());
        if (level->m_levelIndex < result) result = level->m_levelIndex;
    }
    return result;
}

const char* GameLevelManager::getMessagesKey(bool sent, int page) {
    return cocos2d::CCString::createWithFormat("messages_%i_%i", (int)sent, page)->getCString();
}

int GameLevelManager::getNextFreeTemplateID() {
    auto result = 0;
    auto dict = cocos2d::CCDictionary::create();
    auto node = cocos2d::CCNode::create();
    for (int i = 0; i < m_smartTemplates->count(); i++) {
        auto index = static_cast<GJSmartTemplate*>(m_smartTemplates->objectAtIndex(i))->m_nameIndex;
        if (index > result) result = index;
        dict->setObject(node, index);
    }
    for (int i = 0; i < 1001; i++) {
        if (!dict->objectForKey(i)) return i;
    }
    return result;
}

const char* GameLevelManager::getPostCommentKey(int parentID) {
    return cocos2d::CCString::createWithFormat("c%i", parentID)->getCString();
}

GJGameLevel* GameLevelManager::getSavedDailyLevelFromLevelID(int id) {
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_dailyLevels->m_pElements, element, temp) {
        auto level = static_cast<GJGameLevel*>(element->getObject());
        if (level->m_levelID.value() == id) return level;
    }
    return nullptr;
}

GJMapPack* GameLevelManager::getSavedGauntlet(int id) {
    return static_cast<GJMapPack*>(m_savedGauntlets->objectForKey(this->getGauntletKey(id)));
}

GJGameLevel* GameLevelManager::getSavedLevel(GJGameLevel* level) {
    if (!level) return nullptr;
    else if (level->m_dailyID.value() > 0) return this->getSavedDailyLevel(level->m_dailyID.value());
    else if (level->m_gauntletLevel) return this->getSavedGauntletLevel(level->m_levelID.value());
    else return this->getSavedLevel(level->m_levelID.value());
}

GJLevelList* GameLevelManager::getSavedLevelList(int listID) {
    return static_cast<GJLevelList*>(m_favoriteLists->objectForKey(this->getLevelListKey(listID)));
}

GJMapPack* GameLevelManager::getSavedMapPack(int id) {
    return static_cast<GJMapPack*>(m_savedPacks->objectForKey(this->getMapPackKey(id)));
}

cocos2d::CCScene* GameLevelManager::getSearchScene(char const* key) {
    if (auto searchObject = GJSearchObject::createFromKey(key)) {
        return LevelBrowserLayer::scene(searchObject);
    }
    return nullptr;
}

GJUserMessage* GameLevelManager::getStoredUserMessage(int id) {
    return static_cast<GJUserMessage*>(m_userMessages->objectForKey(id));
}

GJUserMessage* GameLevelManager::getStoredUserMessageReply(int id) {
    return static_cast<GJUserMessage*>(m_userReplies->objectForKey(id));
}

const char* GameLevelManager::getTopArtistsKey(int page) {
    return cocos2d::CCString::createWithFormat("topArtists_%i", page)->getCString();
}

bool GameLevelManager::hasDailyStateBeenLoaded(GJTimedLevelType type) {
    if (type == GJTimedLevelType::Daily) return m_dailyTimeLeft > 0;
    if (type == GJTimedLevelType::Weekly) return m_weeklyTimeLeft > 0;
    if (type == GJTimedLevelType::Event) return m_eventTimeLeft > 0;
    return false;
}

void GameLevelManager::invalidateUserList(UserListType type, bool reload) {
    this->resetStoredUserList(type);
    if (reload && m_userListDelegate) m_userListDelegate->forceReloadList(type);
}

bool GameLevelManager::isUpdateValid(int id) {
    const char* str = cocos2d::CCString::createWithFormat("%i", id)->getCString();

    return this->isTimeValid(str, 3600.f);
}

int GameLevelManager::itemIDFromLikeKey(char const* key) {
    std::string keyStr = key;
    auto parts = cocos2d::CCArray::create();
    auto start = 0;
    auto index = keyStr.find_first_of(",");
    auto size = keyStr.size();
    while (index != std::string::npos) {
        auto str = keyStr.substr(start, index - start);
        if (!str.empty() || start != size) {
            parts->addObject(cocos2d::CCString::create(str));
        }
        start = index + 1;
        index = keyStr.find_first_of(",", start);
    }
    return parts->count() > 4 ? atoi(static_cast<cocos2d::CCString*>(parts->objectAtIndex(2))->getCString()) : 0;
}

int GameLevelManager::levelIDFromPostCommentKey(char const* key) {
    std::string keyStr = key;
    auto parts = cocos2d::CCArray::create();
    auto start = 0;
    auto index = keyStr.find_first_of(",");
    auto size = keyStr.size();
    while (index != std::string::npos) {
        auto str = keyStr.substr(start, index - start);
        if (!str.empty() || start != size) {
            parts->addObject(cocos2d::CCString::create(str));
        }
        start = index + 1;
        index = keyStr.find_first_of(",", start);
    }
    return parts->count() > 1 ? atoi(static_cast<cocos2d::CCString*>(parts->objectAtIndex(1))->getCString()) : 0;
}

int GameLevelManager::likeFromLikeKey(char const* key) {
    std::string keyStr = key;
    auto parts = cocos2d::CCArray::create();
    auto start = 0;
    auto index = keyStr.find_first_of(",");
    auto size = keyStr.size();
    while (index != std::string::npos) {
        auto str = keyStr.substr(start, index - start);
        if (!str.empty() || start != size) {
            parts->addObject(cocos2d::CCString::create(str));
        }
        start = index + 1;
        index = keyStr.find_first_of(",", start);
    }
    return parts->count() > 4 ? atoi(static_cast<cocos2d::CCString*>(parts->objectAtIndex(3))->getCString()) : 0;
}

void GameLevelManager::markLevelAsRatedDemon(int id) {
    if (m_ratedDemons->count() > 999) m_ratedDemons->removeObjectForKey(m_ratedDemons->getFirstKey());
    m_ratedDemons->setObject(m_trueString, cocos2d::CCString::createWithFormat("%i", id)->getCString());
}

void GameLevelManager::markLevelAsRatedStars(int id) {
    if (m_ratedLevels->count() > 999) m_ratedLevels->removeObjectForKey(m_ratedLevels->getFirstKey());
    m_ratedLevels->setObject(m_trueString, this->getRateStarsKey(id));
}

void GameLevelManager::markLevelAsReported(int id) {
    if (m_reportedLevels->count() > 9) m_reportedLevels->removeObjectForKey(m_reportedLevels->getFirstKey());
    m_reportedLevels->setObject(m_trueString, this->getReportKey(id));
}

void GameLevelManager::markListAsDownloaded(int id) {
    this->markLevelAsDownloaded(-id);
}

void GameLevelManager::onBanUserCompleted(gd::string response, gd::string tag) {
    if (response != "-1") this->resetTimerForKey("leaderboard_top");
}

void GameLevelManager::onDeleteServerLevelListCompleted(gd::string response, gd::string tag) {
    m_queuedLists.erase(tag);
    auto responseInt = atoi(response.c_str());
    if (response == "-1") {
        if (m_levelListDeleteDelegate) m_levelListDeleteDelegate->levelListDeleteFailed(responseInt);
    }
    else {
        if (m_levelListDeleteDelegate) m_levelListDeleteDelegate->levelListDeleteFinished(responseInt);
    }
}

void GameLevelManager::onDownloadLevelCompleted(gd::string response, gd::string tag) {
    this->processOnDownloadLevelCompleted(response, tag, false);
}

void GameLevelManager::onGetLevelLeaderboardCompleted(gd::string response, gd::string tag) {
    this->removeDLFromActive(tag.c_str());
    if (response == "-1") {
        if (m_leaderboardManagerDelegate) m_leaderboardManagerDelegate->loadLeaderboardFailed(tag.c_str());
    }
    else {
        auto scores = this->createAndGetScores(response, GJScoreType::LevelScore);
        this->storeSearchResult(scores, " ", tag.c_str());
        if (m_leaderboardManagerDelegate) m_leaderboardManagerDelegate->loadLeaderboardFinished(scores, tag.c_str());
    }
}

void GameLevelManager::onReadFriendRequestCompleted(gd::string response, gd::string tag) {
    m_friendReqAndUserBlocks->removeObjectForKey(tag);
}

void GameLevelManager::onSetLevelFeaturedCompleted(gd::string response, gd::string tag) {}

void GameLevelManager::onSubmitUserInfoCompleted(gd::string response, gd::string tag) {}

void GameLevelManager::onUpdateLevelCompleted(gd::string response, gd::string tag) {
    this->processOnDownloadLevelCompleted(response, tag, true);
}

void GameLevelManager::onUploadLevelListCompleted(gd::string response, gd::string tag) {
    m_queuedLists.erase(tag);
    auto listID = atoi(response.c_str());
    auto uniqueID = atoi(tag.c_str());
    if (listID < 0) {
        if (m_listUploadDelegate) m_listUploadDelegate->listUploadFailed(this->getLocalLevelList(uniqueID), listID);
    }
    else {
        auto levelList = this->getLocalLevelList(uniqueID);
        if (levelList) {
            levelList->m_listID = listID;
            levelList->m_uploaded = true;
        }
        if (m_listUploadDelegate) m_listUploadDelegate->listUploadFinished(levelList);
    }
}

int GameLevelManager::pageFromCommentKey(char const* key) {
    std::string keyStr = key;
    auto parts = cocos2d::CCArray::create();
    auto start = 0;
    auto index = keyStr.find_first_of(",");
    auto size = keyStr.size();
    while (index != std::string::npos) {
        auto str = keyStr.substr(start, index - start);
        if (!str.empty() || start != size) {
            parts->addObject(cocos2d::CCString::create(str));
        }
        start = index + 1;
        index = keyStr.find_first_of(",", start);
    }
    return parts->count() > 2 ? atoi(static_cast<cocos2d::CCString*>(parts->objectAtIndex(2))->getCString()) : 0;
}

void GameLevelManager::performNetworkTest() {
    if (m_testedNetwork) return;
    m_testedNetwork = true;
    auto request = new cocos2d::extension::CCHttpRequest();
    request->setUrl("https://www.google.com");
    request->setReadTimeout(1);
    request->setRequestType(cocos2d::extension::CCHttpRequest::kHttpPost);
    request->setResponseCallback(this, httpresponse_selector(GameLevelManager::onProcessHttpRequestCompleted));
    request->setRequestData("temp", 4);
    request->setTag("tag");
    request->setType(56);
    cocos2d::extension::CCHttpClient::getInstance()->send(request);
    request->release();
}

void GameLevelManager::resetAccountComments(int accountID) {
    for(int i = 0; i <= 1; i++) {
        auto key = getAccountCommentKey(accountID, i);
        if(getStoredOnlineLevels(key)) {
            m_storedLevels->removeObjectForKey(key);
        }
    }
}

void GameLevelManager::resetDailyLevelState(GJTimedLevelType type) {
    if (type == GJTimedLevelType::Daily) {
        m_dailyTimeLeft = 0;
        m_dailyID = 0;
    }
    else if (type == GJTimedLevelType::Weekly) {
        m_weeklyTimeLeft = 0;
        m_weeklyID = 0;
    }
    else if (type == GJTimedLevelType::Event) {
        m_eventTimeLeft = 0;
        m_eventID = 0;
    }
}

void GameLevelManager::resetGauntlets() {
    m_savedGauntlets->removeAllObjects();
}

void GameLevelManager::resetStoredUserInfo(int id) {
    m_storedUserInfo->removeObjectForKey(id);
}

void GameLevelManager::saveFetchedMapPacks(cocos2d::CCArray* packs) {
    for (int i = 0; i < packs->count(); i++) {
        this->saveMapPack(static_cast<GJMapPack*>(packs->objectAtIndex(i)));
    }
}

void GameLevelManager::saveGauntlet(GJMapPack* gauntlet) {
    m_savedGauntlets->setObject(gauntlet, this->getGauntletKey(gauntlet->m_packID));
}

void GameLevelManager::saveMapPack(GJMapPack* pack) {
    m_savedPacks->setObject(pack, this->getMapPackKey(pack->m_packID));
}

void GameLevelManager::setBoolForKey(bool value, char const* key) {
    m_searchFilters->setObject(cocos2d::CCString::createWithFormat("%i", (int)value), key);
}

void GameLevelManager::setFolderName(int id, gd::string name, bool local) {
    auto dict = local ? m_localLevelsFolders : m_onlineFolders;
    dict->setObject(cocos2d::CCString::create(name), cocos2d::CCString::createWithFormat("%i", id)->getCString());
}

void GameLevelManager::setIntForKey(int value, char const* key) {
    m_searchFilters->setObject(cocos2d::CCString::createWithFormat("%i", value), key);
}

void GameLevelManager::storeDailyLevelState(int id, int remaining, GJTimedLevelType type) {
    if (type != GJTimedLevelType::Daily && type != GJTimedLevelType::Weekly && type != GJTimedLevelType::Event) return;
    __timeb64 current;
    _ftime64_s(&current);
    auto currentTime = ((current.time & 0xfffff) * 1000 + current.millitm) / 1000.0;
    if (type == GJTimedLevelType::Daily) {
        m_dailyID = id;
        m_dailyTimeLeft = currentTime + remaining;
    }
    else if (type == GJTimedLevelType::Weekly) {
        m_weeklyID = id;
        m_weeklyTimeLeft = currentTime + remaining;
    }
    else if (type == GJTimedLevelType::Event) {
        m_eventID = id;
        m_eventTimeLeft = currentTime + remaining;
    }
}

void GameLevelManager::storeUserMessageReply(int id, GJUserMessage* message) {
    if (message) m_userReplies->setObject(message, id);
}

CommentType GameLevelManager::typeFromCommentKey(char const* key) {
    std::string keyStr = key;
    auto parts = cocos2d::CCArray::create();
    auto start = 0;
    auto index = keyStr.find_first_of(",");
    auto size = keyStr.size();
    while (index != std::string::npos) {
        auto str = keyStr.substr(start, index - start);
        if (!str.empty() || start != size) {
            parts->addObject(cocos2d::CCString::create(str));
        }
        start = index + 1;
        index = keyStr.find_first_of(",", start);
    }
    return parts->count() > 3 ? (CommentType)atoi(static_cast<cocos2d::CCString*>(parts->objectAtIndex(3))->getCString()) : CommentType::Level;
}

LikeItemType GameLevelManager::typeFromLikeKey(char const* key) {
    std::string keyStr = key;
    auto parts = cocos2d::CCArray::create();
    auto start = 0;
    auto index = keyStr.find_first_of(",");
    auto size = keyStr.size();
    while (index != std::string::npos) {
        auto str = keyStr.substr(start, index - start);
        if (!str.empty() || start != size) {
            parts->addObject(cocos2d::CCString::create(str));
        }
        start = index + 1;
        index = keyStr.find_first_of(",", start);
    }
    return parts->count() > 4 ? (LikeItemType)atoi(static_cast<cocos2d::CCString*>(parts->objectAtIndex(1))->getCString()) : LikeItemType::Unknown;
}

void GameLevelManager::unfollowUser(int id) {
    m_followedCreators->removeObjectForKey(cocos2d::CCString::createWithFormat("%i", id)->getCString());
}

void GameLevelManager::updateUsernames() {
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_onlineLevels->m_pElements, element, temp) {
        auto level = static_cast<GJGameLevel*>(element->getObject());
        this->storeUserName(level->m_userID.value(), level->m_accountID.value(), level->m_creatorName);
    }
}

void GameLevelManager::uploadAccountComment(gd::string content) {
    this->uploadComment(content, CommentType::Account, 0, 0);
}

void GameLevelManager::uploadLevelComment(int levelID, gd::string content, int percent) {
    this->uploadComment(content, CommentType::Level, levelID, percent);
}

int GameLevelManager::userIDForAccountID(int id) {
    return m_userIDtoAccountIDDict->valueForKey(id)->intValue();
}

GJUserScore* GameLevelManager::userInfoForAccountID(int id) {
    return static_cast<GJUserScore*>(m_storedUserInfo->objectForKey(id));
}

void GameLevelManager::verifyLevelState(GJGameLevel* level) {
    auto gsm = GameStatsManager::sharedState();
    if (gsm->hasCompletedLevel(level) && level->shouldCheatReset()) {
        gsm->uncompleteLevel(level);
        level->m_normalPercent = 0;
        level->m_orbCompletion = 0;
        level->m_newNormalPercent2 = 0;
        level->m_bestTime = 0;
        level->m_bestPoints = 0;
        level->m_isCompletionLegitimate = true;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

