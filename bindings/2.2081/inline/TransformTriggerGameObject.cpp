#include <Geode/Geode.hpp>

TransformTriggerGameObject::TransformTriggerGameObject() {
    m_objectScaleX = 1.f;
    m_objectScaleY = 1.f;
    m_property450 = 0.f;
    m_property451 = 0.f;
    m_onlyMove = false;
    m_divideX = false;
    m_divideY = false;
    m_relativeRotation = false;
    m_relativeScale = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool TransformTriggerGameObject::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
TransformTriggerGameObject* TransformTriggerGameObject::create(char const* frame) {
    auto ret = new TransformTriggerGameObject();
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

