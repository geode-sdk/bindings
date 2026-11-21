#include <Geode/binding/PlayerCheckpoint.hpp>

#if defined(GEODE_IS_ANDROID)
PlayerCheckpoint::PlayerCheckpoint() {
    m_yVelocityUnrounded = 0.0;
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
    m_isGoingLeft = false;
    m_maybeReverseSpeed = 0.0;
    m_jumpBuffered = false;
    m_isDashing = false;
    m_dashX = 0.0;
    m_dashY = 0.0;
    m_dashAngle = 0.0;
    m_dashStartTime = 0.0;
    m_dashRing = nullptr;
    m_platformerCheckpoint = false;
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
    m_rotation = 0.f;
    m_wasTeleported = false;
    m_fixGravityBug = false;
    m_reverseSync = false;
    m_yVelocityBeforeSlope = 0.0;
    m_slopeStartTime = 0.0;
    m_justPlacedStreak = false;
    m_lastCollisionBottom = 0;
    m_lastCollisionTop = 0;
    m_lastCollisionLeft = 0;
    m_lastCollisionRight = 0;
    m_currentSlope2 = nullptr;
    m_preLastGroundObject = nullptr;
    m_slopeAngle = 0.f;
    m_slopeSlidingMaybeRotated = false;
    m_quickCheckpointMode = false;
    m_collidedObject = nullptr;
    m_lastGroundObject = nullptr;
    m_collidingWithLeft = nullptr;
    m_collidingWithRight = nullptr;
    m_scaleXRelated2 = 0.0;
    m_groundYVelocity = 0.0;
    m_yVelocityRelated = 0.0;
    m_scaleXRelated3 = 0.0;
    m_collidingBetweenSteps = false;
    m_scaleXRelated4 = 0.0;
    m_scaleXRelated5 = 0.0;
    m_isCollidingWithSlope = false;
    m_isBallRotating = false;
    m_currentPotentialSlope = nullptr;
    m_currentSlope = nullptr;
    m_slopeCenterOffset = 0.0;
    m_collidingWithSlopeId = 0;
    m_slopeIsDownhill = false;
    m_slopeAngleRadians = 0.f;
    m_rotationSpeed = 0.f;
    m_rotateSpeed = 0.f;
    m_isRotating = false;
    m_ballSpinning = false;
    m_speedMultiplier = 0.0;
    m_yStart = 0.0;
    m_gravity = 0.0;
    m_trailingParticleLife = 0.f;
    m_gameModeChangedTime = 0.0;
    m_ringJumpedSincePress = false;
    m_hasStartedFalling = false;
    m_shouldTryPlacingCheckpoint = false;
    m_playEffects = false;
    m_landedSinceFlip = false;
    m_lastSpiderFlipTime = 0.0;
    m_unkBool5 = false;
    m_usedRingThisStep = false;
    m_specialGroundHit = false;
    m_landParticlesAngle = 0.f;
    m_landParticlesGravityY = 0.f;
    m_slopeRotation = 0.0;
    m_currentSlopeYVelocity = 0.0;
    m_lastSlopeSnapOffset = 0.0;
    m_lastSlopeSnapAtFarEdge = false;
    m_lastSlopeSnapAtNearEdge = false;
    m_isAccelerating = false;
    m_isCurrentSlopeTop = false;
    m_collidedTopMinY = 0.0;
    m_collidedBottomMaxY = 0.0;
    m_collidedLeftMaxX = 0.0;
    m_collidedRightMinX = 0.0;
    m_wasJumpBuffered = false;
    m_wasRobotJump = false;
    m_stateJumpBuffered = false;
    m_statePreJump = false;
    m_touchedRing = false;
    m_touchedCustomRing = false;
    m_touchedGravityPortal = false;
    m_brokeBlockSincePress = false;
    m_touchedPad = false;
    m_yVelocity = 0.0;
    m_fallSpeed = 0.0;
    m_slopeResnapped = false;
    m_reverseCooldown = 0;
    m_reverseSyncStep = 0.0;
    m_ballRollSpeed = 0.f;
    m_unkUnused3 = 0.f;
    m_touchingGround = false;
    m_lastLandTime = 0.0;
    m_decelerationRamp = 0.f;
    m_isRising = false;
    m_lastGroundXDeltaTime = 0.0;
    m_isLocked = false;
    m_controlsDisabled = false;
    m_touchingRings = nullptr;
    m_lastActivatedPortal = nullptr;
    m_totalTime = 0.0;
    m_diagonalYStep = 0.f;
    m_defaultMiniIcon = false;
    m_swapColors = false;
    m_switchDashFireColor = false;
    m_stateOnGround = 0;
    m_unusedFloatA80 = 0.f;
    m_stateBoostX = 0;
    m_stateBoostY = 0;
    m_stateNoWallPush = 0;
    m_stateScale = 0;
    m_platformerXVelocity = 0.0;
    m_holdingRight = false;
    m_holdingLeft = false;
    m_leftPressedFirst = false;
    m_platformXMove = 0.0;
    m_platformMomentum = 0.f;
    m_forcedSlopeSlide = false;
    m_isSliding = false;
    m_slopeSpeedBonus = 0.0;
    m_isOnIce = false;
    m_platformRideTime = 0.0;
    m_wasTouchingGround = false;
    m_slopeJumpCount = 0;
    m_slopeJumpResetTime = 0.0;
    m_changedDirectionsTime = 0.0;
    m_slopeEndTime = 0.0;
    m_isMoving = false;
    m_forcedSlideLeft = false;
    m_forcedSlideRight = false;
    m_lastSlideLeft = false;
    m_slideSlopeAngle = 0.0;
    m_unkUnused2 = 0.0;
    m_stateNoAutoJump = 0;
    m_stateDartSlide = 0;
    m_stateHitHead = 0;
    m_stateFlipGravity = 0;
    m_stateForce = 0;
    m_affectedByForces = false;
    m_fallStartY = 0.f;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
PlayerCheckpoint* PlayerCheckpoint::create() {
    auto inst = new PlayerCheckpoint();
    if (inst->init()) {
        inst->autorelease();
        return inst;
    }
    delete inst;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

