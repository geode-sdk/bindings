#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::ccColor3B SetupPulsePopup::getColorValue() {
    return m_colorPicker->getColorValue();
}

void SetupPulsePopup::selectColor(cocos2d::ccColor3B color) {
    m_colorPicker->setColorValue(color);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupPulsePopup::textInputOpened(CCTextInputNode* node) {}

void SetupPulsePopup::updateColorValue() {
    if (m_colorInitializing) return;
    if (m_gameObject) {
        m_gameObject->m_triggerTargetColor = m_currentColor;
    }
    else if (m_gameObjects) {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_triggerTargetColor = m_currentColor;
        }
    }
}

void SetupPulsePopup::updateHSVValue() {
    if (m_gameObject) {
        m_gameObject->m_hsvValue = m_hsv;
    }
    else if (m_gameObjects) {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_hsvValue = m_hsv;
        }
    }
}

void SetupPulsePopup::updatePulseMode() {
    if (m_gameObject) {
        m_gameObject->m_pulseMode = m_pulseMode;
    }
    else if (m_gameObjects) {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_pulseMode = m_pulseMode;
        }
    }
}

void SetupPulsePopup::updatePulseTargetType() {
    if (m_gameObject) {
        m_gameObject->m_pulseTargetType = m_pulseTargetType;
    }
    else if (m_gameObjects) {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_pulseTargetType = m_pulseTargetType;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

