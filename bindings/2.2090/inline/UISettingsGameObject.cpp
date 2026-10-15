#include <Geode/Bindings.hpp>

UISettingsGameObject::UISettingsGameObject() {
    m_xRef = 0;
    m_yRef = 0;
    m_xRelative = false;
    m_yRelative = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
UISettingsGameObject* UISettingsGameObject::create() {
    auto ret = new UISettingsGameObject();
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

