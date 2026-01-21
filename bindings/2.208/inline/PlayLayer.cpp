#include <Geode/Geode.hpp>

PlayLayer* PlayLayer::get() {
    return GameManager::get()->m_playLayer;
}

void PlayLayer::testTime() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void PlayLayer::addToGroupOld(GameObject* object) {
    for (int i = 0; i < object->m_groupCount; i++) {
        auto id = object->getGroupID(i);
        auto group = this->getGroup(id);
        if (!group->containsObject(object)) group->addObject(object);
        if (object->m_objectType == GameObjectType::Decoration) {
            auto optimizedGroup = this->getOptimizedGroup(id);
            if (!optimizedGroup->containsObject(object)) optimizedGroup->addObject(object);
        }
        else {
            auto staticGroup = this->getStaticGroup(id);
            if (!staticGroup->containsObject(object)) staticGroup->addObject(object);
        }
    }
}

CheckpointObject* PlayLayer::checkpointWithID(int id) {
    for (int i = 0; i < m_checkpointArray->count(); i++) {
        auto checkpoint = static_cast<CheckpointObject*>(m_checkpointArray->objectAtIndex(i));
        if (checkpoint->m_uniqueID == id) return checkpoint;
    }
    return nullptr;
}

void PlayLayer::colorObject(int id, cocos2d::ccColor3B color) {}

void PlayLayer::compareStateSnapshot() {}

int PlayLayer::getCurrentPercentInt() { // i love this
    return static_cast<int>(this->getCurrentPercent());
}

float PlayLayer::getRelativeMod(cocos2d::CCPoint position, float right, float left, float offset) {
    auto result = m_halfCameraWidth;
    auto xPos = position.x;
    if (xPos > result + m_gameState.m_cameraPosition2.x) {
        result = (result - (xPos - offset - m_gameState.m_cameraPosition2.x - result)) * right;
    }
    else {
        result = (result - (result + m_gameState.m_cameraPosition2.x - xPos - offset)) * left;
    }
    return std::clamp(result, 0.f, 1.f);
}

float PlayLayer::getRelativeModNew(cocos2d::CCPoint position, float mod, float offset, bool unused, bool isRight) {
    auto result = isRight ? (m_cameraWidth + m_gameState.m_cameraPosition2.x - position.x + offset) : (position.x - m_gameState.m_cameraPosition2.x - offset);
    return cocos2d::clampf(result / mod, 0.f, 1.f);
}

void PlayLayer::removeFromGroupOld(GameObject* object) {
    for (int i = 0; i < object->m_groupCount; i++) {
        this->getGroup(object->getGroupID(i))->removeObject(object);
    }
}

void PlayLayer::startRecording() {
    m_recordingStopped = false;
}

void PlayLayer::startRecordingDelayed() {
    auto action = cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(2.f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(PlayLayer::startRecording)),
        nullptr
    );
    action->setTag(31);
    this->runAction(action);
}

void PlayLayer::takeStateSnapshot() {}

void PlayLayer::tryStartRecord() {
    this->stopActionByTag(31);
    this->startRecording();
}

void PlayLayer::updateScreenRotation(int rotation, bool add, bool convert, float duration, int easingType, float easingRate, int uniqueID, int controlID) {
    float angle = add ? m_gameState.m_targetCameraAngle + rotation : rotation;
    if (convert) convertToClosestDirection(angle, 180.f);
    if (angle != m_gameState.m_targetCameraAngle) m_calculateTargetHeightOffset = true;
    GJBaseGameLayer::updateScreenRotation(angle, add, convert, duration, easingType, easingRate, uniqueID, controlID);
}

void PlayLayer::updateTimeWarp(EffectGameObject* object, float timeWarp) {
    this->updateTimeWarp(timeWarp);
}
#endif

#if defined(GEODE_IS_WINDOWS)
#include <sys/types.h>
#include <sys/timeb.h>
void PlayLayer::activateEndTrigger(int targetID, bool reverse, bool lockPlayerY) {}

void PlayLayer::checkSnapshot() {}

void PlayLayer::addCircle(CCCircleWave* cw) {
    m_circleWaveArray->addObject(cw);
}

bool PlayLayer::canPauseGame() {
    return !m_hasCompletedLevel && !m_levelEndAnimationStarted;
}

void PlayLayer::delayedFullReset() {
    if (m_isPlatformer) {
        m_started = false;
        m_platformerRestart = true;
    }
    this->runAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(.5f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(PlayLayer::fullReset)),
        nullptr
    ));
}

