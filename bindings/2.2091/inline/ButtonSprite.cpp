#include <Geode/Bindings.hpp>

ButtonSprite* ButtonSprite::create(char const* caption) {
    return ButtonSprite::create(caption, 0, false, "goldFont.fnt", "GJ_button_01.png", .0f, 1.f);
}

ButtonSprite* ButtonSprite::create(cocos2d::CCSprite* topSprite) {
    return ButtonSprite::create(topSprite, 0, 0, .0f, 1.f, false, "GJ_button_01.png", false);
}

ButtonSprite* ButtonSprite::create(char const* caption, float scale) {
    return ButtonSprite::create(caption, 0, false, "goldFont.fnt", "GJ_button_01.png", .0f, scale);
}

ButtonSprite* ButtonSprite::create(char const* caption, const char* font, const char* texture) {
    return ButtonSprite::create(caption, 0, false, font, texture, .0f, 1.f);
}

ButtonSprite* ButtonSprite::create(char const* caption, const char* font, const char* texture, float scale) {
    return ButtonSprite::create(caption, 0, false, font, texture, .0f, scale);
}

ButtonSprite* ButtonSprite::create(char const* caption, int width, int minWidth, float scale, bool absolute) {
    return ButtonSprite::create(caption, width, minWidth, scale, absolute, "goldFont.fnt", "GJ_button_01.png", .0f);
}

ButtonSprite* ButtonSprite::create(cocos2d::CCSprite* topSprite, int width, bool absolute, float height, const char* texture, float scale) {
    return create(topSprite, width, 0, height, scale, absolute, texture, true);
}

ButtonSprite* ButtonSprite::create(cocos2d::CCSprite* topSprite, int width, int minWidth, float height, float scale, bool absolute) {
    return ButtonSprite::create(topSprite, width, minWidth, height, scale, absolute, "GJ_button_01.png", false);
}

ButtonSprite* ButtonSprite::create(char const* caption, int width, int minWidth, float scale, bool absolute, char const* font, char const* bg) {
    return ButtonSprite::create(caption, width, minWidth, scale, absolute, font, bg, .0f);
}

ButtonSprite* ButtonSprite::create(const char* caption, int width, bool absolute, const char* font, const char* texture, float height, float scale) {
    return create(caption, width, 0, scale, absolute, font, texture, height);
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void ButtonSprite::setColor(cocos2d::ccColor3B color) {
    // i love inlined funcs
    if (m_label) m_label->setColor(color);
    if (m_subSprite) m_subSprite->setColor(color);
    if (m_subBGSprite) m_subBGSprite->setColor(color);
    if (m_BGSprite) m_BGSprite->setColor(color);
}

void ButtonSprite::updateSpriteOffset(cocos2d::CCPoint offset) {
    m_spritePosition = offset;
    this->updateSpriteBGSize();
}
#endif

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
ButtonSprite::ButtonSprite() {
    m_mode = 0;
    m_width = 0.f;
    m_minWidth = 0.f;
    m_scale = 0.f;
    m_height = 0.f;
    m_absolute = false;
    m_label = nullptr;
    m_subSprite = nullptr;
    m_subBGSprite = nullptr;
    m_BGSprite = nullptr;
}
#endif

