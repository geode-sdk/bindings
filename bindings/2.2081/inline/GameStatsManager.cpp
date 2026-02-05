#include <Geode/Bindings.hpp>

GameStatsManager* GameStatsManager::get() {
    return GameStatsManager::sharedState();
}

void GameStatsManager::setAwardedBonusKeys(int keys) {
    m_bonusKey = keys;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GameStatsManager::awardOldSpecialStats() {
    for (int level : LevelTools::getLevelList()) {
        auto mainLevel = GameLevelManager::sharedState()->getMainLevel(level, true);
        if (mainLevel->m_orbCompletion.value() < mainLevel->m_normalPercent.value()) {
            mainLevel->m_orbCompletion = mainLevel->m_normalPercent.value();
        }
        this->awardCurrencyForLevel(mainLevel);
    }
}

bool GameStatsManager::canItemBeUnlocked(int id, UnlockType type) { return true; }

gd::string GameStatsManager::getEventRewardKey(int id) {
    return fmt::format("o_event_{}", id);
}

const char* GameStatsManager::getMapPackKey(int id) {
    return cocos2d::CCString::createWithFormat("pack_%i", id)->getCString();
}

GJRewardItem* GameStatsManager::getRewardForSecretChest(int id) {
    return static_cast<GJRewardItem*>(m_allTreasureRoomChests->objectForKey(id));
}

const char* GameStatsManager::getSecretCoinKey(char const* key) {
    return cocos2d::CCString::createWithFormat("unique_%s", key)->getCString();
}

bool GameStatsManager::isPathUnlocked(StatKey key) {
    return this->isItemUnlocked(UnlockType::GJItem, (int)key - 24);
}

bool GameStatsManager::isSecretCoin(gd::string key) {
    return key.starts_with("unique_");
}

bool GameStatsManager::isSpecialChestLiteUnlockable(gd::string key) {
    return m_specialChestsLite && m_specialChestsLite->objectForKey(key) != nullptr;
}

void GameStatsManager::resetPreSync() {}

void GameStatsManager::resetSpecialChest(gd::string key) {
    m_miscChests->removeObjectForKey(key);
}

void GameStatsManager::resetUserCoins() {
    this->setStat("12", 0);
    m_verifiedUserCoins->removeAllObjects();
    m_pendingUserCoins->removeAllObjects();
}

void GameStatsManager::restorePostSync() {}

void GameStatsManager::setStatIfHigher(char const* key, int value) {
    if (value > this->getStat(key)) this->setStat(key, value);
}

ShopType GameStatsManager::shopTypeForItemID(int index) {
    if (auto item = this->getStoreItem(index)) {
        return item->m_shopType;
    }
    return ShopType::Normal;
}

bool GameStatsManager::shouldAwardSecretKey() {
    return m_bonusKey.value() < this->getStat("22") / 500.f;
}

void GameStatsManager::tempClear() {}

void GameStatsManager::unlockGauntlet(int id) {
    m_unlockedGauntlets->setObject(cocos2d::CCString::createWithFormat("%i", 1), this->getGauntletRewardKey(id));
}
#endif

#if defined(GEODE_IS_WINDOWS)
int GameStatsManager::accountIDForIcon(int id, UnlockType type) {
    if (auto it = m_accountIDForIcon.find({ id, type }); it != m_accountIDForIcon.end()) {
        return it->second;
    }
    return 0;
}

bool GameStatsManager::areChallengesLoaded() {
    return m_challengeTime > 0;
}

bool GameStatsManager::areRewardsLoaded() {
    return m_rewardItems->objectForKey(1) != nullptr;
}

void GameStatsManager::checkCoinsForLevel(GJGameLevel* level) {
    if (level->m_coins > 0 && level->m_coinsVerified.value() == 1) {
        for (int i = 1; i < 4; i++) {
            auto coinKey = level->getCoinKey(i);
            if (this->hasPendingUserCoin(coinKey)) {
                if (!this->hasUserCoin(coinKey)) {
                    this->storeUserCoin(coinKey);
                    this->incrementStat("12");
                }
                m_pendingUserCoins->removeObjectForKey(coinKey);
            }
        }
    }
}

bool GameStatsManager::claimListReward(GJLevelList* list) {
    if (list->m_diamonds > 0 && list->m_levelsToClaim > 0 && list->completedLevels() >= list->m_levelsToClaim && !this->hasClaimedListReward(list)) {
        m_completedLists->setObject(cocos2d::CCString::createWithFormat("%i", list->m_diamonds), this->getListRewardKey(list));
        return true;
    }
    return false;
}

void GameStatsManager::collectReward(GJRewardType type, GJRewardItem* item) {
    if (!item || this->hasRewardBeenCollected(type, item->m_chestID)) return;
    this->registerRewardsFromItem(item);
    m_dailyChests->setObject(item, this->getRewardKey(type, item->m_chestID));
}

void GameStatsManager::completedChallenge(GJChallengeItem* item) {
    if (item->m_canClaim && !this->hasCompletedChallenge(item)) {
        auto reward = item->m_reward.value();
        m_challengeDiamonds->setObject(cocos2d::CCString::createWithFormat("%i", reward), this->getChallengeKey(item));
        this->incrementStat("13", reward);
    }
}

int GameStatsManager::countSecretChests(GJRewardType rewardType) {
    if (!m_allTreasureRoomChests) {
        return 0;
    }

    if (rewardType == GJRewardType::Unknown) {
        return m_allTreasureRoomChests->count();
    }

    int count = 0;
    cocos2d::CCDictElement* obj;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_allTreasureRoomChests->m_pElements, obj, temp) {
        auto chest = static_cast<GJRewardItem*>(obj->getObject());
        if (chest->m_rewardType == rewardType) count++;
    }
    return count;
}

