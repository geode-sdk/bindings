#include <Geode/Bindings.hpp>

KeyframeAnimTriggerObject::KeyframeAnimTriggerObject() {
    m_timeMod = 1.0f;
    m_positionXMod = 1.0f;
    m_positionYMod = 1.0f;
    m_rotationMod = 1.0f;
    m_scaleXMod = 1.0f;
    m_scaleYMod = 1.0f;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
KeyframeAnimTriggerObject* KeyframeAnimTriggerObject::create() {
    auto ret = new KeyframeAnimTriggerObject();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

