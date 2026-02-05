#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool CustomSongCell::shouldReload() {
    return (m_songInfoObject->m_songID == this->getActiveSongID()) != m_selected;
}
#endif

#if defined(GEODE_IS_WINDOWS)
LevelSettingsObject* CustomSongCell::getLevelSettings() { return nullptr; }

void CustomSongCell::updateBGColor(int index) {
    m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 50, 50, 50 } : cocos2d::ccColor3B { 75, 75, 75 });
    m_backgroundLayer->setOpacity(255);
}
#endif

#if defined(GEODE_IS_IOS)
CustomSongCell::CustomSongCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}
#endif

