#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupSmartBlockLayer::determineStartValues() {
    if (auto smartTemplate = GameLevelManager::sharedState()->m_smartTemplate) {
        m_allowRotation = smartTemplate->m_allowRotation;
        m_allowFlipX = smartTemplate->m_allowFlipX;
        m_allowFlipY = smartTemplate->m_allowFlipY;
        m_ignoreCorners = smartTemplate->m_ignoreCorners;
    }
    auto gameManager = GameManager::sharedState();
    m_useNearby = gameManager->getGameVariable(GameVar::UseNearbyAsReference);
    m_dontDelete = gameManager->getGameVariable(GameVar::DontDelete);
    if (m_gameObject) {
        m_referenceOnly = m_gameObject->m_referenceOnly;
    }
    else {
        m_referenceOnly = true;
        for (int i = 0; i < m_gameObjects->count(); i++) {
            auto obj = static_cast<SmartGameObject*>(m_gameObjects->objectAtIndex(i));
            if (!obj->m_referenceOnly) m_referenceOnly = false;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

