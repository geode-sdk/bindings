#include <Geode/Geode.hpp>

LevelInfoLayer::LevelInfoLayer() {
    m_isBusy = false;
    m_playBtnMenu = nullptr;
    m_level = nullptr;
    m_coins = nullptr;
    m_likeBtn = nullptr;
    m_starRateBtn = nullptr;
    m_demonRateBtn = nullptr;
    m_unk2 = nullptr;
    m_lengthLabel = nullptr;
    m_exactLengthLabel = nullptr;
    m_downloadsLabel = nullptr;
    m_likesLabel = nullptr;
    m_orbsLabel = nullptr;
    m_folderLabel = nullptr;
    m_cloneBtn = nullptr;
    m_unk3 = nullptr;
    m_likesIcon = nullptr;
    m_orbsIcon = nullptr;
    m_levelType = GJLevelType::Default;
    m_noUpdateAlert = false;
    m_enterTransitionFinished = false;
    m_circle = nullptr;
    m_difficultySprite = nullptr;
    m_starsIcon = nullptr;
    m_starsLabel = nullptr;
    m_icons = nullptr;
    m_iconOffset = 0.f;
    m_challenge = false;
    m_playScene = nullptr;
    m_playSprite = nullptr;
    m_progressTimer = nullptr;
    m_songWidget = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void LevelInfoLayer::incrementDislikes() {
    m_level->m_dislikes++;
    this->updateLabelValues();
}

void LevelInfoLayer::incrementLikes() {
    m_level->m_likes++;
    this->updateLabelValues();
}

void LevelInfoLayer::onFeatured(cocos2d::CCObject* sender) {}

void LevelInfoLayer::onPlayReplay(cocos2d::CCObject* sender) {
    if (m_isBusy) return;
    if (this->shouldDownloadLevel()) {
        this->downloadLevel();
    }
    else {
        auto audioEngine = FMODAudioEngine::sharedEngine();
        audioEngine->stopAllMusic(true);
        audioEngine->playEffect("playSound_01.ogg", 1.f, 0.f, .3f);
        GameManager::sharedState()->m_sceneEnum = 3;
        cocos2d::CCDirector::sharedDirector()->replaceScene(cocos2d::CCTransitionFade::create(.5f, PlayLayer::scene(m_level, true, false)));
    }
}

void LevelInfoLayer::tryShowAd() {
    GameManager::sharedState()->tryShowInterstitial(120, 140, 0);
}
#endif

#if defined(GEODE_IS_WINDOWS)
LevelInfoLayer::~LevelInfoLayer() {
    CC_SAFE_RELEASE(m_level);
    CC_SAFE_RELEASE(m_circle);
    CC_SAFE_RELEASE(m_coins);
    CC_SAFE_RELEASE(m_icons);
    auto glm = GameLevelManager::sharedState();
    if (glm->m_levelDownloadDelegate == this) glm->m_levelDownloadDelegate = nullptr;
    if (glm->m_levelUpdateDelegate == this) glm->m_levelUpdateDelegate = nullptr;
}

void LevelInfoLayer::onClone(cocos2d::CCObject* sender) {
    if (this->shouldDownloadLevel() || m_isBusy) return;
    this->setKeypadEnabled(false);
    m_isBusy = true;
    GameManager::sharedState()->m_sceneEnum = 2;
    auto level = GameLevelManager::sharedState()->createNewLevel();
    level->copyLevelInfo(m_level);
    if (m_level->m_originalLevel.value() == 0) {
        if (m_level->m_levelID.value() != 0) {
            level->m_originalLevel = m_level->m_levelID;
        }
    }
    else {
        level->m_originalLevel = m_level->m_originalLevel;
    }
    cocos2d::CCDirector::sharedDirector()->replaceScene(cocos2d::CCTransitionFade::create(0.5f, EditLevelLayer::scene(level)));
}

void LevelInfoLayer::onDelete(cocos2d::CCObject* sender) {
    m_playBtnMenu->setEnabled(false);
    GameLevelManager::sharedState()->deleteLevel(m_level);
    this->onBack(nullptr);
    m_isBusy = true;
}

void LevelInfoLayer::onOwnerDelete(cocos2d::CCObject* sender) {
    if (m_isBusy) return;
    auto glm = GameLevelManager::sharedState();
    glm->m_levelDeleteDelegate = this;
    glm->deleteServerLevel(m_level->m_levelID.value());
    m_circle->setVisible(true);
}

void LevelInfoLayer::showSongWarning() {
    auto alert = FLAlertLayer::create(
        this,
        "No Song",
        "This level uses a <cl>custom song</c> that has not been <cg>downloaded</c> yet.\n"
        "Do you want to play without music?\n"
        "<cy>Download by using the bar below</c>",
        "Cancel",
        "Play",
        300.f
    );
    alert->setTag(9);
    alert->show();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

