#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
LevelListCell* LevelListCell::create(float width, float height) {
    auto ret = new LevelListCell(" ", width, height);
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS)
LevelListCell::~LevelListCell() {
    CC_SAFE_RELEASE(m_levelList);
}

bool LevelListCell::init() { return true; }

void LevelListCell::updateBGColor(int index) {
    m_backgroundLayer->setColor(index % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
    m_backgroundLayer->setOpacity(255);
}
#endif

#if defined(GEODE_IS_IOS)
LevelListCell::LevelListCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    m_levelList = nullptr;
    m_addingLevel = false;
    this->init();
}
#endif

