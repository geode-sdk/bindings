#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
int SetupMGTrigger::posFromSliderValue(float value) {
    return (int)((value - .5f) * 200.f) * 3.f;
}

float SetupMGTrigger::sliderValueFromPos(int pos) {
    return std::clamp((int)((float)pos / 3.f) / 200.f + .5f, 0.f, 1.f);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupMGTrigger::updateMoveCommandEasing() {
    if (m_gameObject) m_gameObject->m_easingType = m_mgEasingType;
    else {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_easingType = m_mgEasingType;
        }
    }
}

void SetupMGTrigger::updateMoveCommandEasingRate() {
    if (m_gameObject) m_gameObject->m_easingRate = m_mgEasingRate;
    else {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_easingRate = m_mgEasingRate;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

