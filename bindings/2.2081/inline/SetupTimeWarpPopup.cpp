#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupTimeWarpPopup::updateTimeWarp() {
    if (m_gameObject) m_gameObject->m_timeWarpTimeMod = m_timeWarpMod;
    else if (m_gameObjects) {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_timeWarpTimeMod = m_timeWarpMod;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

