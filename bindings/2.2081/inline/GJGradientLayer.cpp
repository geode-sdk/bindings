#include <Geode/Bindings.hpp>

GJGradientLayer::GJGradientLayer() {
    m_baseColor = 0;
    m_detailColor = 0;
    m_triggerObject = nullptr;
    m_noScale = false;
    m_blendingMode = 0;
    m_blendingLayer = 0;
    m_gradientID = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJGradientLayer* GJGradientLayer::create() {
    auto ret = new GJGradientLayer();
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

