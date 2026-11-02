#include <Geode/binding/GJLocalLevelScoreCell.hpp>
#include <Geode/binding/GJLocalScore.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GJLocalLevelScoreCell::GJLocalLevelScoreCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}
#endif

#if defined(GEODE_IS_WINDOWS)
void GJLocalLevelScoreCell::updateBGColor(int index) {
    if (m_localScore && m_localScore->m_currentScore) {
        m_backgroundLayer->setColor({ 230, 150, 10 });
    }
    else {
        m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
    }
    m_backgroundLayer->setOpacity(255);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

