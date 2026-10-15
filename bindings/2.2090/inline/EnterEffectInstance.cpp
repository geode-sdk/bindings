#include <Geode/Bindings.hpp>

EnterEffectInstance::EnterEffectInstance() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
float EnterEffectInstance::getValue(int key) {
    switch (key) {
        case 0: return m_length;
        case 1: return m_lengthVariance;
        case 2: return m_offset;
        case 3: return m_offsetVariance;
        case 4: return m_modFront;
        case 5: return m_modBack;
        case 6: return m_deadzone;
        case 7: return m_moveDistance;
        case 8: return m_moveDistanceVariance;
        case 9: return m_moveAngle;
        case 10: return m_moveAngleVariance;
        case 11: return m_moveX;
        case 12: return m_moveXVariance;
        case 13: return m_moveY;
        case 14: return m_moveYVariance;
        case 15: return m_scaleX;
        case 16: return m_scaleXVariance;
        case 17: return m_scaleY;
        case 18: return m_scaleYVariance;
        case 19: return m_rotation;
        case 20: return m_rotationVariance;
        case 21: return m_tint;
        case 22: return m_unk074;
        case 23: return m_toOpacity;
        case 24: return m_fromOpacity;
        case 25: return m_offsetY;
        case 26: return m_offsetYVariance;
        case 27: return m_relativeFade;
        case 28: return m_hue;
        case 29: return m_saturation;
        case 30: return m_value;
        default: return 0;
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
EnterEffectInstance::EnterEffectInstance(EnterEffectObject* object, int targetID, int centerID, int unknown, int targetGroupIndex, int easeIndexCount, int controlID) {
    m_gameObject = object;
    m_reversed = false;
    m_targetID = targetID;
    m_centerID = centerID;
    m_unkFloat3 = unknown;
    m_easeIndex = 0;
    m_paused = false;
    m_paused2 = false;
    m_unkBool4 = false;
    m_targetGroupIndex = targetGroupIndex;
    m_controlID = controlID;
    if (easeIndexCount > 0) m_easeIndices.resize(easeIndexCount);
    this->loadValuesFromObject(m_gameObject);
}
#endif

