#include <Geode/Geode.hpp>

EndTriggerGameObject::EndTriggerGameObject() {
    m_noEffects = false;
    m_noSFX = false;
    m_instant = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
EndTriggerGameObject* EndTriggerGameObject::create() {
    auto ret = new EndTriggerGameObject();
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