cocos2d::CCPoint PlayLayer::getEndPosition() {
    return !m_isPlatformer && m_endPortal && !m_platformerEndTrigger ? m_endPortal->getPosition() : m_endPosition;
}

CheckpointObject* PlayLayer::getLastCheckpoint() {
    if (m_checkpointArray->count() != 0) {
        return static_cast<CheckpointObject*>(m_checkpointArray->lastObject());
    }
    return nullptr;
}

double PlayLayer::getTempMilliTime() {
    __timeb64 current;
    _ftime64_s(&current);
    return ((current.time & 0xfffff) * 1000 + current.millitm) / 1000.0;
}

void PlayLayer::incrementJumps() {
    m_uncommittedJumps++;
    m_jumps++;
    m_level->m_jumps = m_level->m_jumps.value() + 1;
}

bool PlayLayer::isGameplayActive() {
    return !m_hasCompletedLevel && m_started && !m_player1->m_isDead;
}

void PlayLayer::loadActiveSaveObjects(gd::vector<SavedActiveObjectState>& activeObjects, gd::vector<SavedSpecialObjectState>& specialObjects) {
    for (auto& state : activeObjects) {
        auto object = static_cast<EnhancedGameObject*>(state.m_gameObject);
        object->m_activatedByPlayer1 = state.m_activatedByPlayer1;
        object->m_activatedByPlayer2 = state.m_activatedByPlayer2;
    }
    for (auto& state : specialObjects) {
        auto object = state.m_gameObject;
        if (object->m_classType == GameObjectClassType::Animated) {
            static_cast<AnimatedGameObject*>(object)->playAnimation(state.m_animationID);
        }
        else if (object->m_objectID == 1615) {
            static_cast<LabelGameObject*>(object)->m_updateLabel = true;
        }
    }
}

void PlayLayer::loadDynamicSaveObjects(gd::vector<SavedObjectStateRef>& dynamicObjects) {
    for (auto& state : dynamicObjects) {
        auto object = state.m_gameObject;
        object->m_positionX = state.m_positionX;
        object->m_positionY = state.m_positionY;
        object->m_rotationXOffset = state.m_rotationXOffset;
        object->m_rotationYOffset = state.m_rotationYOffset;
        object->addToCustomScaleX(state.m_addToCustomScaleX);
        object->addToCustomScaleY(state.m_addToCustomScaleY);
        object->setRRotation(0.f);
        object->setRScale(1.f);
        object->m_unk4C4 = -1;
        object->m_unk4CC = -1;
        object->setPosition(object->getRealPosition());
        object->setLastPosition(object->getRealPosition());
        object->setObjectRectDirty(true);
        object->m_isDirty = true;
        object->setOrientedRectDirty(true);
        this->updateObjectSection(object);
    }
}

CheckpointObject* PlayLayer::loadLastCheckpoint() {
    if (m_checkpointArray->count() != 0) {
        auto checkpoint = static_cast<CheckpointObject*>(m_checkpointArray->lastObject());
        this->loadFromCheckpoint(checkpoint);
        return checkpoint;
    }
    return nullptr;
}

void PlayLayer::queueCheckpoint() {
    m_tryPlaceCheckpoint = true;
}

void PlayLayer::scanActiveSaveObjects() {
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_objects)) {
        auto object = static_cast<GameObject*>(obj);
        if (object->canAllowMultiActivate()) {
            if (!object->canMultiActivate(m_isPlatformer)) {
                m_activeSaveObjects1.push_back(object);
            }
        }
        else if (object->m_classType == GameObjectClassType::Animated) {
            if (static_cast<AnimatedGameObject*>(object)->m_notGrounded) m_activeSaveObjects2.push_back(object);
        }
    }
}

bool PlayLayer::shouldBlend(int colorID) {
    return m_effectManager->shouldBlend(colorID);
}

void PlayLayer::stopRecording() {
    this->stopActionByTag(31);
}

void PlayLayer::toggleBGEffectVisibility(bool enabled) {
    m_bgEffectDisabled = !enabled;
    if (!enabled) m_glitterParticles->stopSystem();
    else if (m_glitterEnabled) m_glitterParticles->resumeSystem();
}

void PlayLayer::toggleDebugDraw(bool enabled) {
    m_isDebugDrawEnabled = enabled;
    m_debugDrawNode->clear();
    m_debugDrawNode->setVisible(m_isDebugDrawEnabled && m_isPracticeMode);
}

