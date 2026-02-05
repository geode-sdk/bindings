#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupOpacityPopup::updateOpacity() {
    if (m_gameObject) m_gameObject->m_opacity = m_opacity;
    else {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_opacity = m_opacity;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

