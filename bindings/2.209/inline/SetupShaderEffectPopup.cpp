#include <Geode/Bindings.hpp>

SetupShaderEffectPopup::SetupShaderEffectPopup() {
    m_zLayerSprites = nullptr;
    m_zLayerMin = 0;
    m_zLayerMax = 0;
    m_changeMin = false;
    m_objectID = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupShaderEffectPopup::~SetupShaderEffectPopup() {
    CC_SAFE_RELEASE(m_zLayerSprites);
}

SetupShaderEffectPopup* SetupShaderEffectPopup::create(EffectGameObject* object, cocos2d::CCArray* objects, int id) {
    auto ret = new SetupShaderEffectPopup();
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

