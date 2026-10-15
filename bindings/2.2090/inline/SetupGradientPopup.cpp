#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
SetupGradientPopup::SetupGradientPopup() {
    m_blendingMode = 0;
    m_layerButtons = nullptr;
    m_blendingLayer = 0;
    m_gradientLabels = nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void SetupGradientPopup::sliderChanged(cocos2d::CCObject* sender) {}
#endif

#if defined(GEODE_IS_WINDOWS)
SetupGradientPopup::~SetupGradientPopup() {
    CC_SAFE_RELEASE(m_layerButtons);
}

SetupGradientPopup* SetupGradientPopup::create(GradientTriggerObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupGradientPopup();
    if (ret->init(object, objects)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void SetupGradientPopup::updateBlending() {
    if (m_gameObject) static_cast<GradientTriggerObject*>(m_gameObject)->m_blendingMode = m_blendingMode;
    else {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<GradientTriggerObject*>(m_gameObjects->objectAtIndex(i))->m_blendingMode = m_blendingMode;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

