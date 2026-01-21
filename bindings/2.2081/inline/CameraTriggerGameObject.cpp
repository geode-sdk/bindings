#include <Geode/Geode.hpp>

CameraTriggerGameObject::CameraTriggerGameObject() {
    m_exitStatic = false;
    m_followObject = false;
    m_followEasing = 1.f;
    m_edgeDirection = 0;
    m_smoothVelocity = false;
    m_velocityModifier = 0.f;
    m_exitInstant = false;
    m_previewOpacity = 1.f;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool CameraTriggerGameObject::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
CameraTriggerGameObject* CameraTriggerGameObject::create(char const* frame) {
    auto ret = new CameraTriggerGameObject();
    if (ret->init(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

