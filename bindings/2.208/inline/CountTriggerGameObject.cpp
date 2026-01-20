#include <Geode/Geode.hpp>

CountTriggerGameObject::CountTriggerGameObject() {
    m_pickupCount = 0;
    m_pickupTriggerMode = 0;
    m_multiActivate = false;
    m_isOverride = false;
    m_pickupTriggerMultiplier = 1.f;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool CountTriggerGameObject::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
CountTriggerGameObject* CountTriggerGameObject::create(char const* frame) {
    auto ret = new CountTriggerGameObject();
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

