#include <Geode/binding/PlayerCheckpoint.hpp>
#include <Geode/Geode.hpp>

PlayerCheckpoint::PlayerCheckpoint() {
    m_yVelocity = 0.f;
    m_isUpsideDown = false;
    m_isSideways = false;
    m_isShip = false;
    m_isBall = false;
    m_isBird = false;
    m_isSwing = false;
    m_isDart = false;
    m_isRobot = false;
    m_isSpider = false;
    m_isOnGround = false;
    m_ghostType = GhostType::Disabled;
    m_miniMode = false;
    m_speed = 0.f;
    m_hidden = false;
    m_goingLeft = false;
    m_reverseSpeed = 0.f;
    m_dashing = false;
    m_dashX = 0.f;
    m_dashY = 0.f;
    m_dashAngle = 0.f;
    m_dashStartTime = 0.f;
    m_dashRingObject = nullptr;
    m_platformerCheckpoint = false;
    m_lastFlipTime = 0.0;
    m_gravityMod = 1.f;
    m_decreaseBoostSlide = false;
    m_followRelated = 0;
    m_followRelated2 = 0.f;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

