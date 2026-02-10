#include <Geode/Bindings.hpp>
#include <Geode/utils/cocos.hpp>

GameManager* GameManager::get() {
    return GameManager::sharedState();
}

LevelEditorLayer* GameManager::getEditorLayer() {
    return m_levelEditorLayer;
}

GJBaseGameLayer* GameManager::getGameLayer() {
    return m_gameLayer;
}

bool GameManager::getGameVariableDefault(const char* key, bool defaultValue) {
    //helper function
    auto object = static_cast<cocos2d::CCString*>(m_valueKeeper->objectForKey(std::string("gv_") + key));
    if (object == nullptr)
        return defaultValue;
    return object->boolValue();
}

int GameManager::getIntGameVariableDefault(const char* key, int defaultValue) {
    //helper function
    auto object = static_cast<cocos2d::CCString*>(m_valueKeeper->objectForKey(std::string("gv_") + key));
    if (object == nullptr)
        return defaultValue;
    return object->intValue();
}

int GameManager::getPlayerBall() {
    return m_playerBall;
}

int GameManager::getPlayerBird() {
    return m_playerBird;
}

int GameManager::getPlayerColor() {
    return m_playerColor;
}

int GameManager::getPlayerColor2() {
    return m_playerColor2;
}

int GameManager::getPlayerDart() {
    return m_playerDart;
}

int GameManager::getPlayerDeathEffect() {
    return m_playerDeathEffect;
}

int GameManager::getPlayerFrame() {
    return m_playerFrame;
}

bool GameManager::getPlayerGlow() {
    return m_playerGlow;
}

int GameManager::getPlayerGlowColor() {
    return m_playerGlowColor;
}

int GameManager::getPlayerJetpack() {
    return m_playerJetpack;
}

int GameManager::getPlayerRobot() {
    return m_playerRobot;
}

int GameManager::getPlayerShip() {
    return m_playerShip;
}

int GameManager::getPlayerShipFire() {
    return m_playerShipFire;
}

int GameManager::getPlayerSpider() {
    return m_playerSpider;
}

int GameManager::getPlayerStreak() {
    return m_playerStreak;
}

int GameManager::getPlayerSwing() {
    return m_playerSwing;
}

PlayLayer* GameManager::getPlayLayer() {
    return m_playLayer;
}

void GameManager::reloadAll(bool switchingModes, bool toFullscreen, bool unused) {
    return this->reloadAll(switchingModes, toFullscreen, false, false, unused);
}

void GameManager::setHasRatingPower(int hasRP) {
    m_hasRP = hasRP;
}

void GameManager::setPlayerBall(int id) {
    m_playerBall = id;
}

void GameManager::setPlayerBird(int id) {
    m_playerBird = id;
}

void GameManager::setPlayerColor(int id) {
    m_playerColor = id;
}

void GameManager::setPlayerColor2(int id) {
    m_playerColor2 = id;
}

void GameManager::setPlayerColor3(int id) {
    m_playerGlowColor = id;
}

void GameManager::setPlayerDart(int id) {
    m_playerDart = id;
}

void GameManager::setPlayerDeathEffect(int id) {
    m_playerDeathEffect = id;
}

void GameManager::setPlayerFrame(int id) {
    m_playerFrame = id;
}

void GameManager::setPlayerGlow(bool v) {
    m_playerGlow = v;
}

void GameManager::setPlayerJetpack(int id) {
    m_playerJetpack = id;
}

void GameManager::setPlayerRobot(int id) {
    m_playerRobot = id;
}

void GameManager::setPlayerShip(int id) {
    m_playerShip = id;
}

void GameManager::setPlayerShipStreak(int id) {
    m_playerShipFire = id;
}

void GameManager::setPlayerSpider(int id) {
    m_playerSpider = id;
}

void GameManager::setPlayerStreak(int id) {
    m_playerStreak = id;
}

void GameManager::setPlayerSwing(int id) {
    m_playerSwing = id;
}

