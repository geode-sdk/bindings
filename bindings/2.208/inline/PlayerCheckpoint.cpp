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
    m_isMini = false;
    m_playerSpeed = 0.f;
    m_isHidden = false;
    m_goingLeft = false;
    m_maybeReverseSpeed = 0.0;
    m_isDashing = false;
    m_dashX = 0.0;
    m_dashY = 0.0;
    m_dashAngle = 0.0;
    m_dashStartTime = 0.0;
    m_dashRing = nullptr;
    m_shouldStop = false;
    m_lastFlipTime = 0.0;
    m_gravityMod = 1.f;
    m_objectSnappedTo = nullptr;
    m_snapDistance = 0.0;
    m_accelerationOrSpeed = 0.0;
    m_decreaseBoostSlide = false;
    m_followRelated = 0;
    m_unk838 = 0.f;
    m_isOnSlope = false;
    m_wasOnSlope = false;
    m_slopeVelocity = 0.f;
    m_touchingRings = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

