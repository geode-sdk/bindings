#include <Geode/Bindings.hpp>

StartPosObject::StartPosObject() {
    m_startSettings = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
StartPosObject::~StartPosObject() {
    CC_SAFE_RELEASE(m_startSettings);
}

StartPosObject* StartPosObject::create() {
    auto ret = new StartPosObject();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void StartPosObject::setSettings(LevelSettingsObject* settings) {
    if (settings == m_startSettings) return;
    CC_SAFE_RETAIN(settings);
    CC_SAFE_RELEASE(m_startSettings);
    m_startSettings = settings;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

