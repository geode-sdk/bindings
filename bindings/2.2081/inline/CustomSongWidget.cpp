#include <Geode/Geode.hpp>

CustomSongWidget::CustomSongWidget() {
    m_songInfoObject = nullptr;
    m_songLabel = nullptr;
    m_artistLabel = nullptr;
    m_songIDLabel = nullptr;
    m_downloadBtn = nullptr;
    m_selectSongBtn = nullptr;
    m_playbackBtn = nullptr;
    m_deleteBtn = nullptr;
    m_sliderGroove = nullptr;
    m_sliderBar = nullptr;
    m_ncsLogo = nullptr;
    m_bgSpr = nullptr;
    m_songDelegate = nullptr;
    m_showSelectSongBtn = false;
    m_showPlayMusicBtn = false;
    m_showDownloadBtn = false;
    m_isNotDownloading = false;
    m_isRobtopSong = false;
    m_isMusicLibrary = false;
    m_customSongID = 0;
    m_lengthMod = 0.f;
    m_isInCell = false;
    m_playbackDelegate = nullptr;
    m_hasLibrarySongs = false;
    m_hasSFX = false;
    m_unkBool2 = false;
    m_totalBytes = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void CustomSongWidget::toggleUpdateButton(bool enabled) {
    m_getSongInfoBtn->setColor(enabled ? cocos2d::ccColor3B { 255, 255, 255 } : cocos2d::ccColor3B { 166, 166, 166 });
    m_getSongInfoBtn->setEnabled(enabled);
}

bool CustomSongWidget::verifySongID(int id) {
    return m_customSongID == id && m_customSongID != 0;
}
#endif

#if defined(GEODE_IS_WINDOWS)
CustomSongWidget::~CustomSongWidget() {
    MusicDownloadManager::sharedState()->removeMusicDownloadDelegate(this);
    CC_SAFE_RELEASE(m_songInfoObject);
}

void CustomSongWidget::addExtraVisuals(bool newMusic, bool newLibraryMusic) {
    if (newMusic && !newLibraryMusic) {
        auto newMusicIcon = cocos2d::CCSprite::createWithSpriteFrameName("newMusicIcon_001.png");
        this->addChild(newMusicIcon, 4);
        newMusicIcon->setPosition({ -157.f, 20.f });
    }
    if (!newMusic && newLibraryMusic) {
        auto newMusicIcon = cocos2d::CCSprite::createWithSpriteFrameName("newMusicIcon2_001.png");
        this->addChild(newMusicIcon, 4);
        newMusicIcon->setPosition({ -157.f, 20.f });
        auto background = cocos2d::extension::CCScale9Sprite::create("GJ_square07.png", { 0.f, 0.f, 80.f, 80.f });
        background->setColor({ 255, 255, 0 });
        background->setContentSize({ 320.f, 30.f });
        this->addChild(background, -1);
    }
}

void CustomSongWidget::downloadFailed() {
    m_sliderGroove->setVisible(false);
    this->unschedule(schedule_selector(CustomSongWidget::updateDownloadProgress));
    m_isNotDownloading = true;
    this->updateSongInfo();
}

void CustomSongWidget::startMonitorDownload() {
    this->updateProgressBar(0);
    m_sliderGroove->setVisible(true);
    this->unschedule(schedule_selector(CustomSongWidget::updateDownloadProgress));
    this->schedule(schedule_selector(CustomSongWidget::updateDownloadProgress), 1.f / 30.f);
}

void CustomSongWidget::updateLengthMod(float lengthMod) {
    this->m_lengthMod = lengthMod;
    this->updateSongInfo();
}

void CustomSongWidget::updateSongObject(SongInfoObject* songInfo) {
    m_errorLabel->setVisible(false);
    if (m_bgSpr) m_bgSpr->setVisible(false);
    if (m_songInfoObject != songInfo) {
        CC_SAFE_RETAIN(songInfo);
        CC_SAFE_RELEASE(m_songInfoObject);
        m_songInfoObject = songInfo;
    }
    m_customSongID = songInfo ? songInfo->m_songID : 0;
    this->updateSongInfo();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

