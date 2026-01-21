#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MAC) || defined(GEODE_IS_ANDROID)
void UIButtonConfig::reset() {
    m_width = 280;
    m_height = 120;
    m_deadzone = 0.f;
    m_scale = 1.f;
    m_opacity = 255;
    m_radius = 10.f;
    m_modeB = false;
    m_position.x = 95.f;
    m_position.y = 36.f;
    m_oneButton = false;
    m_player2 = false;
    m_snap = false;
    m_split = false;
}

void UIButtonConfig::resetOneBtn() {
    this->reset();
    m_width = 200;
    m_height = 200;
    m_position.x = 95.f;
    m_position.y = 196.f;
    m_oneButton = true;
}
#endif

