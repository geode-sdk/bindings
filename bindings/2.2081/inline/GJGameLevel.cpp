#include <Geode/Geode.hpp>

void GJGameLevel::setAccountID(int id) {
    m_accountID = id;
}

void GJGameLevel::setAttempts(int attempts) {
    m_attempts = attempts;
}

void GJGameLevel::setAttemptTime(int time) {
    m_attemptTime = time;
}

void GJGameLevel::setClicks(int clicks) {
    m_clicks = clicks;
}

void GJGameLevel::setCoinsVerified(int coinsVerified) {
    m_coinsVerified = coinsVerified;
}

void GJGameLevel::setDailyID(int id) {
    m_dailyID = id;
}

void GJGameLevel::setDemon(int demon) {
    m_demon = demon;
}

void GJGameLevel::setJumps(int jumps) {
    m_jumps = jumps;
}

void GJGameLevel::setLevelID(int levelID) {
    m_levelID = levelID;
}

void GJGameLevel::setNewNormalPercent(int percent) {
    m_orbCompletion = percent;
}

void GJGameLevel::setNewNormalPercent2(int percent) {
    m_newNormalPercent2 = percent;
}

void GJGameLevel::setObjectCount(int count) {
    m_objectCount = count;
}

void GJGameLevel::setOriginalLevel(int id) {
    m_originalLevel = id;
}

void GJGameLevel::setPassword(int password) {
    m_password = password;
}

void GJGameLevel::setStars(int stars) {
    m_stars = stars;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
gd::string GJGameLevel::generateSettingsString() { return ""; }

void GJGameLevel::levelWasSubmitted() {
    m_isUploaded = true;
}

void GJGameLevel::parseSettingsString(gd::string str) {}

void GJGameLevel::setNormalPercent(int percent) {
    m_normalPercent = percent;
}

bool GJGameLevel::shouldCheatReset() {
    return m_stars.value() > 7 && m_jumps.value() < 50 && m_clicks.value() < 50;
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJGameLevel::~GJGameLevel() {
    CC_SAFE_RELEASE(m_lastBuildSave);
}

GJGameLevel* GJGameLevel::create() {
	auto ret = new GJGameLevel();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

GJGameLevel* GJGameLevel::createWithCoder(DS_Dictionary* dict) {
    auto level = GJGameLevel::create();
    level->dataLoaded(dict);
    return level;
}

int GJGameLevel::demonIconForDifficulty(DemonDifficultyType type) {
    switch (type) {
        case DemonDifficultyType::EasyDemon: return 7;
        case DemonDifficultyType::MediumDemon: return 8;
        case DemonDifficultyType::InsaneDemon: return 9;
        case DemonDifficultyType::ExtremeDemon: return 10;
        default: return 6;
    }
}

int GJGameLevel::getLengthKey(int length, bool platformer) {
    if (platformer) return 5;
    if (length < 10) return 0;
    if (length < 30) return 1;
    if (length < 60) return 2;
    if (length < 120) return 3;
    return 4;
}

bool GJGameLevel::canEncode() { return true; }

int GJGameLevel::getNormalPercent() {
    return m_normalPercent.value();
}

bool GJGameLevel::isPlatformer() {
    return m_levelLength == 5;
}

void GJGameLevel::levelWasAltered() {
    m_hasBeenModified = true;
    m_isVerifiedRaw = false;
    m_isVerified = false;
    this->unverifyCoins();
    m_capacityString = "";
    if (m_isUploaded) {
        m_isUploaded = false;
        m_levelVersion++;
    }
}

gd::string GJGameLevel::scoreVectorToString(gd::vector<int>& vec, int type) {
    if (type == 1) std::sort(vec.begin(), vec.end(), std::greater<int>());
    else std::sort(vec.begin(), vec.end(), std::less<int>());
    fmt::memory_buffer out;
    for (int i = 0; i < vec.size(); i++) {
        if (i > 0) fmt::format_to(std::back_inserter(out), ",");
        fmt::format_to(std::back_inserter(out), "{}", vec[i]);
    }
    return fmt::to_string(out);
}

void GJGameLevel::setLastBuildPageForTab(int tab, int page) {
    m_lastBuildSave->setObject(cocos2d::CCString::createWithFormat("%i", page), cocos2d::CCString::createWithFormat("%i", tab)->getCString());
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_ANDROID)
GJGameLevel::GJGameLevel() {
    m_lastBuildSave = nullptr;
    m_levelID = { 0, 0 };
    m_userID = { 0, 0 };
    m_accountID = { 0, 0 };
    m_difficulty = GJDifficulty::Auto;
    m_audioTrack = 0;
    m_songID = 0;
    m_levelRev = 0;
    m_unlisted = false;
    m_friendsOnly = false;
    m_objectCount = { 0, 0 };
    m_levelIndex = 0;
    m_ratings = 0;
    m_ratingsSum = 0;
    m_downloads = 0;
    m_isEditable = false;
    m_gauntletLevel = false;
    m_gauntletLevel2 = false;
    m_workingTime = 0;
    m_workingTime2 = 0;
    m_lowDetailMode = false;
    m_lowDetailModeToggled = false;
    m_disableShakeToggled = false;
    m_selected = false;
    m_localOrSaved = false;
    m_isVerified = { 0, 0 };
    m_isVerifiedRaw = false;
    m_isUploaded = false;
    m_hasBeenModified = false;
    m_levelVersion = 0;
    m_gameVersion = 0;
    m_attempts = { 0, 0 };
    m_jumps = { 0, 0 };
    m_clicks = { 0, 0 };
    m_attemptTime = { 0, 0 };
    m_isChkValid = false;
    m_isCompletionLegitimate = false;
    m_normalPercent = { 0, 0 };
    m_orbCompletion = { 0, 0 };
    m_newNormalPercent2 = { 0, 0 };
    m_practicePercent = 0;
    m_likes = 0;
    m_dislikes = 0;
    m_levelLength = 0;
    m_featured = 0;
    m_isEpic = 0;
    m_levelFavorited = false;
    m_levelFolder = 0;
    m_dailyID = { 0, 0 };
    m_demon = { 0, 0 };
    m_demonDifficulty = 4;
    m_stars = { 0, 0 };
    m_autoLevel = false;
    m_coins = 0;
    m_coinsVerified = { 0, 0 };
    m_password = { 0, 0 };
    m_originalLevel = { 0, 0 };
    m_twoPlayerMode = false;
    m_failedPasswordAttempts = 0;
    m_firstCoinVerified = { 0, 0 };
    m_secondCoinVerified = { 0, 0 };
    m_thirdCoinVerified = { 0, 0 };
    m_starsRequested = 0;
    m_showedSongWarning = false;
    m_starRatings = 0;
    m_starRatingsSum = 0;
    m_maxStarRatings = 0;
    m_minStarRatings = 0;
    m_demonVotes = 0;
    m_rateStars = 0;
    m_rateFeature = false;
    m_dontSave = false;
    m_levelNotDownloaded = false;
    m_requiredCoins = 0;
    m_isUnlocked = false;
    m_lastEditorZoom = 0.f;
    m_lastBuildTab = 0;
    m_lastBuildPage = 0;
    m_lastBuildGroupID = 0;
    m_levelType = GJLevelType::Default;
    m_M_ID = 0;
    m_highObjectsEnabled = false;
    m_unlimitedObjectsEnabled = false;
    m_timestamp = 0;
    m_listPosition = 0;
    m_54 = 0;
    m_bestTime = 0;
    m_bestPoints = 0;
}
#endif

