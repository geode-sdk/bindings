#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
EnterEffectObject::EnterEffectObject() {
    m_enterType = 0;
    m_length = 0;
    m_lengthVariance = 0;
    m_offset = 0;
    m_offsetVariance = 0;
    m_offsetY = 0;
    m_offsetYVariance = 0;
    m_moveDistance = 0;
    m_moveDistanceVariance = 0;
    m_areaScaleX = 0.0f;
    m_areaScaleXVariance = 0.0f;
    m_areaScaleY = 0.0f;
    m_areaScaleYVariance = 0.0f;
    m_moveAngle = 0;
    m_moveAngleVariance = 0;
    m_startAngle = false;
    m_relative = false;
    m_relativeFade = 0.0f;
    m_easingInType = EasingType::None;
    m_easingInRate = 2.0f;
    m_easingInBuffer = 0;
    m_easingOutType = EasingType::None;
    m_easingOutRate = 2.0f;
    m_easingOutBuffer = 0;
    m_moveX = 0;
    m_moveXVariance = 0;
    m_moveY = 0;
    m_moveYVariance = 0;
    m_tintChannelID = 0;
    m_property224 = 0;
    m_directionType = 0;
    m_xyMode = false;
    m_easeOutEnabled = false;
    m_modFront = 1.0f;
    m_modBack = 1.0f;
    m_areaTint = 0.0f;
    m_property285 = 0.0f;
    m_effectID = 0;
    m_areaRotation = 0.0f;
    m_areaRotationVariance = 0.0f;
    m_toOpacity = 0.0f;
    m_fromOpacity = 0.0f;
    m_inbound = false;
    m_hsvEnabled = false;
    m_deadzone = 0.0f;
    m_twoDirections = false;
    m_dontEditAreaParent = false;
    m_priority = 0;
    m_unk7d8 = 0;
    m_enterChannel = 0;
    m_useEffectID = false;
    m_negativeTargetX = false;
    m_areaRange = 0;
    m_unk7fc = 0;
}

bool EnterEffectObject::init(char const* frame) {
    if (!EffectGameObject::init(frame)) return false;
    m_objectType = GameObjectType::EnterEffectObject;
    m_unk390 = 45;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
EnterEffectObject* EnterEffectObject::create(char const* frame) {
    auto ret = new EnterEffectObject();
    if (ret->init(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void EnterEffectObject::resetEnterAnimValues() {
    m_length = -99;
    m_lengthVariance = -99;
    m_offset = -99;
    m_offsetVariance = -99;
    m_offsetY = -99;
    m_offsetYVariance = -99;
    m_modFront = -99.f;
    m_modBack = -99.f;
    m_deadzone = -99.f;
    m_moveDistance = -99;
    m_moveDistanceVariance = -99;
    m_moveAngle = -99;
    m_moveAngleVariance = -99;
    m_moveX = -99;
    m_moveXVariance = -99;
    m_moveY = -99;
    m_moveYVariance = -99;
    m_areaScaleX = -99.f;
    m_areaScaleXVariance = -99.f;
    m_areaScaleY = -99.f;
    m_areaScaleYVariance = -99.f;
    m_areaRotation = -99.f;
    m_areaRotationVariance = -99.f;
    m_areaTint = -99.f;
    m_property285 = -99.f;
    m_toOpacity = -99.f;
    m_fromOpacity = -99.f;
    m_relativeFade = -99.f;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

