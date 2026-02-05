#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
unsigned int cocos2d::CCTexture2D::bitsPerPixelForFormat() {
    return this->bitsPerPixelForFormat(m_ePixelFormat);
}

unsigned int cocos2d::CCTexture2D::bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat p0) {
    switch (p0) {
        case kCCTexture2DPixelFormat_RGBA8888:
        case kCCTexture2DPixelFormat_RGB888:
            return 32;
        case kCCTexture2DPixelFormat_RGB565:
        case kCCTexture2DPixelFormat_RGBA4444:
        case kCCTexture2DPixelFormat_RGB5A1:
        case kCCTexture2DPixelFormat_AI88:
            return 16;
        case kCCTexture2DPixelFormat_A8:
        case kCCTexture2DPixelFormat_I8:
            return 8;
        case kCCTexture2DPixelFormat_PVRTC4:
            return 4;
        case kCCTexture2DPixelFormat_PVRTC2:
            return 2;
        default:
            return -1;
    }
}

bool cocos2d::CCTexture2D::initWithString(char const* text, char const* fontName, float fontSize) {
    return this->initWithString(text, fontName, fontSize, { 0.f, 0.f }, kCCTextAlignmentCenter, kCCVerticalTextAlignmentTop);
}

bool cocos2d::CCTexture2D::initWithString(char const* text, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment, cocos2d::CCVerticalTextAlignment vAlignment) {
    ccFontDefinition tempDef;
    tempDef.m_shadow.m_shadowEnabled = false;
    tempDef.m_stroke.m_strokeEnabled = false;
    tempDef.m_fontName = std::string(fontName);
    tempDef.m_fontSize = fontSize;
    tempDef.m_dimensions = dimensions;
    tempDef.m_alignment = hAlignment;
    tempDef.m_vertAlignment = vAlignment;
    tempDef.m_fontFillColor = { 255, 255, 255 };
    return this->initWithString(text, &tempDef);
}
#endif

