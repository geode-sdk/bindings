#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
ButtonSprite* GJSpecialColorSelect::getButtonByTag(int tag) {
    for (int i = 0; i < m_buttonSprites->count(); i++) {
        auto sprite = static_cast<ButtonSprite*>(m_buttonSprites->objectAtIndex(i));
        if (sprite->getTag() == tag) return sprite;
    }
    return nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS)
void GJSpecialColorSelect::highlightSelected(ButtonSprite* sprite) {
    for (int i = 0; i < m_buttonSprites->count(); i++) {
        auto sprite = static_cast<ButtonSprite*>(m_buttonSprites->objectAtIndex(i));
        sprite->updateBGImage(sprite->getTag() == 1008 ? "GJ_button_05.png" : "GJ_button_04.png");
    }
    if (sprite) sprite->updateBGImage("GJ_button_02.png");
}
#endif

#if defined(GEODE_IS_IOS)
#endif

