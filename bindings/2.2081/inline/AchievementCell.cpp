#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
AchievementCell::AchievementCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}
#endif

#if defined(GEODE_IS_WINDOWS)
bool AchievementCell::init() { return true; }

void AchievementCell::updateBGColor(int index) {
    m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
}
#endif

#if defined(GEODE_IS_IOS)
#endif

