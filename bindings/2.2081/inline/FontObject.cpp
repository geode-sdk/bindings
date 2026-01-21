#include <Geode/Geode.hpp>

FontObject::FontObject() {
    m_fontWidths = {};
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool FontObject::initWithConfigFile(char const* font, float scale) {
    this->parseConfigFile(font, scale);
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
FontObject* FontObject::createWithConfigFile(char const* font, float scale) {
    auto ret = new FontObject();
    if (ret->initWithConfigFile(font, scale)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

int FontObject::getFontWidth(int character) {
    return m_fontWidths[character];
}
#endif

#if defined(GEODE_IS_IOS)
#endif

