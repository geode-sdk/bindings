#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCBMFontConfiguration::CCBMFontConfiguration() {
    m_pFontDefDictionary = nullptr;
    m_nCommonHeight = 0;
    m_pKerningDictionary = nullptr;
    m_pCharacterSet = nullptr;
}

char const* cocos2d::CCBMFontConfiguration::description() {
    return CCString::createWithFormat(
        "<CCBMFontConfiguration = " CC_FORMAT_PRINTF_SIZE_T " | Glphys:%d Kernings:%d | Image = %s>",
        (size_t)this,
        HASH_COUNT(m_pFontDefDictionary),
        HASH_COUNT(m_pKerningDictionary),
        m_sAtlasName.c_str()
    )->getCString();
}

bool cocos2d::CCBMFontConfiguration::initWithFNTfile(char const* p0) {
    m_pKerningDictionary = nullptr;
    m_pFontDefDictionary = nullptr;
    m_pCharacterSet = this->parseConfigFile(p0);
    return m_pCharacterSet != nullptr;
}
#endif

