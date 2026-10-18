#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::CCTexturePVR* cocos2d::CCTexturePVR::create(char const* path) {
    auto ret = new CCTexturePVR();
    if (ret->initWithContentsOfFile(path)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::CCTexturePVR::~CCTexturePVR() {
    if (m_uName != 0 && !m_bRetainName) glDeleteTextures(1, &m_uName);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

