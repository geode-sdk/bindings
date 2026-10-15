#include <Geode/Bindings.hpp>

TimerTriggerGameObject::TimerTriggerGameObject() {
    m_startTime = 0.0;
    m_targetTime = 0.0;
    m_stopTimeEnabled = false;
    m_dontOverride = false;
    m_ignoreTimeWarp = false;
    m_timeMod = 1.f;
    m_startPaused = false;
    m_multiActivate = false;
    m_controlType = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool TimerTriggerGameObject::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
TimerTriggerGameObject* TimerTriggerGameObject::create(char const* frame) {
    auto ret = new TimerTriggerGameObject();
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

