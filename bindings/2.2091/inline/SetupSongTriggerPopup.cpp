#include <Geode/binding/SetupSongTriggerPopup.hpp>
#include <Geode/binding/FMODAudioEngine.hpp>
#include <Geode/binding/MusicDownloadManager.hpp>
#include <Geode/binding/SongSelectNode.hpp>


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

#endif

#if defined(GEODE_IS_IOS)
#endif

