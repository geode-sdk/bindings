#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupAnimSettingsPopup::updateAnimSettings() {
    if (m_gameObject) m_gameObject->setupAnimationVariables();
    else {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EnhancedGameObject*>(m_gameObjects->objectAtIndex(i))->setupAnimationVariables();
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