void GameManager::setPlayerUserID(int id) {
    m_playerUserID = id;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GameManager::addDuplicateLastFrame(int objectID) {
    auto frames = this->framesForAnimation(objectID);
    auto mainFrame = static_cast<cocos2d::CCArray*>(m_mainFramesForAnimation->objectForKey(objectID))->stringAtIndex(frames - 1)->getCString();
    auto detailFrame = static_cast<cocos2d::CCArray*>(m_detailFramesForAnimation->objectForKey(objectID))->stringAtIndex(frames - 1)->getCString();
    this->addCustomAnimationFrame(objectID, frames, mainFrame, detailFrame);
    m_framesForAnimation->setObject(cocos2d::CCInteger::create(frames + 1), objectID);
}

void GameManager::addToGJLog(cocos2d::CCString* str) {}

void GameManager::claimItemsResponse(gd::string str) {}

int GameManager::colorForPos(int pos) {
    switch (pos) {
        case 4: return 16;
        case 5: return 4;
        case 6: return 5;
        case 7: return 6;
        case 8: return 13;
        case 9: return 7;
        case 10: return 8;
        case 11: return 9;
        case 12: return 29;
        case 13: return 10;
        case 15: return 11;
        case 16: return 12;
        case 19: return 15;
        case 20: return 27;
        case 21: return 32;
        case 22: return 28;
        case 23: return 38;
        case 24: return 20;
        case 25: return 33;
        case 26: return 21;
        case 27: return 34;
        case 28: return 22;
        case 29: return 39;
        case 30: return 23;
        case 31: return 35;
        case 32: return 24;
        case 33: return 36;
        case 34: return 25;
        case 35: return 37;
        case 36: return 30;
        case 37: return 26;
        case 38: return 31;
        case 39: return 19;
        default: return pos;
    }
}

int GameManager::defaultFrameForAnimation(int objectID) {
    if (auto frame = static_cast<cocos2d::CCInteger*>(m_defaultFrames->objectForKey(objectID))) {
        return frame->getValue();
    }
    return 1;
}

void GameManager::eventUnlockFeature(char const* key) {}

int GameManager::framesForAnimation(int objectID) {
    if (auto frames = static_cast<cocos2d::CCInteger*>(m_framesForAnimation->objectForKey(objectID))) {
        return frames->getValue();
    }
    return 1;
}

float GameManager::frameTimeForAnimation(int objectID) {
    if (auto time = static_cast<cocos2d::CCFloat*>(m_frameTimeForAnimation->objectForKey(objectID))) {
        return time->getValue();
    }
    return 1.f;
}

bool GameManager::groundHasSecondaryColor(int index) {
    return index == 8 || index == 9 || index == 10 || index == 11;
}

void GameManager::iconAndTypeForKey(int key, int& id, int& type) {
    for (int i = 0; i < 8; i++) {
        if (key < m_keyStartForIcon[i + 1]) {
            id = key - m_keyStartForIcon[i] + 1;
            type = i;
            return;
        }
    }
}

void GameManager::itemPurchased(char const* key) {}

int GameManager::keyForIcon(int id, int type) {
    return m_keyStartForIcon[type] + id - 1;
}

bool GameManager::levelIsPremium(int unk1, int unk2) { return false; }

void GameManager::resetAdTimer() {
    m_adTimer = 0.0;
}

void GameManager::resumeAudio() {
    auto engine = FMODAudioEngine::sharedEngine();
    engine->resumeAudio();
    engine->resumeAllAudio();
    AppDelegate::get()->resumeSound();
    engine->m_system->update();
}

void GameManager::resumeAudioDelayed() {
    auto action = cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(.05f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(GameManager::resumeAudio)),
        nullptr
    );
    action->setTag(11);
    m_pActionManager->addAction(action, this, false);
}

void GameManager::shortenAdTimer(float time) {
    m_adTimer -= time;
}

bool GameManager::shouldShowInterstitial(int unk1, int unk2, int unk3) { return false; }

bool GameManager::showInterstitial() { return true; }

bool GameManager::showInterstitialForced() { return false; }

bool GameManager::showMainMenuAd() { return false; }

void GameManager::switchScreenMode(bool fullscreen, bool borderless, bool fix, bool unused) {
    this->reloadAll(true, fullscreen, borderless, fix, unused);
}

void GameManager::tryShowInterstitial(int unk1, int unk2, int unk3) {}

void GameManager::unlockedPremium() {}

