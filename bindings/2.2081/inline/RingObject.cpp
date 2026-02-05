#include <Geode/Bindings.hpp>

RingObject::RingObject() {
    m_claimTouch = false;
    m_isSpawnOnly = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool RingObject::init(char const* frame) {
    if (!EffectGameObject::init(frame)) return false;
    m_customGlowColor = true;
    m_isTouchTriggered = true;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

