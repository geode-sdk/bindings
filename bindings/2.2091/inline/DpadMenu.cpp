#include <Geode/binding/DpadMenu.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_ANDROID64)
DpadMenu::DpadMenu() {
    m_leftArrow = nullptr;
    m_rightArrow = nullptr;
    m_upArrow = nullptr;
    m_downArrow = nullptr;
}

DpadMenu* DpadMenu::create(cocos2d::CCPoint point, cocos2d::CCSize size, cocos2d::CCSize gap) {
    auto ret = new DpadMenu();
    if (ret->init()) {
        ret->autorelease();
        ret->m_dpadPoint = point;
        ret->m_dpadSize = size;
        ret->m_dpadGap = gap;
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif
