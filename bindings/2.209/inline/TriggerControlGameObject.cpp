#include <Geode/Bindings.hpp>

TriggerControlGameObject::TriggerControlGameObject() {
    m_customTriggerValue = GJActionCommand::Stop;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
TriggerControlGameObject* TriggerControlGameObject::create(char const* frame) {
    auto ret = new TriggerControlGameObject();
    if (ret->init(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool TriggerControlGameObject::init(char const* frame) {
    m_triggerControlFrame = frame;
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