void GameManager::verifySyncedCoins() {
    auto coins = 0;
    auto glm = GameLevelManager::sharedState();
    auto gsm = GameStatsManager::sharedState();
    for (int i = 1; i < 23; i++) {
        auto level = glm->getMainLevel(i, false);
        if (gsm->hasCompletedLevel(level)) {
            if (gsm->hasSecretCoin(level->getCoinKey(1))) coins++;
            if (gsm->hasSecretCoin(level->getCoinKey(2))) coins++;
            if (gsm->hasSecretCoin(level->getCoinKey(3))) coins++;
        }
    }
    for (int i = 5001; i < 5005; i++) {
        auto level = glm->getMainLevel(i, false);
        if (gsm->hasCompletedLevel(level)) {
            if (gsm->hasSecretCoin(level->getCoinKey(1))) coins++;
            if (gsm->hasSecretCoin(level->getCoinKey(2))) coins++;
            if (gsm->hasSecretCoin(level->getCoinKey(3))) coins++;
        }
    }
    if (gsm->hasSecretCoin("secret04")) coins++;
    if (gsm->hasSecretCoin("secret06")) coins++;
    if (gsm->hasSecretCoin("secretB03")) coins++;
    gsm->setStatIfHigher("8", coins);
}

void GameManager::videoAdHidden() {
    if (m_musicPaused) FMODAudioEngine::sharedEngine()->resumeAllMusic();
    m_musicPaused = false;
}

