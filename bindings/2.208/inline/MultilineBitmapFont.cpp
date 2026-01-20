#include <Geode/Geode.hpp>

MultilineBitmapFont::MultilineBitmapFont() {
    m_specialDescriptors = nullptr;
    m_characters = nullptr;
    m_lines = nullptr;
    m_unkInt = 0;
    m_unkBool = false;
    m_unkPtr = nullptr;
    m_height = 0;
    m_width = 0;
    m_maxWidth = 0.f;
    m_disableColor = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
MultilineBitmapFont::~MultilineBitmapFont() {
    CC_SAFE_RELEASE(m_characters);
    CC_SAFE_RELEASE(m_lines);
    CC_SAFE_RELEASE(m_specialDescriptors);
}

MultilineBitmapFont* MultilineBitmapFont::createWithFont(char const* font, gd::string text, float scale, float width, cocos2d::CCPoint anchor, int height, bool disableColor) {
    auto ret = new MultilineBitmapFont();
    if (ret->initWithFont(font, text, scale, width, anchor, height, disableColor)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

