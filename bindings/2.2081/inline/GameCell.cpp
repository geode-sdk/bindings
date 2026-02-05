#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GameCell::GameCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}

void GameCell::updateBGColor(int index) {
    m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 0, 255, 0 } : cocos2d::ccColor3B { 255, 255, 255 });
    m_backgroundLayer->setOpacity(255);
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