void GameManager::videoAdShowed() {
    auto engine = FMODAudioEngine::sharedEngine();
    if (engine->isMusicPlaying(0)) {
        engine->pauseAllMusic(true);
        m_musicPaused = true;
    }
    else m_musicPaused = false;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#include <sys/types.h>
#include <sys/timeb.h>
void GameManager::accountStatusChanged() {
    if (m_menuLayer) m_menuLayer->updateUserProfileButton();
}

void GameManager::applicationDidEnterBackground() {}

void GameManager::calculateBaseKeyForIcons() {
    m_keyStartForIcon.resize(9);
    m_keyStartForIcon[0] = 0;
    m_keyStartForIcon[1] = 485;
    m_keyStartForIcon[2] = 654;
    m_keyStartForIcon[3] = 772;
    m_keyStartForIcon[4] = 921;
    m_keyStartForIcon[5] = 1017;
    m_keyStartForIcon[6] = 1085;
    m_keyStartForIcon[7] = 1154;
    m_keyStartForIcon[8] = 1197;
    for (int i = 0; i < 1205; i++) {
        m_iconLoadCounts[i] = 0;
    }
}

void GameManager::clearGJLog() {
    m_gjLog->removeAllObjects();
}

void GameManager::didExitPlayscene() {
    if (this->m_unkBool8) {
        this->m_unkBool8 = false;
        if (cocos2d::CCDirector::sharedDirector()->getSmoothFixCounter() >= 10) {
            this->setGameVariable(GameVar::SmoothFix, false);
        }
    }
}

void GameManager::doQuickSave() {
    m_quickSave = true;
    this->save();
    m_quickSave = false;
}

void GameManager::followTwitch() {
    if (GameToolbox::doWeHaveInternet()) {
        cocos2d::CCApplication::sharedApplication()->openURL("https://www.twitch.tv/directory/category/geometry-dash");
        m_clickedTwitch = true;
        __timeb64 current;
        _ftime64_s(&current);
        m_socialsDuration = ((current.time & 0xfffff) * 1000 + current.millitm) / 1000.0;
    }
}

void GameManager::followTwitter() {
    if (GameToolbox::doWeHaveInternet()) {
        cocos2d::CCApplication::sharedApplication()->openURL("https://twitter.com/robtopgames");
        m_clickedTwitter = true;
        __timeb64 current;
        _ftime64_s(&current);
        m_socialsDuration = ((current.time & 0xfffff) * 1000 + current.millitm) / 1000.0;
    }
}

const char* GameManager::getBGTexture(int index) {
    index = std::clamp(index, 0, 59);
    this->loadBackground(index);
    return cocos2d::CCString::createWithFormat("game_bg_%02d_001.png", index)->getCString();
}

const char* GameManager::getFontFile(int index) {
    index = std::clamp(index, 0, 59);
    this->loadFont(index);
    if (index != 0) {
        return cocos2d::CCString::createWithFormat("gjFont%02d.fnt", index)->getCString();
    }
    return "bigFont.fnt";
}

const char* GameManager::getFontTexture(int index) {
    index = std::clamp(index, 0, 59);
    this->loadFont(index);
    if (index != 0) {
        return cocos2d::CCString::createWithFormat("gjFont%02d.png", index)->getCString();
    }
    return "bigFont.png";
}

const char* GameManager::getGTexture(int index) {
    index = std::clamp(index, 0, 22);
    this->loadGround(index);
    return cocos2d::CCString::createWithFormat("groundSquare_%02d_001.png", index)->getCString();
}

int GameManager::getIconRequestID() {
    return m_iconRequestID++;
}

const char* GameManager::getMGTexture(int index) {
    index = std::clamp(index, 0, 3);
    this->loadMiddleground(index);
    return cocos2d::CCString::createWithFormat("fg_%02d_001.png", index)->getCString();
}

int GameManager::getNextUniqueObjectKey() {
    auto customKeys = this->getOrderedCustomObjectKeys();
    auto result = -1;
    for (auto str : geode::cocos::CCArrayExt<cocos2d::CCString, false>(customKeys)) {
        auto key = str->intValue();
        if (key < result) result = key;
    }
    return result;
}

int GameManager::getNextUsedKey(int index, bool up) {
    auto previous = 0;
    auto customKeys = this->getOrderedCustomObjectKeys();
    for (int i = 0; i < customKeys->count(); i++) {
        auto key = customKeys->stringAtIndex(i)->intValue();
        if (key == index) {
            if (up) return previous;
            else return i + 1 < customKeys->count() ? customKeys->stringAtIndex(i + 1)->intValue() : 0;
        }
        previous = key;
    }
    return 0;
}

cocos2d::CCArray* GameManager::getOrderedCustomObjectKeys() {
    auto keys = m_customObjectDict->allKeys();
    if (keys->count() != 0) {
        qsort(keys->data->arr, keys->data->num, sizeof(cocos2d::CCString*), [](void const* a, void const* b) {
            auto sa = *static_cast<cocos2d::CCString* const*>(a);
            auto sb = *static_cast<cocos2d::CCString* const*>(b);
            return sa->intValue() - sb->intValue();
        });
    }
    return keys;
}

gd::string GameManager::getPracticeMusicFile() {
    auto mdm = MusicDownloadManager::sharedState();
    if (m_customPracticeSongID > 0) {
        if (mdm->isSongDownloaded(m_customPracticeSongID)) {
            if (m_customPracticeSongID > 0) {
                return mdm->pathForSong(m_customPracticeSongID);
            }
        }
        else {
            m_customPracticeSongID = 0;
        }
    }
    return "StayInsideMe.mp3";
}

bool GameManager::isIconLoaded(int id, int type) {
    return m_iconLoadCounts[this->keyForIcon(id, type)] > 0;
}

void GameManager::joinDiscord() {
    if (GameToolbox::doWeHaveInternet()) {
        cocos2d::CCApplication::sharedApplication()->openURL("https://discord.com/invite/geometrydash");
        m_clickedDiscord = true;
        __timeb64 current;
        _ftime64_s(&current);
        m_socialsDuration = ((current.time & 0xfffff) * 1000 + current.millitm) / 1000.0;
    }
}

void GameManager::joinReddit() {
    if (GameToolbox::doWeHaveInternet()) {
        cocos2d::CCApplication::sharedApplication()->openURL("https://www.reddit.com/r/geometrydash/");
        m_clickedReddit = true;
        __timeb64 current;
        _ftime64_s(&current);
        m_socialsDuration = ((current.time & 0xfffff) * 1000 + current.millitm) / 1000.0;
    }
}

void GameManager::likeFacebook() {
    if (GameToolbox::doWeHaveInternet()) {
        cocos2d::CCApplication::sharedApplication()->openURL("https://www.facebook.com/geometrydash");
        m_clickedFacebook = true;
        __timeb64 current;
        _ftime64_s(&current);
        m_socialsDuration = ((current.time & 0xfffff) * 1000 + current.millitm) / 1000.0;
    }
}

void GameManager::loadBackgroundAsync(int index) {
    index = std::clamp(index, 0, 59);
    if (m_loadingBG || m_loadedBgID == index) return;
    m_loadingBG = true;
    cocos2d::CCTextureCache::sharedTextureCache()->addImageAsync(
        cocos2d::CCString::createWithFormat("game_bg_%02d_001.png", index)->getCString(),
        this,
        callfuncO_selector(GameManager::finishedLoadingBGAsync),
        index,
        cocos2d::kCCTexture2DPixelFormat_RGBA8888
    );
}

void GameManager::loadDeathEffect(int id) {
    if (id < 1) id = 1;
    if (id > 19) id = 20;
    if (id != m_loadedDeathEffect) {
        if (1 < m_loadedDeathEffect) {
            cocos2d::CCTextureCache::sharedTextureCache()->removeTextureForKey(
                cocos2d::CCString::createWithFormat("PlayerExplosion_%02d.png", m_loadedDeathEffect-1)->getCString()
            );
        }
        if (1 < id) {
            cocos2d::CCTextureCache::sharedTextureCache()->addImage(
                cocos2d::CCString::createWithFormat("PlayerExplosion_%02d.png", id-1)->getCString(),
                false
            );
            cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()->addSpriteFramesWithFile(
                cocos2d::CCString::createWithFormat("PlayerExplosion_%02d.plist", id-1)->getCString()
            );
        }
        m_loadedDeathEffect = id;
    }
}

void GameManager::loadGroundAsync(int index) {
    index = std::clamp(index, 0, 22);
    if (m_loadingG || m_loadedGroundID == index) return;
    m_loadingG = true;
    auto hasSecondary = this->groundHasSecondaryColor(index);
    m_finishedLoadingG1 = false;
    m_finishedLoadingG2 = !hasSecondary;
    cocos2d::CCTextureCache::sharedTextureCache()->addImageAsync(
        cocos2d::CCString::createWithFormat("groundSquare_%02d_001.png", index)->getCString(),
        this,
        callfuncO_selector(GameManager::finishedLoadingGAsync1),
        index,
        cocos2d::kCCTexture2DPixelFormat_RGBA8888
    );
    if (!hasSecondary) return;
    cocos2d::CCTextureCache::sharedTextureCache()->addImageAsync(
        cocos2d::CCString::createWithFormat("groundSquare_%02d_2_001.png", index)->getCString(),
        this,
        callfuncO_selector(GameManager::finishedLoadingGAsync2),
        index,
        cocos2d::kCCTexture2DPixelFormat_RGBA8888
    );
}

void GameManager::loadMiddlegroundAsync(int index) {
    index = std::clamp(index, 0, 3);
    if (m_loadingG1 || m_loadedMG == index) return;
    m_loadingG1 = true;
    m_finishedLoadingMG1 = false;
    m_finishedLoadingMG2 = false;
    cocos2d::CCTextureCache::sharedTextureCache()->addImageAsync(
        cocos2d::CCString::createWithFormat("fg_%02d_001.png", index)->getCString(),
        this,
        callfuncO_selector(GameManager::finishedLoadingMGAsync1),
        index,
        cocos2d::kCCTexture2DPixelFormat_RGBA8888
    );
    cocos2d::CCTextureCache::sharedTextureCache()->addImageAsync(
        cocos2d::CCString::createWithFormat("fg_%02d_2_001.png", index)->getCString(),
        this,
        callfuncO_selector(GameManager::finishedLoadingMGAsync2),
        index,
        cocos2d::kCCTexture2DPixelFormat_RGBA8888
    );
}

void GameManager::loadVideoSettings() {
    auto application = cocos2d::CCApplication::sharedApplication();
    application->toggleVerticalSync(this->getGameVariable(GameVar::VerticalSync));
    application->setForceTimer(this->getGameVariable(GameVar::ForceTimer));
    application->setSmoothFix(this->getGameVariable(GameVar::SmoothFix));
}

void GameManager::lockColor(int id, UnlockType type) {
    m_valueKeeper->removeObjectForKey(this->colorKey(id, type));
}

void GameManager::lockIcon(int id, IconType type) {
    m_valueKeeper->removeObjectForKey(this->iconKey(id, type));
}

void GameManager::openEditorGuide() {
    m_showedEditorGuide = true;
    cocos2d::CCApplication::sharedApplication()->openURL("https://www.boomlings.com/GDEditor");
}

void GameManager::printGJLog() {}

void GameManager::queueReloadMenu() {
    m_pActionManager->addAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(.1f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(GameManager::reloadMenu)),
        nullptr
    ), this, false);
}

