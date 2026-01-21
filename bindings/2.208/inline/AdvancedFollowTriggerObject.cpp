#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool AdvancedFollowTriggerObject::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
AdvancedFollowTriggerObject* AdvancedFollowTriggerObject::create(char const* frame) {
    auto ret = new AdvancedFollowTriggerObject();
    if (ret->init(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

int AdvancedFollowTriggerObject::getAdvancedFollowID() {
    if (m_targetPlayer1) return -1;
    if (m_targetPlayer2) return -2;
    if (m_followCPP) return -3;
    else return m_centerGroupID;
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MAC) || defined(GEODE_IS_ANDROID)
AdvancedFollowTriggerObject::AdvancedFollowTriggerObject() {
    m_delay = 0.f;
    m_delayVariance = 0.f;
    m_startSpeed = 0.f;
    m_startSpeedVariance = 0.f;
    m_startSpeedReference = 0;
    m_startDirection = 0.f;
    m_startDirectionVariance = 0.f;
    m_startDirectionReference = 0;
    m_maxSpeed = 0.f;
    m_maxSpeedVariance = 0.f;
    m_xOnly = false;
    m_yOnly = false;
    m_maxRange = 0.f;
    m_maxRangeVariance = 0.f;
    m_property310 = 0.f;
    m_property311 = 0.f;
    m_acceleration = 0.f;
    m_accelerationVariance = 0.f;
    m_property312 = 0.f;
    m_property313 = 0.f;
    m_property314 = 0.f;
    m_property315 = 0.f;
    m_steerForce = 0.f;
    m_steerForceVariance = 0.f;
    m_steerForceLowEnabled = false;
    m_steerForceLow = 0.f;
    m_steerForceLowVariance = 0.f;
    m_steerForceHighEnabled = false;
    m_steerForceHigh = 0.f;
    m_steerFroceHighVariance = 0.f;
    m_speedRangeLow = 0.f;
    m_speedRangeLowVariance = 0.f;
    m_speedRangeHigh = 0.f;
    m_speedRangeHighVariance = 0.f;
    m_breakForce = 0.f;
    m_breakForceVariance = 0.f;
    m_breakAngle = 0.f;
    m_breakAngleVariance = 0.f;
    m_breakSteerForce = 0.f;
    m_breakSteerForceVariance = 0.f;
    m_breakSteerSpeedLimit = 0.f;
    m_breakSteerSpeedLimitVariance = 0.f;
    m_targetDirection = false;
    m_ignoreDisabled = false;
    m_rotateDirection = false;
    m_rotationOffset = 0.f;
    m_nearAcceleration = 0.f;
    m_nearAccelerationVariance = 0.f;
    m_nearDistance = 0.f;
    m_nearDistanceVariance = 0.f;
    m_nearFriction = 0.f;
    m_nearFrictionVariance = 0.f;
    m_friction = 0.f;
    m_frictionVariance = 0.f;
    m_easing = 0.f;
    m_easingVariance = 0.f;
    m_rotateEasing = 0.f;
    m_rotateDeadZ = 0.f;
    m_priority = 0;
    m_unk7fc = 0;
    m_maxRangeReference = 0;
    m_followMode = 0;
    m_exclusive = false;
    m_startMode = 0;
}
#endif

