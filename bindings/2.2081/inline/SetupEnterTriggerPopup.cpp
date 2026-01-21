#include <Geode/Geode.hpp>

SetupEnterTriggerPopup::SetupEnterTriggerPopup() {
    m_enterOnlyToggler = nullptr;
    m_exitOnlyToggler = nullptr;
    m_enterType = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupEnterTriggerPopup* SetupEnterTriggerPopup::create(EnterEffectObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupEnterTriggerPopup();
    if (ret->init(object, objects)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

