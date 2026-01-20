#include <Geode/Geode.hpp>

ItemTriggerGameObject::ItemTriggerGameObject() {
    m_item1Mode = 0;
    m_item2Mode = 0;
    m_targetItemMode = 1;
    m_mod1 = 1.0f;
    m_mod2 = 1.0f;
    m_resultType1 = 0;
    m_resultType2 = 1;
    m_resultType3 = 3;
    m_tolerance = 0.0f;
    m_roundType1 = 0;
    m_roundType2 = 0;
    m_signType1 = 0;
    m_signType2 = 0;
    m_persistent = false;
    m_targetAll = false;
    m_reset = false;
    m_timer = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool ItemTriggerGameObject::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
ItemTriggerGameObject* ItemTriggerGameObject::create(char const* frame) {
    auto ret = new ItemTriggerGameObject();
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

