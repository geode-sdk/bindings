#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
GJScaleControl::GJScaleControl() {
    m_sliderX = nullptr;
    m_sliderY = nullptr;
    m_sliderXY = nullptr;
    m_touchID = -1;
    m_valueX = 0.0f;
    m_valueY = 0.0f;
    m_unkSize4 = 0;
    m_changedValueX = 0.0f;
    m_changedValueY = 0.0f;
    m_scale1Lock = false;
    m_scaleButtonType = 0;
    m_delegate = nullptr;
    m_upperBound = 2.0f;
    m_lowerBound = 0.5f;
    m_senderTag = 0;
    m_scaleLockButton = nullptr;
    m_scaleLocked = false;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GJScaleControl::finishTouch() {
    if (m_touchID != -1) {
        m_touchID = -1;
        if (m_delegate) m_delegate->scaleChangeEnded();
    }
}

float GJScaleControl::scaleFromValue(float value) {
    return cocos2d::CCString::createWithFormat("%.02f", (m_upperBound - m_lowerBound) * value + m_lowerBound)->floatValue();
}

float GJScaleControl::skewFromValue(float value) {
    return (m_upperBound - m_lowerBound) * value + m_lowerBound;
}

float GJScaleControl::valueFromScale(float scale) {
    auto value = (scale - m_lowerBound) / (m_upperBound - m_lowerBound);
    return value < 0 ? 0 : (value > 1 ? 1 : value);
}

float GJScaleControl::valueFromSkew(float value) {
    return std::clamp<float>((value - m_lowerBound) / (m_upperBound - m_lowerBound), 0.f, 1.f);
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJScaleControl* GJScaleControl::create() {
    auto ret = new GJScaleControl();
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

