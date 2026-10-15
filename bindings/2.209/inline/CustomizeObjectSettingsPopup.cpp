#include <Geode/Bindings.hpp>

CustomizeObjectSettingsPopup::CustomizeObjectSettingsPopup() {
    m_customizeLayer = nullptr;
    m_settingsChanged = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
CustomizeObjectSettingsPopup* CustomizeObjectSettingsPopup::create(GameObject* object, cocos2d::CCArray* objects, CustomizeObjectLayer* layer) {
    auto ret = new CustomizeObjectSettingsPopup();
    if (ret->init(object, objects, layer)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

