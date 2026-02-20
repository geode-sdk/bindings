#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
bool cocos2d::CCImage::_initWithRawData(void* data, int dataLen, int width, int height, int bitsPerComponent, bool preMulti) {
    if (width == 0 || height == 0) return false;
    m_nBitsPerComponent = bitsPerComponent;
    m_nWidth = width;
    m_nHeight = height;
    m_bHasAlpha = true;
    auto size = width * height * 4;
    m_pData = new unsigned char[size];
    memcpy(m_pData, data, size);
    return true;
}

bool cocos2d::CCImage::initWithString(const char* text, int width, int height, cocos2d::CCImage::ETextAlign align, const char* font, int size) {
    return this->initWithStringShadowStroke(text, width, height, align, font, size);
}
#endif

