#include <Geode/Geode.hpp>

AudioAssetsBrowser::AudioAssetsBrowser() {
    m_songInfoObjects = nullptr;
    m_songList = nullptr;
    m_pageIndicatorLabel = nullptr;
    m_loadingCircle = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void AudioAssetsBrowser::onPage(cocos2d::CCObject* sender) {}

void AudioAssetsBrowser::updatePageLabel() {}
#endif

#if defined(GEODE_IS_WINDOWS)
AudioAssetsBrowser::~AudioAssetsBrowser() {
    MusicDownloadManager::sharedState()->removeMusicDownloadDelegate(this);
    CC_SAFE_RELEASE(m_songInfoObjects);
}

AudioAssetsBrowser* AudioAssetsBrowser::create(gd::vector<int>& songIds, gd::vector<int>& sfxIds) {
    auto ret = new AudioAssetsBrowser();
    if (ret->init(songIds, sfxIds)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool AudioAssetsBrowser::cellPerformedAction(TableViewCell* cell, int listType, CellAction action, cocos2d::CCNode* parent) { return false; }

int AudioAssetsBrowser::getSelectedCellIdx() { return 0; }

int AudioAssetsBrowser::getCellDelegateType() { return 1; }

void AudioAssetsBrowser::trySetupAudioBrowser() {
    auto mdm = MusicDownloadManager::sharedState();
    if (mdm->m_sfxObjects) {
        if (mdm->m_customContentURL.empty()) mdm->getCustomContentURL();
        this->setupList();
    }
    else {
        if (mdm->m_customContentURL.empty()) mdm->getCustomContentURL();
        else mdm->downloadSFXLibrary();
    }
}
#endif

#if defined(GEODE_IS_IOS)
void AudioAssetsBrowser::musicActionFinished(GJMusicAction action) {}
#endif