void GameManager::rateGame() {
    if (GameToolbox::doWeHaveInternet()) {
        GameToolbox::openAppPage();
        m_ratedGame = true;
        m_hasRatedGame = true;
    }
}

void GameManager::removeCustomObject(int key) {
    m_customObjectDict->removeObjectForKey(cocos2d::CCString::createWithFormat("%i", key)->getCString());
}

void GameManager::removeIconDelegate(int requestID) {
    for (auto it = m_iconDelegates.begin(); it != m_iconDelegates.end(); it++) {
        auto& delegates = it->second;
        for (int i = 0; i < delegates.size();) {
            if (static_cast<SimplePlayer*>(delegates[i])->m_iconRequestID == requestID) {
                delegates.erase(delegates.begin() + i);
            }
            else i++;
        }
    }
}

void GameManager::resetDPadSettings(bool dual) {
    if (dual) {
        m_dpad2.reset();
        m_dpad3.reset();
        m_dpad4.resetOneBtn();
        m_dpad5.resetOneBtn();
    }
    else m_dpad1.reset();
}

void GameManager::startUpdate() {
    cocos2d::CCDirector::sharedDirector()->getScheduler()->scheduleSelector(
        schedule_selector(GameManager::update), this, 0.f, kCCRepeatForever, 0.f, false);
}

