#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
SongCell::SongCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}
#endif

#if defined(GEODE_IS_WINDOWS)
void SongCell::updateBGColor(int index) {
    m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
    m_backgroundLayer->setOpacity(255);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

