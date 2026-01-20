#include <Geode/Geode.hpp>

TeleportPortalObject::TeleportPortalObject() {
    m_orangePortal = nullptr;
    m_isYellowPortal = false;
    m_teleportYOffset = 0.f;
    m_teleportEase = false;
    m_staticForceEnabled = false;
    m_staticForce = 0.f;
    m_redirectForceEnabled = false;
    m_redirectForceMod = 1.f;
    m_redirectForceMin = 0.f;
    m_redirectForceMax = 0.f;
    m_saveOffset = false;
    m_ignoreX = false;
    m_ignoreY = false;
    m_gravityMode = 0;
    m_staticForceAdditive = false;
    m_instantCamera = false;
    m_snapGround = false;
    m_redirectDash = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool TeleportPortalObject::init(char const* frame, bool trigger) {
    if (!EffectGameObject::init(frame)) return false;
    if (!trigger) m_isTouchTriggered = true;
    return true;
}

void TeleportPortalObject::setPositionOverride(cocos2d::CCPoint position) {
    return GameObject::setPosition(position);
}

void TeleportPortalObject::setStartPosOverride(cocos2d::CCPoint position) {
    return GameObject::setStartPos(position);
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

