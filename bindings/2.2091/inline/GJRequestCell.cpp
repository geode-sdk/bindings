#include <Geode/binding/GJRequestCell.hpp>
#include <Geode/binding/CCMenuItemToggler.hpp>
#include <Geode/binding/GJUserScore.hpp>
#include <Geode/binding/GameLevelManager.hpp>
#include <Geode/binding/UploadActionPopup.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GJRequestCell::GJRequestCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}

void GJRequestCell::updateToggle() {
    if (m_score && m_toggler) m_toggler->toggle(m_score->m_toggled);
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJRequestCell::~GJRequestCell() {
    CC_SAFE_RELEASE(m_score);
}

void GJRequestCell::updateBGColor(int index) {
    m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
    m_backgroundLayer->setOpacity(255);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