void PlayLayer::toggleGhostEffect(int type) {
    m_player1->toggleGhostEffect((GhostType)type);
    if (m_gameState.m_isDualMode) m_player2->toggleGhostEffect((GhostType)type);
}

void PlayLayer::toggleIgnoreDamage(bool value) {
    this->m_ignoreDamage = value;
    if (value) this->m_isIgnoreDamageEnabled = true;
    this->m_player1->m_maybeCanRunIntoBlocks = value;
    this->m_player2->m_maybeCanRunIntoBlocks = value;
    this->updateTestModeLabel();
}

void PlayLayer::updateEffectPositions() {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    m_glitterParticles->setPosition(winSize * .5f / m_gameState.m_cameraZoom + m_gameState.m_cameraPosition);
    for (int i = 0; i < m_circleWaveArray->count(); i++) {
        auto wave = static_cast<CCCircleWave*>(m_circleWaveArray->objectAtIndex(i));
        if (wave->m_target) wave->setPosition(wave->m_target->getPosition());
    }
}
#endif

#if defined(GEODE_IS_MAC) || defined(GEODE_IS_IOS)
PlayLayer* PlayLayer::create(GJGameLevel* level, bool useReplay, bool dontCreateObjects) {
    auto ret = new PlayLayer();
    if (ret->init(level, useReplay, dontCreateObjects)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)

void PlayLayer::commitJumps() {
    GameStatsManager::sharedState()->incrementStat("1", m_uncommittedJumps);
    m_uncommittedJumps = 0;
}

void PlayLayer::screenFlipObject(GameObject* object) {
    auto factor = m_gameState.m_levelFlipping;
    if (m_cameraFlip == -1.f) factor = 1.f - factor;
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto objectPos = object->getPosition();
    auto xDiff = objectPos.x - m_gameState.m_cameraPosition.x;
    object->setPosition(objectPos + cocos2d::CCPoint { (winSize.width / m_gameState.m_cameraZoom - (xDiff + xDiff)) * factor, 0.f });
    auto angle = std::abs(object->getRotation());
    auto rotated = angle == 90.f || angle == 270.f;
    auto flip = m_cameraFlip;
    auto flipping = m_gameState.m_levelFlipping;
    if ((flip != 1.f && flipping > .5f) || (flip == 1.f && flipping < .5f)) {
        if (!m_gameState.m_unkBool11) return;
        auto sign = flip == 1.f ? 1 : -1;
        if (rotated) object->setFlipY(object->m_startFlipY * sign != 0);
        else object->setFlipX(object->m_startFlipX * sign != 0);
        if ((int)angle % 90 != 0) object->setRotation(object->m_startRotationX * sign);
    }
    else {
        if (rotated) object->setFlipY(!object->m_startFlipY);
        else object->setFlipX(!object->m_startFlipX);
        if ((int)angle % 90 != 0) object->setRotation(-object->m_startRotationX);
    }
}

void PlayLayer::updateInvisibleBlock(GameObject* object, float rightFadeBound, float leftFadeBound, float rightFadeWidth, float leftFadeWidth, cocos2d::ccColor3B const& lbgColor) {
    auto realPosition = object->getRealPosition();
    if (realPosition.x > m_cameraUnzoomedX) realPosition.x -= object->m_fadeMargin;
    else realPosition.x += object->m_fadeMargin;
    auto relativeMod = this->getRelativeMod(realPosition, .02f, 1.f / 70.f, .0f) * 255.f;
    auto cameraX = m_gameState.m_cameraPosition2.x;
    float factor;
    if (realPosition.x > cameraX + rightFadeBound) {
        factor = realPosition.x - cameraX - rightFadeBound;
    }
    else {
        factor = factor + leftFadeBound - realPosition.x;
        rightFadeWidth = leftFadeWidth;
    }
    rightFadeWidth = std::max(rightFadeWidth, 1.f);
    factor = std::clamp(factor / rightFadeWidth, 0.f, 1.f);
    object->setOpacity(std::min(relativeMod, (factor * .95f + .05f) * 255.f));
    object->setGlowOpacity(std::min(relativeMod, (factor * .85f + .15f) * 255.f));
    auto opacity = object->getOpacity() / 255.f;
    if (opacity > 0.8f) {
        object->setGlowColor(GJEffectManager::getMixedColor(m_lightBGColor, lbgColor, (1.f - (opacity - .8f) / .2f) * .3f + .7f));
    }
    else {
        object->setGlowColor(m_lightBGColor);
    }
}
#endif

