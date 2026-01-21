#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void MapPackCell::reloadCell() {
    this->loadFromMapPack(m_mapPack);
}
#endif

#if defined(GEODE_IS_WINDOWS)
MapPackCell::MapPackCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}

MapPackCell::~MapPackCell() {
    CC_SAFE_RELEASE(m_rewardLabels);
    CC_SAFE_RELEASE(m_rewardSprites);
}

void MapPackCell::updateBGColor(int index) {
    m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
    m_backgroundLayer->setOpacity(255);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

