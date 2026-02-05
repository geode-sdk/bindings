#include <Geode/Bindings.hpp>

DialogObject::DialogObject() {
    m_characterFrame = 0;
    m_textScale = 1.f;
    m_skippable = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool DialogObject::init(gd::string character, gd::string text, int characterFrame, float textScale, bool skippable, cocos2d::ccColor3B color) {
    m_character = character;
    m_text = text;
    m_characterFrame = characterFrame;
    m_textScale = textScale;
    m_color = color;
    m_skippable = skippable;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