int GameStatsManager::countUnlockedSecretChests(GJRewardType rewardType) {
    if (!m_treasureRoomChests) {
        return 0;
    }

    if (rewardType == GJRewardType::Unknown) {
        return m_treasureRoomChests->count();
    }

    int count = 0;
    cocos2d::CCDictElement* obj;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_treasureRoomChests->m_pElements, obj, temp) {
        auto chest = static_cast<GJRewardItem*>(obj->getObject());
        if (chest->m_rewardType == rewardType) count++;
    }
    return count;
}

void GameStatsManager::createSecretChestItems() {
    if (m_allTreasureRoomChestItems) return;
    m_allTreasureRoomChestItems = cocos2d::CCDictionary::create();
    m_allTreasureRoomChestItems->retain();
    m_allTreasureRoomChests = cocos2d::CCDictionary::create();
    m_allTreasureRoomChests->retain();
    this->createSecretChestRewards();
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_allTreasureRoomChests->m_pElements, element, temp) {
        if (auto rewardItem = static_cast<GJRewardItem*>(element->getObject())) {
            auto rewardObjects = rewardItem->m_rewardObjects;
            for (int i = 0; i < rewardObjects->count(); i++) {
                auto rewardObject = static_cast<GJRewardObject*>(rewardObjects->objectAtIndex(i));
                auto rewardKey = this->getItemKey(rewardObject->m_itemID, (int)rewardObject->m_unlockType);
                m_allTreasureRoomChestItems->setObject(cocos2d::CCString::createWithFormat("%i", rewardItem->m_chestID), rewardKey);
            }
        }
    }
}

int GameStatsManager::getBaseCurrency(int stars, bool mainLevel, int levelID) {
    if (mainLevel) {
        return levelID == 14 || levelID == 18 || levelID == 20 ? 400 : (stars + 1) * 20;
    }
    else {
        switch (stars) {
            case 2: return 40;
            case 3: return 60;
            case 4: return 100;
            case 5: return 140;
            case 6: return 180;
            case 7: return 220;
            case 8: return 280;
            case 9: return 340;
            case 10: return 400;
            default: return 0;
        }
    }
}

int GameStatsManager::getBaseDiamonds(int stars) {
    return stars > 2 && stars < 11 ? stars + 2 : 0;
}

int GameStatsManager::getBonusDiamonds(int stars) {
    return stars > 2 && stars < 11 ? stars == 10 ? 20 : this->getBaseDiamonds(stars) / 2.f : 0;
}

gd::string GameStatsManager::getChallengeKey(GJChallengeItem* chal) {
    return cocos2d::CCString::createWithFormat("c%i%i", chal->m_position, chal->m_timeLeft)->getCString();
}

