#include <Geode/Bindings.hpp>

EnhancedTriggerObject::EnhancedTriggerObject() {
    m_minXID = 0;
    m_minYID = 0;
    m_maxXID = 0;
    m_maxYID = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool EnhancedTriggerObject::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
EnhancedTriggerObject* EnhancedTriggerObject::create(char const* frame) {
    auto ret = new EnhancedTriggerObject();
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

