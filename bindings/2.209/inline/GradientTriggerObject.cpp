#include <Geode/Bindings.hpp>

GradientTriggerObject::GradientTriggerObject() {
    m_blendingLayer = 0;
    m_blendingMode = 0;
    m_gradientID = 0;
    m_upBottomLeftID = 0;
    m_downBottomRightID = 0;
    m_leftTopLeftID = 0;
    m_rightTopRightID = 0;
    m_vertexMode = false;
    m_disable = false;
    m_disableAll = false;
    m_previewOpacity = 1.f;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GradientTriggerObject* GradientTriggerObject::create() {
    auto ret = new GradientTriggerObject();
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

