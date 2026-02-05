#include <Geode/Bindings.hpp>

#if defined(GEODE_IS_ANDROID)
PlayerObject::PlayerObject() {

    #if defined(__clang__)
    # pragma clang diagnostic push
    # pragma clang diagnostic ignored "-Winvalid-offsetof"
    #endif
    // Almost all members are initialized to zeros, so we can cheat here to avoid unnecessary code
    auto selfSize = sizeof(PlayerObject) - offsetof(PlayerObject, m_mainLayer);
    memset((void*)((uintptr_t)this + offsetof(PlayerObject, m_mainLayer)), 0, selfSize);

    #if defined(__clang__)
    # pragma clang diagnostic pop
    #endif

    m_lastCollisionBottom = -1;
    m_lastCollisionTop = -1;
    m_lastCollisionLeft = -1;
    m_lastCollisionRight = -1;
    m_unk50C = -1;
    m_unk510 = -1;
    new (&m_rotateObjectsRelated) decltype(m_rotateObjectsRelated)();
    new (&m_potentialSlopeMap) decltype(m_potentialSlopeMap)();
    m_rotateSpeed = 1.0f;
    new (&m_ringRelatedSet) decltype(m_ringRelatedSet)();
    m_playerSpeed = 0.9f;
    m_platformerVelocityRelated = 1.0f;
    new (&m_touchedRings) decltype(m_touchedRings)();
    m_gravityMod = 1.0f;
    new (&m_jumpPadRelated) decltype(m_jumpPadRelated)();
    new (&m_holdingButtons) decltype(m_holdingButtons)();
    new (&m_currentRobotAnimation) gd::string("run");
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void PlayerObject::addToYVelocity(double yVelocity, int type) {
    this->setYVelocity(m_yVelocity + yVelocity, type);
}

bool PlayerObject::buttonDown(PlayerButton button) {
    return button == PlayerButton::Jump || m_jumpBuffered;
}

void PlayerObject::disableCustomGlowColor() {
    m_hasCustomGlowColor = false;
}

void PlayerObject::flashPlayer(float flashDuration, float flashDelay, cocos2d::ccColor3B mainColor, cocos2d::ccColor3B secondColor) {
    m_flashMainColor = mainColor;
    m_flashSecondColor = secondColor;
    this->setColor(m_flashMainColor);
    this->setSecondColor(m_flashSecondColor);
    m_flashTime = m_totalTime;
    m_flashDuration = flashDuration;
    m_flashDelay = flashDelay;
}

int PlayerObject::flipMod() {
    return m_isUpsideDown ? -1 : 1;
}

void PlayerObject::gameEventTriggered(int gameEvent, int material) {
    if (this->m_gameLayer) {
        this->m_gameLayer->gameEventTriggered(static_cast<GJGameEvent>(gameEvent), material, static_cast<int>(this->m_uniqueID));
    }
}

float PlayerObject::getModifiedSlopeYVel() {
    auto diff = m_totalTime - m_slopeStartTime;
    if (diff > 0.1) {
        if (diff * 10.0 > 0.4) return m_slopeVelocity * diff;
        else return m_slopeVelocity * .4f;
    }
    else return m_slopeVelocity * 1.f;
}

void PlayerObject::gravityDown() {
    m_gravity -= .001;
    this->logValues();
}

void PlayerObject::gravityUp() {
    m_gravity += .001;
    this->logValues();
}

bool PlayerObject::handleRotatedObjectCollision(float dt, GameObject* object, cocos2d::CCRect rect, bool skipCheck) {
    return this->handleRotatedCollisionInternal(dt, object, rect, skipCheck, false, false);
}

void PlayerObject::handleRotatedSlopeCollision(float dt, GameObject* object, bool skipPre) {
    this->handleRotatedCollisionInternal(dt, object, { 0.f, 0.f, 0.f, 0.f }, false, skipPre, true);
}

bool PlayerObject::isInNormalMode() {
    return !this->isFlying() && !m_isBall && !m_isRobot && !m_isSpider;
}

bool PlayerObject::isSafeMode(float changeTime) {
    return m_gameModeChangedTime != 0.0 && m_totalTime - m_gameModeChangedTime < changeTime;
}

bool PlayerObject::isSafeSpiderFlip(float flipTime) {
    return m_lastSpiderFlipTime != 0.0 && m_totalTime - m_lastSpiderFlipTime < flipTime;
}

void PlayerObject::logValues() {}

bool PlayerObject::playerIsFalling(float yVelocity) {
    return m_isUpsideDown ? -yVelocity < m_yVelocity : yVelocity > m_yVelocity;
}

bool PlayerObject::playerIsMovingUp() {
    return m_isUpsideDown ? m_yVelocity < 0.0 : m_yVelocity > 0.0;
}

void PlayerObject::pushPlayer(float yVelocity) {
    this->addToYVelocity(yVelocity, 68);
}

void PlayerObject::resetCollisionValues() {
    m_collidedTopMinY = 0.0;
    m_collidedBottomMaxY = 0.0;
    m_collidedLeftMaxX = 0.0;
    m_collidedRightMinX = 0.0;
}

int PlayerObject::reverseMod() {
    return (m_isGoingLeft ? -1 : 1);
}

void PlayerObject::rotatePreSlopeObjects() {
    for (auto& pair : m_potentialSlopeMap) {
        this->rotateGameplayObject(pair.second);
    }
}

void PlayerObject::runNormalRotation() {
    this->runNormalRotation(false, 1.0f);
}

void PlayerObject::spawnCircle2() {
    if (GameManager::sharedState()->m_performanceMode) return;
    auto circleWave = CCCircleWave::create(5.f, 50.f, .3f, false);
    circleWave->m_color = m_playerColor1;
    circleWave->setPosition(this->getPosition());
    m_parentLayer->addChild(circleWave, 0);
}

void PlayerObject::specialGroundHit() {
    this->setYVelocity(this->flipMod() * -5, 47);
    if (!m_isBall && !this->isFlying()) this->stopRotation(false, 21);
    m_maybeSpriteRelated = true;
}

void PlayerObject::speedDown() {
    m_speedMultiplier -= .005;
    this->logValues();
}

void PlayerObject::speedUp() {
    m_speedMultiplier += .005;
    this->logValues();
}

void PlayerObject::storeCollision(PlayerCollisionDirection direction, int id) {
    switch (direction) {
        case PlayerCollisionDirection::Top: {
            if (m_lastCollisionTop != id) {
                m_lastCollisionTop = id;
                if (m_collisionLogTop) m_collisionLogTop->setObject(m_maybeLastGroundObject, id);
            }
            break;
        }
        case PlayerCollisionDirection::Bottom: {
            if (m_lastCollisionBottom != id) {
                m_lastCollisionBottom = id;
                if (m_collisionLogBottom) m_collisionLogBottom->setObject(m_maybeLastGroundObject, id);
            }
            break;
        }
        case PlayerCollisionDirection::Left: {
            if (m_lastCollisionLeft != id) {
                m_lastCollisionLeft = id;
                if (m_collisionLogLeft) m_collisionLogLeft->setObject(m_maybeLastGroundObject, id);
            }
            break;
        }
        case PlayerCollisionDirection::Right: {
            if (m_lastCollisionRight != id) {
                m_lastCollisionRight = id;
                if (m_collisionLogRight) m_collisionLogRight->setObject(m_maybeLastGroundObject, id);
            }
            break;
        }
    }
}

void PlayerObject::unrotatePreSlopeObjects() {
    for (auto& pair : m_potentialSlopeMap) {
        this->unrotateGameplayObject(pair.second);
    }
}

void PlayerObject::updateJumpVariables() {
    m_stateJumpBuffered = m_jumpBuffered;
    m_stateRingJump2 = m_stateRingJump;
    m_touchedRing = false;
    m_touchedCustomRing = false;
    m_touchedGravityPortal = false;
    m_maybeTouchedBreakableBlock = false;
}

void PlayerObject::updateLastGroundObject(GameObject* object) {
    if (!object) return;
    m_lastGroundObject = object;
    if (m_isDontBoostY) m_stateBoostX = 2;
    if (m_isDontBoostX) m_stateBoostY = 2;
}

void PlayerObject::updatePlayerForce(cocos2d::CCPoint velocity, bool additive) {
    if (additive) {
        m_yVelocity += velocity.y;
        if (m_isPlatformer) {
            m_platformerXVelocity += velocity.x;
            m_affectedByForces = true;
        }
    }
    else {
        m_yVelocity = velocity.y;
        if (m_isPlatformer) {
            m_platformerXVelocity = velocity.x;
            m_affectedByForces = true;
        }
    }
}

void PlayerObject::updateSlopeYVelocity(float yVelocity) {}

void PlayerObject::updateStreaks(float dt) {
    if (m_shipStreak) m_shipStreak->update(dt);
}

bool PlayerObject::usingWallLimitedMode() {
    return this->isFlying() || m_isBall || m_isSpider;
}

void PlayerObject::yStartDown() {
    m_yStart -= .01;
    this->logValues();
}

void PlayerObject::yStartUp() {
    m_yStart += .01;
    this->logValues();
}
#endif

#if defined(GEODE_IS_WINDOWS)
#include <sys/types.h>
#include <sys/timeb.h>
void PlayerObject::addToTouchedRings(RingObject* object) {
    if (!m_touchingRings->containsObject(object)) {
        m_touchingRings->addObject(object);
    }
    m_touchedRings.insert(object->m_uniqueID);
}

bool PlayerObject::canStickToGround() {
    return (!m_isShip && !m_isDart) || !m_stateRingJump;
}

bool PlayerObject::collidedWithObject(float dt, GameObject* object) {
    return this->collidedWithObject(dt, object, { 0.f, 0.f, 0.f, 0.f }, false);
}

void PlayerObject::collidedWithSlope(float dt, GameObject* object, bool skipPre) {
    if (m_isSideways) {
        this->handleRotatedSlopeCollision(dt, object, skipPre);
    } else {
        this->collidedWithSlopeInternal(dt, object, skipPre);
    }
}

void PlayerObject::deactivateParticle() {
    if (m_hasGroundParticles) m_playerGroundParticles->stopSystem();
    m_hasGroundParticles = false;
}

void PlayerObject::deactivateStreak(bool stop) {
    if (!m_alwaysShowStreak || stop) m_regularTrail->stopStroke();
    if (m_fadeOutStreak) {
        m_fadeOutStreak = false;
        this->fadeOutStreak2(m_playEffects ? .2f : .6f);
    }
}

bool PlayerObject::destroyFromHitHead() {
    return !this->isFlying() && !m_isBall && !m_isSpider && m_stateHitHead < 1;
}

void PlayerObject::enableCustomGlowColor(cocos2d::ccColor3B const& color) {
    m_hasCustomGlowColor = true;
    m_glowColor = color;
}

GameObjectType PlayerObject::getActiveMode() {
    if (this->isFlying()) return GameObjectType::ShipPortal;
    else if (m_isBall) return GameObjectType::BallPortal;
    else if (m_isSpider) return GameObjectType::SpiderPortal;
    else return GameObjectType::CubePortal;
}

double PlayerObject::getCurrentXVelocity() {
    return m_isPlatformer ? m_platformerXVelocity : m_playerSpeed * m_speedMultiplier;
}

float PlayerObject::getOldPosition(float dt) {
    if (dt <= 0.f) return m_obPosition.y;
    auto index = m_followRelated % 200 - std::clamp<int>(dt / .01f, 0, 199);
    return m_playerFollowFloats[index + (index < 0 ? 200 : 0)];
}

cocos2d::ccColor3B PlayerObject::getSecondColor() {
    return m_iconSpriteSecondary->getColor();
}

double PlayerObject::getYVelocity() {
    return m_yVelocity;
}

void PlayerObject::handlePlayerCommand(int command) {
    if (command == 543) {
        m_isAccelerating = false;
        m_affectedByForces = false;
    }
}

void PlayerObject::hardFlipGravity() {
    this->flipGravity(!m_isUpsideDown, true);
    this->setYVelocity(this->flipMod() * -2, 42);
}

bool PlayerObject::isBoostValid(float yVelocity) {
    if (m_isUpsideDown) {
        if (!m_isCurrentSlopeTop && m_slopeFlipGravityRelated) return yVelocity > m_yVelocity;
        else return yVelocity < m_yVelocity;
    }
    else {
        if (!m_isCurrentSlopeTop || !m_slopeFlipGravityRelated) return yVelocity > m_yVelocity;
        else return yVelocity < m_yVelocity;
    }
}

bool PlayerObject::isFlying() {
    return m_isShip || m_isBird || m_isDart || m_isSwing;
}

bool PlayerObject::isInBasicMode() {
    return !this->isFlying() && !m_isBall && !m_isSpider;
}

bool PlayerObject::isSafeFlip(float flipTime) {
    return m_lastFlipTime != 0.0 && m_totalTime - m_lastFlipTime < flipTime;
}

bool PlayerObject::isSafeHeadTest() {
    return this->isSafeFlip(0.2f) || this->isSafeMode(0.2f) || m_stateHitHead > 0;
}

void PlayerObject::limitDashRotation(float& rotation) {
    float offset;
    if (m_isSideways) {
        if (m_isGoingLeft) offset = 90.f;
        else offset = -90.f;
        rotation += offset;
        if (rotation > 180.f) rotation -= 360.f;
        else if (rotation < -180.f) rotation += 360.f;
    }
    else {
        if (m_isGoingLeft) {
            offset = 180.f;
            rotation += offset;
            if (rotation > 180.f) rotation -= 360.f;
            else if (rotation < -180.f) rotation += 360.f;
        }
        else offset = 0.f;
    }
    if (std::abs(rotation) > 90.f) {
        if (rotation > 0.f) rotation += 180.f;
        else rotation -= 180.f;
        if (rotation > 180.f) rotation -= 360.f;
        else if (rotation < -180.f) rotation += 360.f;
    }
    if (rotation > 70.f || rotation < -70.f) {
        if (rotation > 0.f) {
            if (rotation <= 70.f || rotation >= 180.f) rotation = -70.f;
        }
        else if (rotation < 70.f || rotation > -180.f) {
            rotation = -70.f;
        }
        else {
            rotation = 70.f;
        }
    }
    if (offset != 0.f) {
        rotation -= offset;
        if (rotation > 180.f) rotation -= 360.f;
        else if (rotation < -180.f) rotation += 360.f;
    }
}

void PlayerObject::modeDidChange() {
    this->updatePlayerArt();
    this->updateDashArt();
}

void PlayerObject::performSlideCheck() {
    if (m_currentSlope2 && (m_isOnSlope || m_wasOnSlope) && !m_maybeUpsideDownSlope && !m_currentSlope2->m_isGripSlope && std::abs(m_slopeAngle * (180.f / M_PI)) > 40.f) {
        auto movingLeft = m_platformerMovingLeft;
        auto movingRight = m_platformerMovingRight;
        if (m_slopeSlidingMaybeRotated) {
            m_platformerMovingLeft = !m_isUpsideDown;
            m_platformerMovingRight = m_isUpsideDown;
        }
        else {
            m_platformerMovingLeft = m_isUpsideDown;
            m_platformerMovingRight = !m_isUpsideDown;
        }
        if (m_platformerMovingLeft != movingLeft || m_platformerMovingRight != movingRight) {
            m_changedDirectionsTime = m_totalTime;
        }
        m_maybeChangedDirectionAngle = std::abs(m_slopeAngle * (180.f / M_PI));
        m_maybeGoingCorrectSlopeDirection = true;
    }
    else {
        m_platformerMovingLeft = false;
        m_platformerMovingRight = false;
    }
}

void PlayerObject::playBurstEffect() {
    if (!this->levelFlipping() && !m_isHidden) {
        m_ufoClickParticles->resumeSystem();
        this->stopActionByTag(7);
        auto action = cocos2d::CCSequence::create(
            cocos2d::CCDelayTime::create(.12f),
            cocos2d::CCCallFunc::create(this, callfunc_selector(PlayerObject::stopBurstEffect)),
            nullptr
        );
        action->setTag(7);
        this->runAction(action);
    }
}

void PlayerObject::playerTeleported() {
    m_isOnGround2 = false;
    m_lastGroundedPos = cocos2d::CCPoint { 0.f, 0.f };
    this->placeStreakPoint();
}

void PlayerObject::playingEndEffect() {
    if (m_isSpider) m_spiderSprite->tweenToAnimation("fall_loop", .4f);
}

void PlayerObject::preCollision() {
    m_wasTeleported = false;
    m_ringJumpRelated = false;
    m_collidedTopMinY = 0.0;
    m_collidedBottomMaxY = 0.0;
    m_collidedLeftMaxX = 0.0;
    m_collidedRightMinX = 0.0;
    m_wasOnSlope = m_isOnSlope;
    m_isOnSlope = false;
    m_isOnGround4 = m_isOnGround2;
    if (m_isOnGround2 && !m_platformerMovingLeft && !m_platformerMovingRight && m_maybeSlidingTime > 0) {
        m_maybeSlidingTime = 0;
        m_maybeSlidingStartTime = m_totalTime;
    }
    if (!m_unk669) m_unk669 = true;
    else m_currentPotentialSlope = nullptr;
    m_potentialSlopeMap.clear();
    if (auto slope = m_currentPotentialSlope) {
        m_potentialSlopeMap[slope->m_uniqueID] = slope;
    }
    if (auto slope = m_currentSlope) {
        m_potentialSlopeMap[slope->m_uniqueID] = slope;
    }
}

void PlayerObject::pushDown() {
    this->setYVelocity(0.0, 46);
    m_isOnGround2 = false;
    m_isOnGround = false;
}

void PlayerObject::redirectDash(float rotation) {
    if (!m_isDashing) return;
    cocos2d::CCPoint dashPos = { (float)m_dashX, (float)m_dashY };
    auto direction = GJBaseGameLayer::convertToClosestDirection(rotation * (M_PI / 180.f) - atan2f(dashPos.y, dashPos.x), M_PI);
    if (direction != 0.f) {
        auto cosDir = cosf(direction);
        auto sinDir = sinf(direction);
        dashPos.x = dashPos.x * cosDir - dashPos.y * sinDir;
        dashPos.y = dashPos.x * sinDir + dashPos.y * cosDir;
    }
    auto angle = ((int)-(atan2f(dashPos.y, dashPos.x) * (180.f / M_PI)) + (m_isSideways ? 90 : 0)) % 360;
    m_dashAngle = -(angle + (angle < 0 ? 360 : 0));
    m_dashX = m_isSideways ? dashPos.y : dashPos.x;
    m_dashY = m_isSideways ? dashPos.x : dashPos.y;
    if (m_dashX < 0.0) this->doReversePlayer(!m_isSideways);
    else if (m_dashX > 0.0) this->doReversePlayer(m_isSideways);
    this->updateDashArt();
}

void PlayerObject::removeAllParticles() {
    for (int i = 0; i < m_particleSystems->count(); i++) {
        auto particle = static_cast<cocos2d::CCParticleSystem*>(m_particleSystems->objectAtIndex(i));
        particle->resetSystem();
        particle->stopSystem();
        particle->removeFromParentAndCleanup(true);
    }
}

void PlayerObject::removePlacedCheckpoint() {
    if (m_checkpointTimeout) {
        GameManager::sharedState()->m_playLayer->removeCheckpoint(false);
        m_checkpointTimeout = false;
    }
}

void PlayerObject::resetCollisionLog(bool full) {
    m_collisionLogTop->removeAllObjects();
    m_collisionLogBottom->removeAllObjects();
    m_collisionLogLeft->removeAllObjects();
    m_collisionLogRight->removeAllObjects();
    if (full) {
        m_unk50C = -1;
        m_unk510 = -1;
    }
    else {
        m_unk50C = m_lastCollisionBottom;
        m_unk510 = m_lastCollisionTop;
    }
    m_lastCollisionBottom = -1;
    m_lastCollisionTop = -1;
    m_lastCollisionLeft = -1;
    m_lastCollisionRight = -1;
}

void PlayerObject::resetStateVariables() {
    m_stateOnGround = 0;
    m_stateNoAutoJump = 0;
    m_stateDartSlide = 0;
    m_stateHitHead = 0;
    m_stateFlipGravity = 0;
    m_stateBoostX = 0;
    m_stateBoostY = 0;
    m_maybeStateForce2 = 0;
    m_stateScale = 0;
    m_stateForce = 0;
    m_stateForceVector = cocos2d::CCPoint { 0.f, 0.f };
    m_jumpPadRelated.clear();
}

void PlayerObject::rotateGameplayOnly(bool sideways) {
    m_isSideways = sideways;
    this->updatePlayerArt();
}

void PlayerObject::runRotateAction(bool ground, int type) {
    if (!m_isLocked && !m_isDashing) {
        this->stopRotation(ground, 22);
        if (m_isBall) this->runBallRotation(1.f);
        else this->runNormalRotation();
    }
}

void PlayerObject::spawnFromPlayer(PlayerObject* player, bool flip) {
    this->setVisible(true);
    this->setOpacity(255);
    this->copyAttributes(player);
    if (flip) {
        this->flipGravity(!player->m_isUpsideDown, true);
        this->setYVelocity(-player->getYVelocity(), 49);
    }
    else {
        this->flipGravity(player->m_isUpsideDown, true);
        this->setYVelocity(player->getYVelocity(), 49);
    }
    m_isOnGround = false;
    m_isOnGround2 = false;
    this->toggleVisibility(!player->m_isHidden);
    if (m_isDart) this->placeStreakPoint();
}

void PlayerObject::stopRotation(bool ground, int type) {
    m_isRotating = false;
    m_isBallRotating2 = false;
    m_isBallRotating = false;
    m_rotationSpeed = 0.f;
}

void PlayerObject::stopStreak2() {
    m_waveTrail->stopActionByTag(8);
    m_waveTrail->setOpacity(0);
    m_waveTrail->stopStroke();
}

bool PlayerObject::testForMoving(float dt, GameObject* object) {
    auto lastPosition = object->getLastPosition();
    auto realPosition = object->getRealPosition();
    if (realPosition.x == lastPosition.x) {
        if (realPosition.y == lastPosition.y) return false;
        if (m_isUpsideDown) {
            if (realPosition.y < lastPosition.y) return false;
        }
        else {
            if (realPosition.y > lastPosition.y) return false;
        }
    }
    auto objectRect = object->getObjectRect();
    objectRect.size.height += dt * 5.f;
    if (m_isUpsideDown) objectRect.origin.y -= dt * 5.f;
    if (this->getObjectRect().intersectsRect(objectRect)) {
        m_collidedObject = object;
        return true;
    }
    else {
        return false;
    }
}

void PlayerObject::togglePlatformerMode(bool val) {
    m_isPlatformer = val;
}

void PlayerObject::touchedObject(GameObject* object) {
    switch (object->m_objectID) {
        case 1755: {
            m_stateDartSlide = 2;
            break;
        }
        case 1813: {
            m_stateNoAutoJump = 2;
            break;
        }
        case 1829: {
            if (m_isDashing) {
                this->stopDashing();
                m_jumpBuffered = false;
            }
        }
        case 1859: {
            m_stateHitHead = 2;
            break;
        }
        case 2069: case 3845: {
            m_stateForce = 2;
            auto forceObject = static_cast<ForceBlockGameObject*>(object);
            auto forceID = forceObject->m_forceID;
            if (forceID > 0) {
                if (m_jumpPadRelated[forceID]) break;
                m_jumpPadRelated[forceID] = true;
            }
            m_stateForceVector = m_stateForceVector + forceObject->calculateForceToTarget(this);
            auto magnitude = sqrtf(m_stateForceVector.x * m_stateForceVector.x + m_stateForceVector.y * m_stateForceVector.y);
            if (magnitude > 9999.f) {
                m_stateForceVector = m_stateForceVector * (9999.f / magnitude);
            }
            break;
        }
        case 2866: {
            m_stateFlipGravity = 2;
            break;
        }
    }
}

void PlayerObject::updateCheckpointMode(bool enable) {
    m_quickCheckpointMode = enable;
}

void PlayerObject::updateCheckpointTest() {
    if (m_canPlaceCheckpoint) {
        this->tryPlaceCheckpoint();
        m_canPlaceCheckpoint = false;
    }
    if (this->isFlying() && m_uniqueID == 1) {
        if (m_onFlyCheckpointTries + 1 < 20) {
            m_onFlyCheckpointTries++;
        }
        else {
            m_onFlyCheckpointTries = 0;
            this->tryPlaceCheckpoint();
        }
    }
    if (m_checkpointTimeout) {
        __timeb64 current;
        _ftime64_s(&current);
        auto currentTime = ((current.time & 0xfffff) * 1000 + current.millitm) / 1000.0;
        if (currentTime - m_lastCheckpointTime > .1f) m_checkpointTimeout = false;
    }
}

void PlayerObject::updateCollideBottom(float y, GameObject* object) {
    auto id = object ? object->m_uniqueID : 0;
    if (m_collidedBottomMaxY == 0.0) {
        m_collidedBottomMaxY = y;
    }
    else {
        m_collidedBottomMaxY = m_isUpsideDown ? std::min<double>(m_collidedBottomMaxY, y) : std::max<double>(m_collidedBottomMaxY, y);
    }
    if (id != 0) this->storeCollision(PlayerCollisionDirection::Bottom, id);
}

void PlayerObject::updateCollideTop(float y, GameObject* object) {
    auto id = object ? object->m_uniqueID : 0;
    if (m_collidedTopMinY == 0.0) {
        m_collidedTopMinY = y;
    }
    else {
        m_collidedTopMinY = m_isUpsideDown ? std::max<double>(m_collidedTopMinY, y) : std::min<double>(m_collidedTopMinY, y);
    }
    if (id != 0) this->storeCollision(PlayerCollisionDirection::Top, id);
}

void PlayerObject::updateEffects(float param) {
    m_waveTrail->updateStroke(param);
}

void PlayerObject::updatePlayerRobotFrame(int frame) {
    this->createRobot(std::clamp(frame, 1, 68));
}

void PlayerObject::updatePlayerSpiderFrame(int frame) {
    this->createSpider(std::clamp(frame, 1, 30));
}

void PlayerObject::updateSpecial(float dt) {
    m_unk838 += dt;
    if (m_unk838 >= .01f) {
        m_followRelated++;
        m_unk838 -= .01f;
    }
    m_playerFollowFloats[m_followRelated % 200] = m_obPosition.y;
}

void PlayerObject::updateStateVariables() {
    m_stateNoAutoJump--;
    m_stateDartSlide--;
    m_stateFlipGravity--;
    m_stateHitHead--;
    m_stateOnGround--;
    m_stateBoostX--;
    m_stateBoostY--;
    m_maybeStateForce2--;
    m_stateScale--;
    m_stateForce--;
    m_stateForceVector = cocos2d::CCPoint { 0.f, 0.f };
    m_jumpPadRelated.clear();
}

void PlayerObject::updateStaticForce(float rotation, float staticForce, bool additive) {
    if (staticForce != 0.f || additive) {
        auto point = cocos2d::ccpForAngle(rotation * (M_PI / 180.f));
        auto factor = sqrtf(point.x * point.x + point.y * point.y);
        if (factor > 0.f) {
            point = point * (staticForce / factor);
            if (m_isSideways) std::swap(point.x, point.y);
            this->updatePlayerForce(point, additive);
        }
    }
    else {
        m_yVelocity = 0.0;
        if (m_isPlatformer) {
            m_platformerXVelocity = 0.0;
            m_affectedByForces = false;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
void PlayerObject::hitGroundNoJump(GameObject* object, bool notFlipped) {
    auto isOnGround = m_isOnGround;
    auto isOnGround2 = m_isOnGround2;
    auto lastLandTime = m_lastLandTime;
    this->hitGround(nullptr, notFlipped);
    m_isOnGround = isOnGround;
    m_isOnGround2 = isOnGround2;
    m_lastLandTime = lastLandTime;
}

bool PlayerObject::levelFlipping() {
    return m_playEffects && GameManager::sharedState()->m_playLayer->isFlipping();
}

void PlayerObject::updatePlayerScale() {
    m_actionManager->stopInternalAction(6);
    this->setScaleX(m_vehicleSize);
    this->setScaleY(m_vehicleSize);
}
#endif

