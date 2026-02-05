#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool PulseEffectAction::isFinished() {
    return m_fadeInTime + m_holdTime + m_fadeOutTime <= m_deltaTime + m_startTime;
}

float PulseEffectAction::valueForDelta(float currentTime, float fadeInTime, float holdTime, float fadeOutTime) {
    if (currentTime < fadeInTime) return currentTime / fadeInTime;
    if (currentTime > fadeInTime + holdTime) {
        if (fadeOutTime > 0.f) return 1.f - (currentTime - fadeInTime - holdTime) / fadeOutTime;
        return 0.f;
    }
    return 1.f;
}
#endif

#if defined(GEODE_IS_WINDOWS)
void PulseEffectAction::step(float delta) {
    if (m_disabled) return;
    m_deltaTime += delta;
    m_currentValue = this->valueForDelta(m_deltaTime + m_startTime, m_fadeInTime, m_holdTime, m_fadeOutTime);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

