#include <Geode/Geode.hpp>

AudioLineGuideGameObject::AudioLineGuideGameObject() {
    m_beatsPerMinute = 100;
    m_beatsPerBar = 1;
    m_speed = Speed::Normal;
    m_disabled = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
AudioLineGuideGameObject* AudioLineGuideGameObject::create() {
    auto ret = new AudioLineGuideGameObject();
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