gd::string GameStatsManager::getCurrencyKey(GJGameLevel* level) {
    auto dailyID = level->m_dailyID.value();
    return cocos2d::CCString::createWithFormat("%i", dailyID > 0 ? dailyID : level->m_levelID.value())->getCString();
}

gd::string GameStatsManager::getDailyLevelKey(int dailyID) {
    return cocos2d::CCString::createWithFormat("d%i", dailyID)->getCString();
}

const char* GameStatsManager::getDemonLevelKey(GJGameLevel* level) {
    auto dailyID = level->m_dailyID.value();
    if (dailyID > 0) return cocos2d::CCString::createWithFormat("ddemon_%i", dailyID)->getCString();
    auto levelID = level->m_levelID.value();
    if (level->m_gauntletLevel) return cocos2d::CCString::createWithFormat("gdemon_%i", levelID)->getCString();
    return cocos2d::CCString::createWithFormat("demon_%i", levelID)->getCString();
}

gd::string GameStatsManager::getLevelKey(GJGameLevel* level) {
    return getLevelKey(level->m_levelID, level->m_levelType != GJLevelType::Main, level->m_dailyID > 0, level->m_gauntletLevel, level->m_dailyID > 200000);
}

gd::string GameStatsManager::getListRewardKey(GJLevelList* list) {
    return cocos2d::CCString::createWithFormat("lr_%i", list->m_listID)->getCString();
}

int GameStatsManager::getNextGoldChestID() {
    for (int i = 6001; i < 6021; i++) {
        if (!this->isSecretChestUnlocked(i)) return i;
    }
    return 0;
}

GJRewardItem* GameStatsManager::getRewardForSpecialChest(gd::string key) {
    return static_cast<GJRewardItem*>(m_allSpecialChests->objectForKey(key));
}

GJRewardItem* GameStatsManager::getRewardItem(GJRewardType type) {
    return static_cast<GJRewardItem*>(m_rewardItems->objectForKey((int)type));
}

int GameStatsManager::getSecretChestForItem(int id, UnlockType type) {
    return m_allTreasureRoomChestItems->valueForKey(this->getItemKey(id, (int)type))->intValue();
}

gd::string GameStatsManager::getSecretOnlineRewardKey(int id) {
    return fmt::format("o_secret_{}", id);
}

cocos2d::CCString* GameStatsManager::getSpecialChestKeyForItem(int id, UnlockType type) {
    return static_cast<cocos2d::CCString*>(m_allSpecialChestItems->objectForKey(this->getItemKey(id, (int)type)));
}

gd::string GameStatsManager::getSpecialRewardDescription(gd::string key, bool unused) {
    if (auto it = m_specialRewardDescriptions.find(key); it != m_specialRewardDescriptions.end()) {
        return it->second;
    }
    return "";
}

char const* GameStatsManager::getStarLevelKey(GJGameLevel* level) {
    int dailyID = level->m_dailyID.value();
    if (dailyID > 0) return cocos2d::CCString::createWithFormat("dstar_%i",dailyID)->getCString();
    int levelID = level->m_levelID.value();
    if (level->m_gauntletLevel) return cocos2d::CCString::createWithFormat("gstar_%i",levelID)->getCString();
    return cocos2d::CCString::createWithFormat("star_%i",levelID)->getCString();
}

int GameStatsManager::getStatFromKey(StatKey key) {
    return this->getStat(GameToolbox::intToString((int)key).c_str());
}

GJStoreItem* GameStatsManager::getStoreItem(int index) {
    return static_cast<GJStoreItem*>(m_storeItems->objectForKey(index));
}

GJStoreItem* GameStatsManager::getStoreItem(int id, int type) {
    return static_cast<GJStoreItem*>(m_allStoreItems->objectForKey(this->getItemKey(id, type)));
}

bool GameStatsManager::hasCompletedDemonLevel(GJGameLevel* level) {
    return m_completedLevels->objectForKey(this->getDemonLevelKey(level)) != nullptr;
}

void GameStatsManager::incrementActivePath(int amount) {
    this->trySelectActivePath();
    if (m_activePath < 30 || m_activePath > 39) return;
    this->incrementStat(GameToolbox::intToString(m_activePath).c_str(), amount);
}

void GameStatsManager::incrementStat(char const* key) {
    this->incrementStat(key, 1);
}

bool GameStatsManager::isGauntletChestUnlocked(int id) {
    return this->isSpecialChestUnlocked(this->getGauntletRewardKey(id));
}

