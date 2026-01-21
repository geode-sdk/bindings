#include <Geode/Geode.hpp>


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
#endif

