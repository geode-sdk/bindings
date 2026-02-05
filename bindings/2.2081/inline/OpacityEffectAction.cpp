#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void OpacityEffectAction::step(float delta) {
    if (m_disabled || m_finished) return;

    m_deltaTime += delta;
    auto currentTime = m_deltaTime + m_deltaTimeRelated;
    float factor;
    if (currentTime < m_duration) {
        if (currentTime > 0.f) factor = currentTime / m_duration;
        else factor = 0.f;
    }
    else factor = 1.f;
    m_finished = currentTime >= m_duration;
    m_currentValue = (m_toValue - m_fromValue) * factor + m_fromValue;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