bool GameStatsManager::isGauntletUnlocked(int id) {
    return true;
}

bool GameStatsManager::isItemEnabled(UnlockType type, int id) {
    return this->isItemUnlocked(type, id) && m_enabledItems->valueForKey(this->getItemKey(id, (int)type))->boolValue();
}

bool GameStatsManager::isPathChestUnlocked(int path) {
    return this->isSpecialChestUnlocked(this->getPathRewardKey(path));
}

int GameStatsManager::keyCostForSecretChest(int id) {
    if (id < 1001) return 1;
    if (id < 2001) return 5;
    if (id < 3001) return 10;
    if (id < 4001) return 25;
    if (id < 5001) return 50;
    if (id < 6001) return 100;
    return 1;
}

void GameStatsManager::removeChallenge(int position) {
    m_activeChallenges->removeObjectForKey(cocos2d::CCString::createWithFormat("%i", position)->getCString());
}

void GameStatsManager::removeQueuedChallenge(int position) {
    m_upcomingChallenges->removeObjectForKey(cocos2d::CCString::createWithFormat("%i", position)->getCString());
}

void GameStatsManager::removeQueuedSecondaryChallenge(int position) {
    m_upcomingChallenges->removeObjectForKey(cocos2d::CCString::createWithFormat("%i", position + 100)->getCString());
}

void GameStatsManager::resetChallengeTimer() {
    m_challengeTime = 0;
}

int GameStatsManager::starsForMapPack(int id) {
    return m_completedMappacks->valueForKey(this->getMapPackKey(id))->intValue();
}

void GameStatsManager::storeChallenge(int position, GJChallengeItem* challenge) {
    m_activeChallenges->setObject(challenge, cocos2d::CCString::createWithFormat("%i", position)->getCString());
}

void GameStatsManager::storeChallengeTime(int remaining) {
    __timeb64 current;
    _ftime64_s(&current);
    m_challengeTime = ((current.time & 0xfffff) * 1000 + current.millitm) / 1000.0;
}

void GameStatsManager::storeEventChest(int eventID, GJRewardItem* item) {
    if (item) m_eventChest->setObject(item, this->getDailyLevelKey(eventID));
}

void GameStatsManager::storeOnlineChest(gd::string key, GJRewardItem* item) {
    if (item) m_allSpecialChests->setObject(item, key);
}

void GameStatsManager::storePendingUserCoin(char const* key) {
    m_pendingUserCoins->setObject(m_trueString, key);
}

void GameStatsManager::storeSecondaryQueuedChallenge(int position, GJChallengeItem* challenge) {
    m_upcomingChallenges->setObject(challenge, cocos2d::CCString::createWithFormat("%i", position + 100)->getCString());
}

GJRewardItem* GameStatsManager::unlockGauntletChest(int id) {
    if (auto reward = this->unlockSpecialChest(this->getGauntletRewardKey(id))) {
        this->incrementStat("40");
        return reward;
    }
    return nullptr;
}

GJRewardItem* GameStatsManager::unlockGoldChest(int id) {
    if (!this->isSecretChestUnlocked(id)) {
        if (auto reward = this->getRewardForSecretChest(id)) {
            auto keys = this->getStat("43");
            if (keys > 0) {
                this->setStat("43", keys - 1);
                this->preProcessReward(reward);
                this->registerRewardsFromItem(reward);
                m_treasureRoomChests->setObject(reward, cocos2d::CCString::createWithFormat("%i", id)->getCString());
                return reward;
            }
        }
    }
    return nullptr;
}

GJRewardItem* GameStatsManager::unlockPathChest(int id) {
    return this->unlockSpecialChest(this->getPathRewardKey(id));
}

void GameStatsManager::updateActivePath(StatKey key) {
    m_activePath = key >= StatKey::FirePath && key <= StatKey::SoulPath ? (int)key : 0;
}

gd::string GameStatsManager::usernameForAccountID(int id) {
    if (auto it = m_usernameForAccountID.find(id); it != m_usernameForAccountID.end()) {
        return it->second;
    }
    return "";
}
#endif

#if defined(GEODE_IS_IOS)
void GameStatsManager::addSpecialRewardDescription(gd::string key, gd::string description) {
    m_specialRewardDescriptions[key] = description;
}
#endif

