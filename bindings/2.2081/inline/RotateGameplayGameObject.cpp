#include <Geode/Geode.hpp>

RotateGameplayGameObject::RotateGameplayGameObject() {
    m_moveDirection = 0;
    m_groundDirection = 0;
    m_editVelocity = false;
    m_overrideVelocity = false;
    m_velocityModX = 1.f;
    m_velocityModY = 1.f;
    m_changeChannel = false;
    m_channelOnly = false;
    m_targetChannelID = 0;
    m_instantOffset = false;
    m_dontSlide = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
RotateGameplayGameObject* RotateGameplayGameObject::create() {
    auto ret = new RotateGameplayGameObject();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void RotateGameplayGameObject::updateGameplayRotation() {
    this->determineSlopeDirection();
    switch (m_slopeDirection) {
        case 1:
            m_moveDirection = 1;
            m_groundDirection = 4;
            break;
        case 2:
            m_moveDirection = 2;
            m_groundDirection = 3;
            break;
        case 3:
            m_moveDirection = 1;
            m_groundDirection = 3;
            break;
        case 4:
            m_moveDirection = 3;
            m_groundDirection = 2;
            break;
        case 5:
            m_moveDirection = 4;
            m_groundDirection = 1;
            break;
        case 6:
            m_moveDirection = 3;
            m_groundDirection = 1;
            break;
        case 7:
            m_moveDirection = 4;
            m_groundDirection = 2;
            break;
        default:
            m_moveDirection = 2;
            m_groundDirection = 4;
            break;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

