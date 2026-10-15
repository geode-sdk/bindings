#include <Geode/Bindings.hpp>

#if defined(GEODE_IS_ANDROID) || defined(GEODE_IS_MACOS) || defined(GEODE_IS_IOS)
cocos2d::extension::CCControlColourPicker::CCControlColourPicker() {
    m_colourPicker = nullptr;
    m_huePicker = nullptr;
    m_background = nullptr;
    m_colorTarget = nullptr;
    m_delegate = nullptr;
}
#endif

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_IOS)
cocos2d::extension::CCControlColourPicker::~CCControlColourPicker() {}
#endif

#if defined(GEODE_IS_ANDROID) || defined(GEODE_IS_MACOS) || defined(GEODE_IS_IOS)
cocos2d::ccColor3B const& cocos2d::extension::CCControlColourPicker::getColorValue() const  {
    return m_rgb;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::extension::CCControlColourPicker::updateControlPicker() {
    m_huePicker->setHue(m_hsv.h);
    m_colourPicker->updateWithHSV(m_hsv);
}
#endif

