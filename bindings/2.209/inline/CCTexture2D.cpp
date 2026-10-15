#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
unsigned int cocos2d::CCTexture2D::bitsPerPixelForFormat() {
    return this->bitsPerPixelForFormat(m_ePixelFormat);
}

const char* cocos2d::CCTexture2D::description() {
    return CCString::createWithFormat("<CCTexture2D | Name = %u | Dimensions = %u x %u | Coordinates = (%.2f, %.2f)>", m_uName, m_uPixelsWide, m_uPixelsHigh, m_fMaxS, m_fMaxT)->getCString();
}

void cocos2d::CCTexture2D::drawAtPoint(cocos2d::CCPoint const& point) {
    float coordinates[] = { 0.0f, m_fMaxT, m_fMaxS, m_fMaxT, 0.0f, 0.0f, m_fMaxS, 0.0f };

    auto width = m_uPixelsWide * m_fMaxS;
    auto height = m_uPixelsHigh * m_fMaxT;

    float vertices[] = { point.x, point.y, width + point.x, point.y, point.x, height + point.y, width + point.x, height + point.y };

    ccGLEnableVertexAttribs(kCCVertexAttribFlag_Position | kCCVertexAttribFlag_TexCoords);
    m_pShaderProgram->use();
    m_pShaderProgram->setUniformsForBuiltins();

    ccGLBindTexture2D(m_uName);

    glVertexAttribPointer(kCCVertexAttrib_Position, 2, GL_FLOAT, GL_FALSE, 0, vertices);
    glVertexAttribPointer(kCCVertexAttrib_TexCoords, 2, GL_FLOAT, GL_FALSE, 0, coordinates);

    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
}

void cocos2d::CCTexture2D::drawInRect(cocos2d::CCRect const& rect) {
    float coordinates[] = { 0.0f, m_fMaxT, m_fMaxS, m_fMaxT, 0.0f, 0.0f, m_fMaxS, 0.0f };

    float vertices[] = {
        rect.origin.x, rect.origin.y,
        rect.origin.x + rect.size.width, rect.origin.y,
        rect.origin.x, rect.origin.y + rect.size.height,
        rect.origin.x + rect.size.width, rect.origin.y + rect.size.height
    };

    ccGLEnableVertexAttribs(kCCVertexAttribFlag_Position | kCCVertexAttribFlag_TexCoords);
    m_pShaderProgram->use();
    m_pShaderProgram->setUniformsForBuiltins();

    ccGLBindTexture2D(m_uName);

    glVertexAttribPointer(kCCVertexAttrib_Position, 2, GL_FLOAT, GL_FALSE, 0, vertices);
    glVertexAttribPointer(kCCVertexAttrib_TexCoords, 2, GL_FLOAT, GL_FALSE, 0, coordinates);

    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
}

void cocos2d::CCTexture2D::generateMipmap() {
    ccGLBindTexture2D(m_uName);
    glGenerateMipmap(GL_TEXTURE_2D);
    m_bHasMipmaps = true;
}

bool cocos2d::CCTexture2D::hasMipmaps() {
    return m_bHasMipmaps;
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

void* cocos2d::CCTexture2D::keepData(void* data, unsigned int length) {
    return data;
}

void cocos2d::CCTexture2D::releaseData(void* data) {
    free(data);
}

void cocos2d::CCTexture2D::releaseGLTexture() {
    if (m_uName != 0) ccGLDeleteTexture(m_uName);
    m_uName = 0;
}

const char* cocos2d::CCTexture2D::stringForFormat() {
    switch (m_ePixelFormat) {
        case kCCTexture2DPixelFormat_RGBA8888: return "RGBA8888";
        case kCCTexture2DPixelFormat_RGB888: return "RGB888";
        case kCCTexture2DPixelFormat_RGB565: return "RGB565";
        case kCCTexture2DPixelFormat_RGBA4444: return "RGBA4444";
        case kCCTexture2DPixelFormat_RGB5A1: return "RGB5A1";
        case kCCTexture2DPixelFormat_AI88: return "AI88";
        case kCCTexture2DPixelFormat_A8: return "A8";
        case kCCTexture2DPixelFormat_I8: return "I8";
        case kCCTexture2DPixelFormat_PVRTC4: return "PVRTC4";
        case kCCTexture2DPixelFormat_PVRTC2: return "PVRTC2";
        default: return nullptr;
    }
}
#endif

