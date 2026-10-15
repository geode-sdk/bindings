#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
GJRotationControl::GJRotationControl() {
    m_controlSprite = nullptr;
    m_startingRotation = 0.0f;
    m_currentRotation = 0.0f;
    m_touchID = -1;
    m_delegate = nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJRotationControl* GJRotationControl::create() {
    auto ret = new GJRotationControl();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void GJRotationControl::setAngle(float angle) {
    m_startingRotation = angle;
    m_currentRotation = angle;
    m_controlPosition.x = cosf(-angle * (M_PI / 180.f)) * 60.f;
    m_controlPosition.y = sinf(-angle * (M_PI / 180.f)) * 60.f;
    m_controlSprite->setPosition(m_controlPosition);
}

void GJRotationControl::updateSliderPosition(cocos2d::CCPoint position) {
    auto angle = atan2f(position.y - m_cursorDifference.y, position.x - m_cursorDifference.x);
    m_controlPosition.x = cosf(angle) * 60.f;
    m_controlPosition.y = sinf(angle) * 60.f;
    m_controlSprite->setPosition(m_controlPosition);
    auto degrees = roundf(-(angle * (180.f / M_PI)) * 1000.f) / 1000.f;
    auto rotation = m_currentRotation;
    if (degrees != m_currentRotation) {
        m_currentRotation = degrees;
        if (m_delegate) m_delegate->angleChanged(degrees - rotation);
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

