#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void LevelCell::updateToggle() {
    if (m_level && m_toggler) m_toggler->toggle(m_level->m_selected);
}
#endif

#if defined(GEODE_IS_WINDOWS)
LevelCell* LevelCell::create(float width, float height) {
    auto ret = new LevelCell(" ", width, height);
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void LevelCell::updateBGColor(int index) {
    m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
    m_backgroundLayer->setOpacity(255);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

