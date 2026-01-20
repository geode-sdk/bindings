#include <Geode/Geode.hpp>

GJSpriteColor::GJSpriteColor() {
    m_colorID = 0;
    m_defaultColorID = 0;
    m_opacity = 1.f;
    m_baseOpacity = 1.f;
    m_hsv.h = 0.f;
    m_hsv.s = 1.f;
    m_hsv.v = 1.f;
    m_hsv.absoluteSaturation = false;
    m_hsv.absoluteBrightness = false;
    m_usesHSV = false;
    m_usesCustomBlend = false;
    m_customColor.r = 255;
    m_customColor.g = 255;
    m_customColor.b = 255;
}

int GJSpriteColor::getColorMode() {
    return m_defaultColorID == m_colorID || m_colorID != 0 ? m_colorID : m_defaultColorID;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

