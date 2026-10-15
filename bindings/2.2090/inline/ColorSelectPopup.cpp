#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
ColorSelectPopup::ColorSelectPopup() {
    m_colorPicker = nullptr;
    m_unk3c0 = false;
    m_opacityLabel = nullptr;
    m_fadeTimeSlider = nullptr;
    m_opacitySlider = nullptr;
    m_currentColorSprite = nullptr;
    m_originalColorSprite = nullptr;
    m_delegate = nullptr;
    m_fadeTime = 0.f;
    m_playerColor = 0;
    m_blending = 0;
    m_opacity = 1.f;
    m_colorAction = nullptr;
    m_colorInput = nullptr;
    m_backgroundTrigger = false;
    m_tintGround = false;
    m_legacyHSV = false;
    m_colorTrigger = false;
    m_noChannel = false;
    m_newColorTrigger = false;
    m_colorID = 0;
    m_initializing = false;
    m_copyColorID = 0;
    m_copyOpacity = false;
    m_hsv = { 0.f, 1.f, 1.f, false, false };
    m_fadeTimeInput = nullptr;
    m_showCopyObjects = false;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::ccColor3B ColorSelectPopup::getColorValue() {
    return m_colorPicker->getColorValue();
}

void ColorSelectPopup::selectColor(cocos2d::ccColor3B color) {
    m_colorPicker->setColorValue(color);
}
#endif

#if defined(GEODE_IS_WINDOWS)
ColorSelectPopup::~ColorSelectPopup() {
    CC_SAFE_RELEASE(m_colorAction);
    CC_SAFE_RELEASE(m_colorObjects);
    CC_SAFE_RELEASE(m_copyObjects);
}

ColorSelectPopup* ColorSelectPopup::create(ColorAction* action) {
    return ColorSelectPopup::create(nullptr, nullptr, action);
}

ColorSelectPopup* ColorSelectPopup::create(cocos2d::ccColor3B color) {
    auto action = ColorAction::create();
    action->m_color = color;
    return ColorSelectPopup::create(action);
}

ColorSelectPopup* ColorSelectPopup::create(EffectGameObject* effect, cocos2d::CCArray* array) {
    return ColorSelectPopup::create(effect, array, nullptr);
}

void ColorSelectPopup::updateColorValue() {
    if (m_colorAction) {
        m_colorAction->m_fromColor = m_currentColor;
    }
    else if (m_gameObject) {
        m_gameObject->m_triggerTargetColor = m_currentColor;
    }
    else if (m_gameObjects) {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_triggerTargetColor = m_currentColor;
        }
    }
}

void ColorSelectPopup::updateHSVValue() {
    if (m_colorAction) {
        m_colorAction->m_copyHSV = m_hsv;
    }
    else if (m_gameObject) {
        m_gameObject->m_hsvValue = m_hsv;
    }
    else if (m_gameObjects) {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_hsvValue = m_hsv;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

