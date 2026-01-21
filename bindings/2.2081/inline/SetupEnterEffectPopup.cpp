#include <Geode/Geode.hpp>

SetupEnterEffectPopup::SetupEnterEffectPopup() {
    m_objectID = 0;
    m_enterOnlyToggler = nullptr;
    m_exitOnlyToggler = nullptr;
    m_enterType = 0;
    m_hsvButton = nullptr;
    m_hsvChanged = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupEnterEffectPopup* SetupEnterEffectPopup::create(EnterEffectObject* object, cocos2d::CCArray* objects, int id) {
    auto ret = new SetupEnterEffectPopup();
    if (ret->init(object, objects, id)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

