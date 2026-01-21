#include <Geode/Geode.hpp>

ForceBlockGameObject::ForceBlockGameObject() {
    m_force = 0.f;
    m_minForce = 0.f;
    m_maxForce = 0.f;
    m_relativeForce = false;
    m_forceRange = false;
    m_forceID = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool ForceBlockGameObject::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
ForceBlockGameObject* ForceBlockGameObject::create(char const* frame) {
    auto ret = new ForceBlockGameObject();
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