void GameManager::subYouTube() {
    if (GameToolbox::doWeHaveInternet()) {
        cocos2d::CCApplication::sharedApplication()->openURL("https://www.youtube.com/user/RobTopGames");
        m_clickedYouTube = true;
        __timeb64 current;
        _ftime64_s(&current);
        m_socialsDuration = ((current.time & 0xfffff) * 1000 + current.millitm) / 1000.0;
    }
}

void GameManager::syncPlatformAchievements() {}

void GameManager::unloadBackground() {
    if (m_loadedBgID == 0) return;
    cocos2d::CCTextureCache::sharedTextureCache()->removeTextureForKey(
        cocos2d::CCString::createWithFormat("game_bg_%02d_001.png", m_loadedBgID)->getCString());
    m_loadedBgID = 0;
    auto fileUtils = cocos2d::CCFileUtils::sharedFileUtils();
    for (int i = 1; i < 60; i++) {
        fileUtils->removeFullPath(cocos2d::CCString::createWithFormat("game_bg_%02d_001.png", i)->getCString());
    }
}

void GameManager::unlockColor(int id, UnlockType type) {
    m_valueKeeper->setObject(cocos2d::CCString::create("1"), this->colorKey(id, type));
}

void GameManager::unlockIcon(int id, IconType type) {
    m_valueKeeper->setObject(cocos2d::CCString::create("1"), this->iconKey(id, type));
}

void GameManager::updateMusic() {
    auto engine = FMODAudioEngine::sharedEngine();
    engine->setBackgroundMusicVolume(m_bgVolume);
    engine->setEffectsVolume(m_sfxVolume);
    engine->m_musicOffset = m_timeOffset;
}

void GameManager::verifyAchievementUnlocks() {
    auto achievementManager = AchievementManager::sharedState();
    auto allAchievements = achievementManager->getAllAchievements();
    for (int i = 0; i < allAchievements->count(); i++) {
        auto achievement = static_cast<cocos2d::CCDictionary*>(allAchievements->objectAtIndex(i));
        auto key = static_cast<cocos2d::CCString*>(achievement->objectForKey("identifier"))->getCString();
        if (achievementManager->isAchievementEarned(key)) this->completedAchievement(key);
    }
}

void GameManager::verifyStarUnlocks() {
    auto glm = GameLevelManager::sharedState();
    auto gsm = GameStatsManager::sharedState();
    for (int i = 1; i < 23; i++) {
        auto level = glm->getMainLevel(i, false);
        if (gsm->hasCompletedLevel(level)) gsm->completedStarLevel(level);
    }
}
#endif

#if defined(GEODE_IS_IOS)
void GameManager::checkSteamAchievementUnlock() {}
#endif

