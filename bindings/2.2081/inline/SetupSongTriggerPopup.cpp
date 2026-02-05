#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void SetupSongTriggerPopup::onResetSongTime(cocos2d::CCObject* sender) {
    this->updateValue(408, 0.f);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupSongTriggerPopup::updateApplyPrepare(bool hideAll) {
    if (hideAll) this->hideAll();
    else this->goToPage(0, false);
    this->toggleGroup(2, true);
}

void SetupSongTriggerPopup::updateSongTimeSlider() {
    if (m_selectNode->m_selectedSongID <= 0) return;
    auto engine = FMODAudioEngine::sharedEngine();
    engine->loadMusic(MusicDownloadManager::sharedState()->pathForSong(m_selectNode->m_selectedSongID));
    auto musicLength = engine->getMusicLengthMS(0);
    if (musicLength != 0) {
        this->setMaxSliderValue(musicLength, 408);
        this->setMaxSliderValue(musicLength, 410);
        this->updateSlider(408);
        this->updateSlider(410);
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

