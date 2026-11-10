#include <Geode/mapping/CCObject.hpp>
#include <Geode/binding/SetupCameraOffsetTrigger.hpp>
#include <Geode/binding/EffectGameObject.hpp>
#include <algorithm>
#include <cmath>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
int SetupCameraOffsetTrigger::posFromSliderValue(float value) {
    return (int)(floorf((value - .5f) * 200.f) * 3.f);
}

float SetupCameraOffsetTrigger::sliderValueFromPos(int pos) {
    return std::clamp(floorf((float)pos / 3.f) / 200.f + .5f, 0.f, 1.f);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupCameraOffsetTrigger::updateMoveCommandEasing() {
    if (m_gameObject) m_gameObject->m_easingType = m_cameraEasingType;
    else {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_easingType = m_cameraEasingType;
        }
    }
}

void SetupCameraOffsetTrigger::updateMoveCommandEasingRate() {
    if (m_gameObject) m_gameObject->m_easingRate = m_cameraEasingRate;
    else {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_easingRate = m_cameraEasingRate;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif
