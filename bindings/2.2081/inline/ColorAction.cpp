#include <Geode/Geode.hpp>

ColorAction::ColorAction() {
    m_stepFinished = false;
    m_paused = false;
    m_currentOpacity = 1.f;
    m_deltaTime = 0.f;
    m_duration = 0.f;
    m_blending = false;
    m_playerColor = 0;
    m_colorID = 0;
    m_fromOpacity = 1.f;
    m_toOpacity = 1.f;
    m_copyHSV = { 0.f, 1.f, 1.f, false, false };
    m_copyID = 0;
    m_copyColorCalculated = false;
    m_copyOpacity = false;
    m_copyColorLoop = false;
    m_uniqueID = 0;
    m_controlID = 0;
    m_legacyHSV = false;
    m_colorSprite = nullptr;
    m_inheritanceNode = nullptr;
    m_actionDelay = 0.f;
    m_stepInterval = 0.f;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
ColorAction* ColorAction::create(cocos2d::ccColor3B color, bool blending, int playerColor) {
    return ColorAction::create(color, color, 0.f, 0.0, blending, playerColor, 1.f, 1.f);
}

ColorAction* ColorAction::create(cocos2d::ccColor3B fromColor, cocos2d::ccColor3B toColor, float duration, double unused, bool blending) {
    return ColorAction::create(fromColor, toColor, duration, unused, blending, -1, 1.f, 1.f);
}

ColorAction* ColorAction::getCopy() {
    return ColorAction::create(m_fromColor, m_toColor, m_duration, 0.0, m_blending, m_playerColor, m_fromOpacity, m_toOpacity);
}

bool ColorAction::init(cocos2d::ccColor3B fromColor, cocos2d::ccColor3B toColor, float duration, double unused, bool blending, int playerColor, float fromOpacity, float toOpacity) {
    m_fromColor = fromColor;
    m_toColor = toColor;
    m_duration = duration;
    m_blending = blending;
    m_playerColor = playerColor;
    m_colorID = 0;
    m_fromOpacity = fromOpacity;
    m_toOpacity = toOpacity;
    return true;
}

void ColorAction::updateCustomColor(cocos2d::ccColor3B color1, cocos2d::ccColor3B color2) {
    if (m_playerColor == 1) m_fromColor = color1;
    else if (m_playerColor == 2) m_fromColor = color2;
}
#endif

#if defined(GEODE_IS_WINDOWS)
ColorAction* ColorAction::create(cocos2d::ccColor3B fromColor, cocos2d::ccColor3B toColor, float duration, double unused, bool blending, int playerColor, float fromOpacity, float toOpacity) {
    auto ret = new ColorAction();
    if (ret->init(fromColor, toColor, duration, unused, blending, playerColor, fromOpacity, toOpacity)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool ColorAction::isInUse() {
    return m_fromColor.r != 255 || m_fromColor.g != 255 || m_fromColor.b != 255 || m_fromOpacity != 1.f || m_copyID != 0 || m_blending || m_playerColor > 0;
}

void ColorAction::loadFromState(CAState& state) {
    m_fromColor = state.m_fromColor;
    m_toColor = state.m_toColor;
    m_color = state.m_color;
    m_paused = state.m_paused;
    m_blending = state.m_blending;
    m_copyOpacity = state.m_copyOpacity;
    m_legacyHSV = state.m_legacyHSV;
    m_playerColor = state.m_playerColor;
    m_colorID = state.m_colorID;
    m_copyID = state.m_copyID;
    m_uniqueID = state.m_uniqueID;
    m_duration = state.m_duration;
    m_fromOpacity = state.m_fromOpacity;
    m_toOpacity = state.m_toOpacity;
    m_deltaTime = state.m_deltaTime;
    m_currentOpacity = state.m_currentOpacity;
    m_copyHSV = state.m_copyHSV;
}

void ColorAction::resetAction() {
    m_stepFinished = false;
    m_paused = false;
    m_deltaTime = 0.f;
}

void ColorAction::saveToState(CAState& state) {
    state.m_fromColor = m_fromColor;
    state.m_toColor = m_toColor;
    state.m_color = m_color;
    state.m_paused = m_paused;
    state.m_blending = m_blending;
    state.m_copyOpacity = m_copyOpacity;
    state.m_legacyHSV = m_legacyHSV;
    state.m_playerColor = m_playerColor;
    state.m_colorID = m_colorID;
    state.m_copyID = m_copyID;
    state.m_uniqueID = m_uniqueID;
    state.m_duration = m_duration;
    state.m_fromOpacity = m_fromOpacity;
    state.m_toOpacity = m_toOpacity;
    state.m_deltaTime = m_deltaTime;
    state.m_currentOpacity = m_currentOpacity;
    state.m_copyHSV = m_copyHSV;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

