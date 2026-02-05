#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool AchievementManager::areAchievementsEarned(cocos2d::CCArray* achievements) {
    for (int i = 0; i < achievements->count(); i++) {
        if (!this->isAchievementEarned(static_cast<cocos2d::CCString*>(achievements->objectAtIndex(i))->getCString())) {
            return false;
        }
    }
    return true;
}

void AchievementManager::checkAchFromUnlock(char const* id) {}

bool AchievementManager::isAchievementAvailable(gd::string id) {
    if (auto achievements = getAchievementsWithID(id.c_str())) {
        return achievements->objectForKey("un") == nullptr;
    }
    return false;
}

int AchievementManager::percentageForCount(int count, int total) {
    return std::min<int>(100, ((float)count / (float)total) * 100.f);
}

void AchievementManager::resetAchievements() {
    m_reportedAchievements->removeAllObjects();
}

void AchievementManager::setup() {}
#endif

#if defined(GEODE_IS_WINDOWS)
void AchievementManager::dataLoaded(DS_Dictionary* dict) {
    auto reportedAchievements = dict->getDictForKey("reportedAchievements", false);
    if (m_reportedAchievements) {
        GameToolbox::mergeDictsSaveLargestInt(m_reportedAchievements, reportedAchievements);
    }
    else if (reportedAchievements) {
        CC_SAFE_RETAIN(reportedAchievements);
        CC_SAFE_RELEASE(m_reportedAchievements);
        m_reportedAchievements = reportedAchievements;
    }
}

void AchievementManager::encodeDataTo(DS_Dictionary* dict) {
    dict->setDictForKey("reportedAchievements", m_reportedAchievements);
}

void AchievementManager::firstSetup() {
    auto reportedAchievements = cocos2d::CCDictionary::create();
    if (m_reportedAchievements != reportedAchievements) {
        CC_SAFE_RETAIN(reportedAchievements);
        CC_SAFE_RELEASE(m_reportedAchievements);
        m_reportedAchievements = reportedAchievements;
    }
}

cocos2d::CCArray* AchievementManager::getAllAchievements() {
    return m_allAchievements;
}

int AchievementManager::limitForAchievement(gd::string id) {
    if (auto achievements = getAchievementsWithID(id.c_str())) {
        if (auto limits = static_cast<cocos2d::CCString*>(achievements->objectForKey("limits"))) return limits->intValue();
    }
    return 0;
}

void AchievementManager::notifyAchievement(char const* title, char const* description, char const* icon) {
    if (!m_dontNotify) AchievementNotifier::sharedState()->notifyAchievement(title, description, icon, true);
}

void AchievementManager::resetAchievement(char const* id) {
    m_reportedAchievements->removeObjectForKey(id);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

