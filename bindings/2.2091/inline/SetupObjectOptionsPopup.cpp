#include <Geode/binding/SetupObjectOptionsPopup.hpp>
#include <Geode/binding/GameObject.hpp>

SetupObjectOptionsPopup::SetupObjectOptionsPopup() {
    m_gameObject = nullptr;
    m_gameObjects = nullptr;
    m_iceBlock = false;
    m_dontFade = false;
    m_dontEnter = false;
    m_noEffects = false;
    m_noParticle = false;
    m_noTouch = false;
    m_passable = false;
    m_hide = false;
    m_nonStickX = false;
    m_nonStickY = false;
    m_extraSticky = false;
    m_dontBoostY = false;
    m_scaleStick = false;
    m_highDetail = false;
    m_groupParent = false;
    m_areaParent = false;
    m_gripSlope = false;
    m_noGlow = false;
    m_reverse = false;
    m_extendedCollision = false;
    m_unk2a6 = false;
    m_effectObject = false;
    m_singlePlayerTouch = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupObjectOptionsPopup::~SetupObjectOptionsPopup() {
    CC_SAFE_RELEASE(m_gameObject);
    CC_SAFE_RELEASE(m_gameObjects);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

