#include <Geode/Bindings.hpp>

DialogObject::DialogObject() {
    m_characterFrame = 0;
    m_textScale = 1.f;
    m_unskippable = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool DialogObject::init(gd::string character, gd::string text, int characterFrame, float textScale, bool unskippable, cocos2d::ccColor3B nameColor) {
    m_character = character;
    m_text = text;
    m_characterFrame = characterFrame;
    m_textScale = textScale;
    m_nameColor = nameColor;
    m_unskippable = unskippable;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

