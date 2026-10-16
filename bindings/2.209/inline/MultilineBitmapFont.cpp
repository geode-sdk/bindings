#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
MultilineBitmapFont::MultilineBitmapFont() {
    m_specialDescriptors = nullptr;
    m_characters = nullptr;
    m_lines = nullptr;
    m_lineMetric = 0;
    m_metricWritten = false;
    m_unkPtr = nullptr;
    m_height = 0;
    m_width = 0;
    m_maxWidth = 0.f;
    m_disableColor = false;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
MultilineBitmapFont::~MultilineBitmapFont() {
    CC_SAFE_RELEASE(m_characters);
    CC_SAFE_RELEASE(m_lines);
    CC_SAFE_RELEASE(m_specialDescriptors);
}

// TODO: 2.209
MultilineBitmapFont* MultilineBitmapFont::createWithFont(char const* font, std::string text, float scale, float width, cocos2d::CCPoint anchor, int height, bool disableColor, bool p0, int p1, float p2) {
    auto ret = new MultilineBitmapFont();
    if (ret->initWithFont(font, text, scale, width, anchor, height, disableColor, p0, p1, p2)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

