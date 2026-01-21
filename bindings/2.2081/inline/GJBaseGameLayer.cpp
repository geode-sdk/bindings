#include <Geode/Geode.hpp>

GJBaseGameLayer* GJBaseGameLayer::get() {
    return GameManager::get()->m_gameLayer;
}

void GJBaseGameLayer::postUpdate(float dt) {}

void GJBaseGameLayer::checkForEnd() {}

void GJBaseGameLayer::testTime() {}

void GJBaseGameLayer::updateVerifyDamage() {}

void GJBaseGameLayer::updateAttemptTime(float attemptTime) {}

void GJBaseGameLayer::updateVisibility(float dt) {}

void GJBaseGameLayer::playerTookDamage(PlayerObject* player) {}

void GJBaseGameLayer::addToSpeedObjects(EffectGameObject* object) {}

void GJBaseGameLayer::activateEndTrigger(int targetID, bool reverse, bool lockPlayerY) {}

void GJBaseGameLayer::activatePlatformerEndTrigger(EndTriggerGameObject* object, gd::vector<int> const& remapKeys) {}

void GJBaseGameLayer::toggleGlitter(bool visible) {}

void GJBaseGameLayer::destroyPlayer(PlayerObject* player, GameObject* object) {}

void GJBaseGameLayer::updateDisabledObjectsLastPos(cocos2d::CCArray* objects) {}

float GJBaseGameLayer::timeForPos(cocos2d::CCPoint position, int order, int channel, bool songTriggers, int id) { return 0.f; }

cocos2d::CCPoint GJBaseGameLayer::posForTime(float time) { return { 0.f, 0.f }; }

void GJBaseGameLayer::resetSPTriggered() {}

void GJBaseGameLayer::didRotateGameplay() {}

void GJBaseGameLayer::playGravityEffect(bool flip) {}

void GJBaseGameLayer::manualUpdateObjectColors(GameObject* object) {}

void GJBaseGameLayer::updateTimeLabel(int seconds, int centiseconds, bool decimals) {}

void GJBaseGameLayer::checkSnapshot() {}

void GJBaseGameLayer::toggleProgressbar() {}

void GJBaseGameLayer::toggleInfoLabel() {}

void GJBaseGameLayer::removeAllCheckpoints() {}

void GJBaseGameLayer::toggleMusicInPractice() {}

void GJBaseGameLayer::addToObjectsToShow(GameObject* object) {
    if (m_activeObjectsCount < m_activeObjectsIndex) {
        m_activeObjects[m_activeObjectsIndex] = object;
    }
    else {
        m_activeObjects.push_back(object);
        m_activeObjectsIndex++;
    }
    m_activeObjectsCount++;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GJBaseGameLayer::animateInGroundNew(bool unk1, float unk2, bool unk3) {}

void GJBaseGameLayer::animatePortalY(float fromY, float toY, float duration, float easingRate) {
    m_gameState.m_portalY = fromY;
    if (fromY != toY) {
        m_gameState.tweenValue(fromY, toY, 9, duration, 1, easingRate, -1, -1);
        if (m_gameState.m_cameraZoom != m_gameState.m_targetCameraZoom) {
            m_gameState.m_unkBool6 = true;
        }
    }
}

int GJBaseGameLayer::atlasValue(int atlas) {
    if (atlas < 30) return 0;
    return (int)std::min(atlas * 1.1f, 9999.f);
}

int GJBaseGameLayer::buttonIDToButton(int id) {
    switch (id) {
        case 2: case 7: return 2;
        case 3: case 8: return 3;
        case 4: case 9: return 4;
        case 5: case 10: return 5;
        default: return 1;
    }
}

void GJBaseGameLayer::cameraMoveX(float value, float duration, float rate, bool unused) {
    float x = m_gameState.m_cameraPosition.x;
    m_gameState.m_unkBool4 = true;
    m_gameState.tweenValue(x, value, 1, duration, 1, rate, -1, -1);
}

void GJBaseGameLayer::cameraMoveY(float value, float duration, float rate, bool force) {
    if (!m_gameState.m_unkBool5 || m_gameState.m_unkInt13 != value || force) {
        float y = m_gameState.m_cameraPosition.y;
        m_gameState.m_unkBool5 = true;
        m_gameState.m_unkInt13 = value;
        m_gameState.tweenValue(y, value, 2, duration, 1, rate, -1, -1);
    }
}

bool GJBaseGameLayer::canTouchObject(GameObject* object) {
    if (m_gameState.m_currentChannel == 0 || object->m_classType != GameObjectClassType::Effect) return true;
    auto effectObject = static_cast<EffectGameObject*>(object);
    return effectObject->m_channelValue == 0 || effectObject->m_channelValue == m_gameState.m_currentChannel;
}

void GJBaseGameLayer::clearPickedUpItems() {
    m_collectedItems->removeAllObjects();
}

void GJBaseGameLayer::controlDynamicMoveCommand(EffectGameObject* object, int controlID, GJActionCommand command) {
    this->controlDynamicCommand(object, controlID, m_gameState.m_dynamicMoveActions, command);
}

void GJBaseGameLayer::controlDynamicRotateCommand(EffectGameObject* object, int controlID, GJActionCommand command) {
    this->controlDynamicCommand(object, controlID, m_gameState.m_dynamicRotateActions, command);
}

GameObject* GJBaseGameLayer::getCenterGroupObject(int groupID, int defaultID) {
    if (groupID < 1) groupID = defaultID;
    auto group = this->getGroup(groupID);
    if (group && group->count() == 1) return static_cast<GameObject*>(group->objectAtIndex(0));
    else return this->getGroupParent(groupID);
}

int GJBaseGameLayer::getEnterEasingKey(int easingType, float easingRate) {
    switch (easingType) {
        case 0: return -1;
        case 3: case 7: case 8: case 9: return -2;
        default: return easingType * 10000 + easingRate * 100.f;
    }
}

int GJBaseGameLayer::getPlayerButtonID(int button, bool player2) {
    if (button < 2 || button > 5) return player2 ? 6 : 1;
    return player2 ? button + 5 : button;
}

int GJBaseGameLayer::getPlayTimerFullSeconds() {
    return m_timePlayed;
}

float GJBaseGameLayer::getScaledGroundHeight(float height) {
    if (m_gameState.m_targetCameraZoom != 1.f) return floorf((height / m_gameState.m_targetCameraZoom) / 30.f) * 30.f;
    return height;
}

int GJBaseGameLayer::getSpecialKey(int groupID, bool ignoreGroupParent, bool ignoreLinkedObjects) {
    return groupID + (int)ignoreGroupParent * 1000000 + (int)ignoreLinkedObjects * 10000000 + 10000000;
}

cocos2d::CCArray* GJBaseGameLayer::getTargetGroup(int index, int uniqueID) {
    return static_cast<cocos2d::CCArray*>(static_cast<cocos2d::CCDictionary*>(m_targetGroupsArray->objectAtIndex(index + 1))->objectForKey(uniqueID));
}

cocos2d::CCArray* GJBaseGameLayer::getTargetGroupOrigin(int index, int uniqueID) {
    return static_cast<cocos2d::CCArray*>(static_cast<cocos2d::CCDictionary*>(m_targetGroupsArray->objectAtIndex(index + 2))->objectForKey(uniqueID));
}

bool GJBaseGameLayer::isPlayer2Button(int button) {
    return button > 5;
}

void GJBaseGameLayer::moveCameraToPos(cocos2d::CCPoint pos) {
    this->cameraMoveX(pos.x, 1.2f, 1.8f, false);
    this->cameraMoveY(pos.y, 1.2f, 1.8f, false);
}

double GJBaseGameLayer::performMathOperation(double operand1, double operand2, int operation) {
    switch (operation) {
        case 0:
            return operand1 + operand2;
        case 1:
            return operand1 - operand2;
        case 2:
            return operand1 * operand2;
        case 3:
            return operand2 != 0.0 ? operand1 / operand2 : 0.0;
        default:
            return 0.0;
    }
}

double GJBaseGameLayer::performMathRounding(double value, int type) {
    switch (type) {
        case 1: return round(value);
        case 2: return floor(value);
        case 3: return ceil(value);
        default: return value;
    }
}

void GJBaseGameLayer::playerTouchedObject(PlayerObject* player, GameObject* object) {
    m_gameState.m_unkMapPairIntIntInt[{ object->m_uniqueID, player->m_uniqueID }] = m_gameState.m_commandIndex;
}

bool GJBaseGameLayer::playerWasTouchingObject(PlayerObject* player, GameObject* object) {
    return m_gameState.m_unkMapPairIntIntInt.find({ object->m_uniqueID, player->m_uniqueID }) != m_gameState.m_unkMapPairIntIntInt.end();
}

void GJBaseGameLayer::playFlashEffect(float duration, int flashes, float unknown) {
    m_unk31f8 = unknown;
    m_flashNode->setVisible(true);
    auto action = flashes > 1 ? cocos2d::CCSequence::create(
        cocos2d::CCBlink::create(duration, flashes - 1), cocos2d::CCHide::create(), nullptr
    ) : cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(duration), cocos2d::CCHide::create(), nullptr
    );
    action->setTag(15);
    m_flashNode->runAction(action);
}

void GJBaseGameLayer::removeCustomEnterEffects(int id, bool enter) {
    if (id > 100) return;
    if (enter) m_gameState.m_enterEffectInstanceVectors.erase(id);
    else m_gameState.m_exitEffectInstanceVectors.erase(id);
}

void GJBaseGameLayer::resetSongTriggerValues() {
    m_gameState.m_proximityVolumeRelated.clear();
    m_gameState.m_levelTime = 0.0;
}

void GJBaseGameLayer::restoreDefaultGameplayOffsetX() {
    this->updateGameplayOffsetX(75, false);
}

void GJBaseGameLayer::restoreDefaultGameplayOffsetY() {
    this->updateGameplayOffsetY(75, false);
}

void GJBaseGameLayer::stopAllGroundActions() {
    m_groundLayer->deactivateGround();
    m_groundLayer2->deactivateGround();
}

void GJBaseGameLayer::toggleLockPlayer(bool disable, bool player2) {
    auto player = player2 ? m_player2 : m_player1;
    if (disable) player->disablePlayerControls();
    else player->enablePlayerControls();
}

void GJBaseGameLayer::togglePlayerVisibility(bool visible, bool player1) {
    if (player1)
        this->m_player1->toggleVisibility(visible);
    else
        this->m_player2->toggleVisibility(visible);
}

GameObject* GJBaseGameLayer::tryGetGroupParent(int groupID) {
    if (auto groupParent = static_cast<GameObject*>(m_parentGroupsDict->objectForKey(groupID))) return groupParent;
    auto group = this->getGroup(groupID);
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(group)) {
        auto object = static_cast<GameObject*>(obj);
        if (object->m_hasGroupParent) return object;
    }
    return nullptr;
}

void GJBaseGameLayer::unlinkAllEvents() {
    m_gameState.m_unkMapPairGJGameEventIntVectorEventTriggerInstance.clear();
}

void GJBaseGameLayer::updateInternalCamOffsetX(float offsetX, float duration, float easingRate) {
    m_gameState.m_unkPoint27.x = offsetX;
    if (duration > 0.f) {
        m_gameState.tweenValue(m_gameState.m_unkPoint26.x, offsetX, 18, duration, 1, easingRate, -1, -1);
    }
    else {
        m_gameState.stopTweenAction(18);
        m_gameState.m_unkPoint26.x = m_gameState.m_unkPoint27.x;
    }
}

void GJBaseGameLayer::updateInternalCamOffsetY(float offsetY, float duration, float easingRate) {
    m_gameState.m_unkPoint27.y = offsetY;
    if (duration > 0.f) {
        m_gameState.tweenValue(m_gameState.m_unkPoint26.y, offsetY, 19, duration, 1, easingRate, -1, -1);
    }
    else {
        m_gameState.stopTweenAction(10);
        m_gameState.m_unkPoint26.y = m_gameState.m_unkPoint27.y;
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
void GJBaseGameLayer::toggleGroundVisibility(bool visible) {}

void GJBaseGameLayer::toggleMGVisibility(bool visible) {}

void GJBaseGameLayer::toggleHideAttempts(bool hide) {}

void GJBaseGameLayer::flipArt(bool flip) {}

void GJBaseGameLayer::activateCustomRing(RingObject* object) {
    if (object->m_isSpawnOnly) this->spawnGroup(object->m_targetGroupID, false, 0.0, {}, object->m_uniqueID, object->m_controlID);
    else this->toggleGroupTriggered(object->m_targetGroupID, object->m_activateGroup, {}, object->m_uniqueID, object->m_controlID);
}

void GJBaseGameLayer::activateObjectControlTrigger(ObjectControlGameObject* object) {}

void GJBaseGameLayer::activateResetTrigger(EffectGameObject* object) {
    auto group = this->getGroup(object->m_targetGroupID);
    if (group && group->count() != 0) {
        for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(group)) {
            auto gameObject = static_cast<GameObject*>(obj);
            if (gameObject->m_objectID == 2063) {
                m_effectManager->removeTriggeredID(gameObject->m_uniqueID, m_player1->m_uniqueID);
                m_effectManager->removeTriggeredID(gameObject->m_uniqueID, m_player2->m_uniqueID);
                gameObject->restoreObject();
            }
            else if (gameObject->getType() == GameObjectType::Collectible || gameObject->getType() == GameObjectType::Breakable) {
                m_effectManager->removeTriggeredID(gameObject->m_uniqueID, 0);
                gameObject->restoreObject();
            }
        }
    }
}

void GJBaseGameLayer::addObjectCounter(LabelGameObject* object) {
    auto id = object->m_itemID;
    if (object->m_shownSpecial < 0) id = object->m_shownSpecial;
    auto& objects = object->m_isTimeCounter ? m_timeLabelObjects[id] : m_labelObjects[id];
    objects.push_back(object);
}

void GJBaseGameLayer::addPickupTrigger(CountTriggerGameObject* object) {
    auto itemID = object->m_itemID;
    if (object->m_pickupTriggerMode == 1) {
        m_effectManager->updateCountForItem(itemID, m_effectManager->countForItem(itemID) * object->m_pickupTriggerMultiplier);
    }
    else if (object->m_pickupTriggerMode == 2) {
        if (object->m_pickupTriggerMultiplier != 0.f) {
            m_effectManager->updateCountForItem(itemID, m_effectManager->countForItem(itemID) / object->m_pickupTriggerMultiplier);
        }
    }
    else if (object->m_isOverride) {
        m_effectManager->updateCountForItem(itemID, object->m_pickupCount);
    }
    else {
        m_effectManager->addCountToItem(itemID, object->m_pickupCount);
    }
    this->updateCounters(itemID, m_effectManager->countForItem(itemID));
}

void GJBaseGameLayer::addPoints(int points) {
    m_gameState.m_unkBool32 = true;
    m_gameState.m_points += points;
}

void GJBaseGameLayer::addToGroupParents(GameObject* object) {
    if (object->m_hasGroupParentsString) {
        if (auto groupIDs = static_cast<cocos2d::CCArray*>(m_removedParentGroupIDs->objectForKey(object->m_uniqueID))) {
            object->m_hasGroupParentsString = false;
            for (int i = 0; i < groupIDs->count(); i++) {
                auto groupID = static_cast<cocos2d::CCInteger*>(groupIDs->objectAtIndex(i))->getValue();
                if (m_parentGroupsDict->objectForKey(groupID)) {
                    this->setGroupParent(object, groupID);
                }
            }
            m_removedParentGroupIDs->removeObjectForKey(object->m_uniqueID);
        }
    }
}

void GJBaseGameLayer::animateOutGroundNew(bool instant) {
    m_gameState.m_unkBool7 = false;
    if (m_gameState.m_unkBool1) {
        this->resetStaticCamera(false, true);
    }
    m_gameState.tweenValue(m_gameState.m_unkFloat9, 0.f, 25, m_gameState.m_isDualMode ? .32f : .4f, 1, 1.5f, -1, -1);
}

void GJBaseGameLayer::applyLevelSettings(GameObject* object) {
    object->m_canRotateFree = m_allowStaticRotate || object->canRotateFree();
    if (m_fixNegativeScale != object->m_isMirroredByScale) object->m_isObjectRectDirty = true;
    object->m_isMirroredByScale = m_fixNegativeScale;
}

void GJBaseGameLayer::applyShake(cocos2d::CCPoint& point) {
    if (m_gameState.m_unkUint64_1 < 0.0 || m_gameState.m_unkUint16 <= 0.f && m_gameState.m_unkUint16 < m_gameState.m_totalTime - m_gameState.m_unkUint64_1) {
        m_gameState.m_unkUint64_1 = m_gameState.m_totalTime;
        auto xFactor = 0.f;
        auto yFactor = 0.f;
        if (m_staticCameraShake) {
            xFactor = ((float)rand() / (float)RAND_MAX) > .5f ? 1.f : -1.f;
            yFactor = ((float)rand() / (float)RAND_MAX) > .5f ? 1.f : -1.f;
        }
        else {
            xFactor = ((float)rand() / (float)RAND_MAX) * 2.f - 1.f;
            yFactor = ((float)rand() / (float)RAND_MAX) * 2.f - 1.f;
        }
        m_gameState.m_unkPoint34.x = xFactor * m_gameState.m_unkUint15;
        m_gameState.m_unkPoint34.y = yFactor * m_gameState.m_unkUint15;
    }

    point.x += m_gameState.m_unkPoint34.x;
    point.y += m_gameState.m_unkPoint34.y;
}

void GJBaseGameLayer::asyncBGLoaded(int background) {
    this->createBackground(background);
    this->updateLevelColors();
}

void GJBaseGameLayer::asyncGLoaded(int ground) {
    this->createGroundLayer(ground, 0);
    this->updateLevelColors();
}

void GJBaseGameLayer::asyncMGLoaded(int middleground) {
    this->createMiddleground(middleground);
    this->updateLevelColors();
}

void GJBaseGameLayer::clearActivatedAudioTriggers() {
    m_gameState.m_songChannelStates.clear();
    m_gameState.m_songTriggerStateVectors.clear();
}

void GJBaseGameLayer::collectedObject(EffectGameObject* object) {
    m_effectManager->addCountToItem(object->m_itemID, object->m_subtractCount ? -1 : 1);
    this->updateCounters(object->m_itemID, m_effectManager->countForItem(object->m_itemID));
}

void GJBaseGameLayer::controlAdvancedFollowCommand(AdvancedFollowTriggerObject* object, int controlID, GJActionCommand command) {
    for (auto& inst : m_gameState.m_advanceFollowInstances) {
        if ((controlID == -1 && inst.m_gameObject == object) || inst.m_controlId == controlID) {
            switch (command) {
                case GJActionCommand::Stop:
                    inst.m_started = true;
                    inst.m_finished = false;
                    inst.m_doStart = false;
                    break;
                case GJActionCommand::Pause:
                    inst.m_finished = true;
                    inst.m_doStart = true;
                    break;
                case GJActionCommand::Resume:
                    inst.m_finished = false;
                    inst.m_doStart = false;
                    break;
            }
        }
    }
}

void GJBaseGameLayer::controlDynamicCommand(EffectGameObject* object, int controlID, gd::vector<DynamicObjectAction>& actions, GJActionCommand command) {
    for (auto& action : actions) {
        if ((controlID == -1 && action.m_gameObject1 == object) || action.m_controlID == controlID) {
            switch (command) {
                case GJActionCommand::Stop:
                    action.m_unkBool2 = true;
                    break;
                case GJActionCommand::Pause:
                    action.m_unkBool3 = true;
                    action.m_unkBool4 = true;
                    break;
                case GJActionCommand::Resume:
                    action.m_unkBool3 = false;
                    action.m_unkBool4 = false;
                    break;
            }
        }
    }
}

void GJBaseGameLayer::controlGradientTrigger(GradientTriggerObject* object, GJActionCommand command) {
    if (command == GJActionCommand::Resume) {
        this->triggerGradientCommand(object);
    }
    else {
        if (auto gradientLayer = static_cast<GJGradientLayer*>(m_gradientLayers->objectForKey(std::min(object->m_gradientID, 999)))) {
            gradientLayer->removeFromParentAndCleanup(false);
            gradientLayer->m_triggerObject = nullptr;
        }
    }
}

cocos2d::CCArray* GJBaseGameLayer::createNewKeyframeAnim() {
    auto group = cocos2d::CCArray::create();
    group->setTag(m_keyframeGroup);
    m_keyframeGroups->setObject(group, m_keyframeGroup++);
    return group;
}

void GJBaseGameLayer::enterDualMode(GameObject* object, bool unused) {
    if (!object) return;
    m_player1->m_lastPortalPos = object->getPosition();
    m_player1->m_lastActivatedPortal = object;
    m_gameState.m_lastActivatedPortal1 = object;
}

void GJBaseGameLayer::flipFinished() {
    m_player1->levelFlipFinished();
    if (m_gameState.m_isDualMode) m_player2->levelFlipFinished();
    m_gameState.m_unkBool11 = false;
    m_gameState.m_unkBool12 = false;
}

void GJBaseGameLayer::generateEnterEasingBuffers(EnterEffectObject* object) {
    object->m_easingInBuffer = this->generateEnterEasingBuffer((int)object->m_easingInType, object->m_easingInRate);
    object->m_easingOutBuffer = this->generateEnterEasingBuffer((int)object->m_easingOutType, object->m_easingOutRate);
}

void GJBaseGameLayer::generatePickupAnimRandVal(GameObject* object, float& randomValue1, float& randomValue2) {
    std::pair<int, int> key = { (int)object->getPosition().x, (int)object->getPosition().y };
    if (m_destroyObjectValues.count(key) != 0) {
        m_destroyObjectValues[key] = { ((float)rand() / (float)RAND_MAX) * 2.f - 1.f, (float)rand() / (float)RAND_MAX };
    }
    randomValue1 = m_destroyObjectValues[key].first;;
    randomValue2 = m_destroyObjectValues[key].second;
}

cocos2d::CCArray* GJBaseGameLayer::getActiveOrderSpawnObjects() {
    if (auto objects = static_cast<cocos2d::CCArray*>(m_spawnObjects->objectForKey(m_gameState.m_currentChannel))) return objects;
    return cocos2d::CCArray::create();
}

float GJBaseGameLayer::getBumpMod(PlayerObject* player, int type) {
    if (static_cast<GameObjectType>(type) == GameObjectType::PinkJumpPad) {
        if (player->m_isShip) return .35f;
        if (player->m_isBird) return .4f;
        if (player->m_isBall || player->m_isSpider) return .7f;
        return .65f;
    }
    if (static_cast<GameObjectType>(type) == GameObjectType::RedJumpPad) {
        if (player->m_isShip) return (player->m_vehicleSize < 1.f) ? .95f : .63f;
        if (player->m_isBird) return (player->m_vehicleSize < 1.f) ? .98f : .6f;
        return 1.25f;
    }
    return 1.f;
}

float GJBaseGameLayer::getCameraEdgeValue(int type) {
    switch (type - 1) {
        case 0: {
            if (auto mainObject = this->tryGetMainObject(m_gameState.m_cameraEdgeValue0)) {
                return mainObject->getRealPosition().x;
            }
            return 0.f;
        }
        case 1: {
            if (auto mainObject = this->tryGetMainObject(m_gameState.m_cameraEdgeValue1)) {
                return mainObject->getRealPosition().x;
            }
            return 0.f;
        }
        case 2: {
            if (auto mainObject = this->tryGetMainObject(m_gameState.m_cameraEdgeValue2)) {
                return mainObject->getRealPosition().y;
            }
            return 0.f;
        }
        case 3: {
            if (auto mainObject = this->tryGetMainObject(m_gameState.m_cameraEdgeValue3)) {
                return mainObject->getRealPosition().y;
            }
            return 0.f;
        }
        default: {
            return 0.f;
        }
    }
}

gd::string GJBaseGameLayer::getCapacityString() {
    fmt::memory_buffer buffer;
    auto first = true;
    auto index = 0;
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_batchNodes)) {
        auto capacity = static_cast<cocos2d::CCSpriteBatchNode*>(obj)->getUsedAtlasCapacity();
        if (capacity > 200) {
            if (!first) fmt::format_to(std::back_inserter(buffer), ",");
            fmt::format_to(std::back_inserter(buffer), "{},{}", capacity, index++);
            first = false;
        }
    }
    return fmt::to_string(buffer);
}

gd::vector<EnterEffectInstance>* GJBaseGameLayer::getCustomEnterEffects(int id, bool enter) {
    if (id > 100) return nullptr;
    return enter ? &m_gameState.m_enterEffectInstanceVectors[id] : &m_gameState.m_exitEffectInstanceVectors[id];
}

float GJBaseGameLayer::getEnterEasingValue(float value, int easingType, float easingRate, int easingBuffer) {
    if (easingBuffer == -1) return value;
    if (easingBuffer == -2) return GameToolbox::getEasedValue(value, easingType, easingRate);
    auto easeIndex = (int)(value * 100.f) + easingBuffer;
    return (value - (int)(value * 100.f) / 100.f) * (m_enterEasingValues[easeIndex + 1] - m_enterEasingValues[easeIndex]) * 100.f + m_enterEasingValues[easeIndex];
}

float GJBaseGameLayer::getGroundHeight(PlayerObject* player, int type) {
    if (m_gameState.m_isDualMode) {
        auto height1 = this->getGroundHeightForMode(type);
        if (height1 == 240.f) height1 = 270.f;
        auto otherPlayer = this->getOtherPlayer(player);
        auto height2 = this->getGroundHeightForMode(otherPlayer->isFlying() ? 5 : otherPlayer->m_isBall ? 16 : 6);
        return std::max(height1, height2);
    }
    return this->getGroundHeightForMode(type);
}

GameObject* GJBaseGameLayer::getGroupParent(int groupId) {
    return static_cast<GameObject*>(m_parentGroupsDict->objectForKey(groupId));
}

gd::string GJBaseGameLayer::getGroupParentsString(GameObject* object) {
    auto groupParents = static_cast<cocos2d::CCArray*>(m_parentGroupIDs->objectForKey(object->m_uniqueID));
    if (!groupParents || groupParents->count() == 0) return "";
    fmt::memory_buffer buffer;
    auto first = true;
    for (auto i = 0; i < groupParents->count(); i++) {
        auto groupID = static_cast<cocos2d::CCInteger*>(groupParents->objectAtIndex(i))->getValue();
        if (!first) fmt::format_to(std::back_inserter(buffer), ".");
        fmt::format_to(std::back_inserter(buffer), "{}", groupID);
        first = false;
    }
    return fmt::to_string(buffer);
}

cocos2d::CCPoint GJBaseGameLayer::getMoveTargetDelta(EffectGameObject* object, bool mainObject) {
    auto targetID = object->m_targetModCenterID;
    if (targetID < 1) targetID = object->m_targetGroupID;
    auto object1 = mainObject ? this->tryGetMainObject(targetID) : this->tryGetObject(targetID);
    GameObject* object2;
    if (!object->m_targetPlayer1) {
        if (!object->m_targetPlayer2) object2 = mainObject ? this->tryGetMainObject(object->m_centerGroupID) : this->tryGetObject(object->m_centerGroupID);
        else if (m_gameState.m_isDualMode) object2 = m_player2;
        else object2 = m_player1;
    }
    else object2 = m_player1;
    if (object1 && object2 && object1->m_uniqueID != object2->m_uniqueID) {
        return object2->getRealPosition() - object1->getRealPosition();
    }
    else return { 0.f, 0.f };
}

cocos2d::CCArray* GJBaseGameLayer::getOptimizedGroup(int groupID) {
    groupID = std::clamp(groupID, 0, 9999);
    auto group = m_optimizedGroups[groupID];
    if (group) return group;
    group = cocos2d::CCArray::create();
    m_optimizedGroupDict->setObject(group, groupID);
    m_optimizedGroups[groupID] = group;
    return group;
}

PlayerObject* GJBaseGameLayer::getOtherPlayer(PlayerObject* player) {
    return player->m_uniqueID != m_player1->m_uniqueID ? m_player1 : m_player2;
}

int GJBaseGameLayer::getPlayTimerMilli() {
    return m_timePlayed * 1000.0;
}

TeleportPortalObject* GJBaseGameLayer::getPortalTarget(TeleportPortalObject* object) {
    auto target = object->m_orangePortal;
    if (target) return target;
    if (object->m_targetGroupID > 0) {
        auto group = this->getGroup(object->m_targetGroupID);
        auto count = group->count();
        if (count > 0) {
            if (count == 1) return static_cast<TeleportPortalObject*>(group->objectAtIndex(0));
            else {
                auto seed = reinterpret_cast<uint64_t*>(geode::base::get() + 0x6a4e88);
                *seed = *seed * 214013 + 2531011;
                auto num = ((*seed >> 16) & 32767) / 32767.f;
                if (num == 1.f) num = 0.f;
                return static_cast<TeleportPortalObject*>(group->objectAtIndex(num * count));
            }
        }
    }
    return nullptr;
}

cocos2d::CCPoint GJBaseGameLayer::getPortalTargetPos(TeleportPortalObject* object, GameObject* target, PlayerObject* player) {
    if (target && object->m_objectID != 747) return target->getRealPosition();
    else return { player->getPosition().x, object->getRealPosition().y + object->m_teleportYOffset };
}

void GJBaseGameLayer::getRotateCommandTargets(EnhancedTriggerObject* object, GameObject*& centerObject, GameObject*& targetObject, GameObject*& rotateObject) {
    auto centerID = object->m_centerGroupID;
    if (centerID == 0) centerID = object->m_targetGroupID;
    centerObject = this->tryGetObject(centerID);
    targetObject = this->tryGetObject(object->m_targetGroupID);
    if (!object->m_targetPlayer1) {
        if (!object->m_targetPlayer2) rotateObject = this->tryGetObject(object->m_rotationTargetID);
        else if (m_gameState.m_isDualMode) rotateObject = m_player2;
        else rotateObject = m_player1;
    }
    else rotateObject = m_player1;
}

GameObject* GJBaseGameLayer::getSingleGroupObject(int groupID) {
    if (groupID < 1) return nullptr;
    auto group = this->getGroup(groupID);
    if (group && group->count() == 1) return static_cast<GameObject*>(group->objectAtIndex(0));
    return nullptr;
}

cocos2d::CCArray* GJBaseGameLayer::getStaticGroup(int groupID) {
    groupID = std::clamp(groupID, 0, 9999);
    auto group = m_staticGroups[groupID];
    if (group) return group;
    group = cocos2d::CCArray::create();
    m_staticGroupDict->setObject(group, groupID);
    m_staticGroups[groupID] = group;
    return group;
}

cocos2d::CCArray* GJBaseGameLayer::getStickyGroup(int group) {
    return static_cast<cocos2d::CCArray*>(m_linkedGroupDict->objectForKey(group));
}

float GJBaseGameLayer::getTargetFlyCameraY(GameObject* object) {
    if (m_gameState.m_isDualMode) {
        if (m_gameState.m_lastActivatedPortal2) return m_gameState.m_lastActivatedPortal2->getStartPos().y;
        if (m_startPosObject) return m_startPosObject->getStartPos().y;
        if (object) return object->getStartPos().y;
    }
    else {
        if (object) return object->getStartPos().y;
        if (m_startPosObject) return m_startPosObject->getStartPos().y;
    }
    return 0.f;
}

void GJBaseGameLayer::gravBumpPlayer(PlayerObject* player, EffectGameObject* object) {
    auto flip = player->m_isSideways ? !object->isFacingLeft() : !object->isFacingDown();
    if (player->m_isUpsideDown != flip && this->canBeActivatedByPlayer(player, object)) {
        if (object->m_isReverse) player->reversePlayer(object);
        if (!object->m_hasNoEffects) this->playGravityEffect(flip);
        player->m_lastPortalPos = object->getPosition() - cocos2d::CCPoint { 0.f, 10.f };
        object->activatedByPlayer(player);
        player->m_lastActivatedPortal = object;
        player->propellPlayer(.8f, object->m_hasNoEffects, 10);
        this->flipGravity(player, flip, true);
        player->m_padRingRelated = true;
        this->gameEventTriggered(GJGameEvent::GravityPad, 0, 0);
    }
}

bool GJBaseGameLayer::hasItem(int id) {
    return m_collectedItems->objectForKey(cocos2d::CCString::createWithFormat("%i", id)->getCString()) != nullptr;
}

bool GJBaseGameLayer::isFlipping() {
    return m_gameState.m_levelFlipping != 0.f && m_gameState.m_levelFlipping != 1.f;
}

void GJBaseGameLayer::lightningFlash(cocos2d::CCPoint to, cocos2d::ccColor3B color) {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto x = ((float)rand() / (float)RAND_MAX) * 150.f + (to.x - 50.f);
    auto y = m_gameState.m_cameraPosition.y + (winSize.height + 50.f) / m_objectLayer->getScale();
    this->lightningFlash({ x, y }, to, color, 5.f, .5f, 0, true, 1.f);
}

void GJBaseGameLayer::modifyObjectPhysics(AdvancedFollowEditObject* object, GameObjectPhysics& physics) {
    physics.m_unkPoint1.x = GameToolbox::fast_rand_0_1() * object->m_modXVariance + object->m_modX;
    physics.m_unkPoint1.y = GameToolbox::fast_rand_0_1() * object->m_modYVariance + object->m_modY;
    auto speed = GameToolbox::fast_rand_0_1() * object->m_startSpeedVariance + object->m_startSpeed;
    if (speed != 0.f) {
        auto speedVal = this->getFollowSpeedVal(physics.m_gameObject, object->m_startSpeedReference, object->m_startDirectionReference,
            GameToolbox::fast_rand_0_1() * object->m_startDirectionVariance + object->m_startDirection, speed);
        if (!object->m_xOnly) physics.m_unkPoint1.y += speedVal.y;
        if (!object->m_yOnly) physics.m_unkPoint1.x += speedVal.x;
    }
}

void GJBaseGameLayer::moveObject(GameObject* object, double dx, double dy, bool lockPlayerY) {
    m_objectsToMove->addObject(object);
    this->moveObjects(m_objectsToMove, dx, dy, lockPlayerY);
    m_objectsToMove->removeObjectAtIndex(0);
}

void GJBaseGameLayer::moveObjectsSilent(int groupId, double dx, double dy) {
    auto group = this->getGroup(groupId);
    for (auto object : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(group)) {
        auto obj = static_cast<GameObject*>(object);

        if (!obj->m_tempOffsetXRelated) {
            obj->m_positionX += dx;
        }
        obj->m_positionY += dy;
        obj->dirtifyObjectRect();
        obj->dirtifyObjectPos();
        this->updateObjectSection(obj);
        obj->m_lastPosition.x = obj->m_positionX;
        obj->m_lastPosition.y = obj->m_positionY;
    }

    m_effectManager->saveCompletedMove(groupId, dx, dy);
}

bool GJBaseGameLayer::objectIntersectsCircle(GameObject* object, GameObject* circle) {
    auto objectRect = object->getObjectRect();
    auto circleRadius = circle->getObjectRadius();
    auto circlePosition = circle->getRealPosition();
    auto minX = objectRect.getMinX();
    auto maxX = objectRect.getMaxX();
    auto minY = objectRect.getMinY();
    auto maxY = objectRect.getMaxY();
    if (objectRect.containsPoint(circlePosition)) return true;
    if (circleRadius > std::abs(cocos2d::ccpDistance({ maxX, maxY }, circlePosition))) return true;
    if (circleRadius > std::abs(cocos2d::ccpDistance({ maxX, minY }, circlePosition))) return true;
    if (circleRadius > std::abs(cocos2d::ccpDistance({ minX, minY }, circlePosition))) return true;
    if (circleRadius > std::abs(cocos2d::ccpDistance({ minX, maxY }, circlePosition))) return true;
    return false;
}

void GJBaseGameLayer::playAnimationCommand(int id, int groupID) {
    if (groupID <= 0) return;
    auto group = this->getGroup(groupID);
    for (int i = 0; i < group->count(); i++) {
        auto object = static_cast<AnimatedGameObject*>(group->objectAtIndex(i));
        if (object->m_classType == GameObjectClassType::Animated) object->playAnimation(id);
        else object->animationTriggered();
    }
}

bool GJBaseGameLayer::playerIntersectsCircle(PlayerObject* player, GameObject* object) {
    return cocos2d::ccpDistance(object->getPosition(), player->getRealPosition()) <= player->getObjectRect().size.width * .5f + object->getObjectRadius();
}

void GJBaseGameLayer::playSpeedParticle(float timeMod) {
    if (GameManager::sharedState()->m_performanceMode || m_skipArtReload) return;
    const char* particleFile;
    if (timeMod == .7f) particleFile = "speedEffect_slow.plist";
    else if (timeMod == 1.1f) particleFile = "speedEffect_fast.plist";
    else if (timeMod == 1.3f) particleFile = "speedEffect_vfast.plist";
    else if (timeMod == 1.6f) particleFile = "speedEffect_vvfast.plist";
    else particleFile = "speedEffect_normal.plist";
    auto director = cocos2d::CCDirector::sharedDirector();
    auto winSize = director->getWinSize();
    auto particle = cocos2d::CCParticleSystemQuad::create(particleFile, false);
    particle->setPositionType(cocos2d::tCCPositionType::kCCPositionTypeGrouped);
    particle->setAutoRemoveOnFinish(true);
    this->addChild(particle, 100);
    particle->setPosition({ director->getScreenRight() + 10.f, winSize.height / 2.f });
    particle->setPosVar({ 10.f, director->getScreenScaleFactorH() * 160.f });
    particle->resetSystem();
}

void GJBaseGameLayer::prepareTransformParent(bool rotateNode) {
    m_areaTransformNode2->retain();
    m_areaTransformNode2->removeFromParentAndCleanup(false);

    auto node = rotateNode ? m_areaRotateNode : m_areaTransformNode;
    node->addChild(m_areaTransformNode2);
    m_areaTransformNode2->release();
}

void GJBaseGameLayer::preResumeGame() {
    m_resumeTimer = 2;
}

void GJBaseGameLayer::processAreaFadeGroupAction(cocos2d::CCArray* objects, EnterEffectInstance* instance, cocos2d::CCPoint position, bool targetGroups) {
    auto fromOpacity = instance->m_fromOpacity;;
    auto toOpacity = instance->m_toOpacity;
    m_areaColorCount += objects->count();
    auto colorCount = 0;
    auto totalCount = 0;
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(objects)) {
        auto object = static_cast<GameObject*>(obj);
        if (!object->m_isActivated) continue;
        totalCount++;
        auto show = false;
        auto rawOpacity = this->getAreaObjectValue(instance, object, position, show);
        auto opacity = rawOpacity * (toOpacity - fromOpacity) + fromOpacity;
        if (targetGroups) {
            auto targetGroup = this->getTargetGroup(instance->m_targetGroupIndex, object->m_uniqueID);
            colorCount += targetGroup->count() - 1;
            for (auto targetObj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(targetGroup)) {
                static_cast<GameObject*>(targetObj)->setAreaOpacity(opacity, rawOpacity, m_gameState.m_commandIndex);
            }
        }
        else {
            object->setAreaOpacity(opacity, rawOpacity, m_gameState.m_commandIndex);
        }
    }
    m_areaColorCount += colorCount;
    m_areaColorCountTotal += colorCount + totalCount;
}

void GJBaseGameLayer::processAreaVisualActions(float dt) {
    this->processAreaEffects(&m_gameState.m_fadeEffectInstances, GJAreaActionType::Fade, dt, true);
    this->processAreaEffects(&m_gameState.m_tintEffectInstances, GJAreaActionType::Tint, dt, true);
}

GameObject* GJBaseGameLayer::processCameraObject(GameObject* object, PlayerObject* player) {
    if (object) {
        player->m_lastPortalPos = object->getPosition();
        player->m_lastActivatedPortal = object;
    }
    auto ret = object;
    if (m_gameState.m_isDualMode && m_gameState.m_lastActivatedPortal2) ret = m_gameState.m_lastActivatedPortal2;
    if (object) m_gameState.m_lastActivatedPortal1 = object;
    return ret;
}

void GJBaseGameLayer::processStateObjects() {
    for (auto it = m_gameState.m_stateObjects.begin(); it != m_gameState.m_stateObjects.end();) {
        auto obj = it->second;
        obj->updateState(m_gameState.m_commandIndex);
        if (obj->m_isRingPoweredOn) ++it;
        else {
            obj->stateSensitiveOff(this);
            it = m_gameState.m_stateObjects.erase(it);
        }
    }
}

void GJBaseGameLayer::queueButton(int button, bool push, bool isPlayer2) {
    if (button <= 0 || button > 3) {
        return;
    }
    PlayerButtonCommand command = {};
    command.m_button = (PlayerButton) button;
    command.m_isPush = push;
    command.m_isPlayer2 = isPlayer2;
    m_queuedButtons.push_back(command);
}

void GJBaseGameLayer::reAddToStickyGroup(GameObject* object) {
    auto uniqueID = object->m_uniqueID;
    if (m_stickyGroups.count(uniqueID) != 0 && object->m_linkedGroup == 0) {
        auto groupID = m_stickyGroups[uniqueID];
        if (auto stickyGroup = this->getStickyGroup(groupID)) {
            stickyGroup->addObject(object);
            object->m_linkedGroup = groupID;
            m_stickyGroups.erase(uniqueID);
        }
    }
}

void GJBaseGameLayer::recordAction(int button, bool down, bool player2) {
    if (m_recordInputs && !m_useReplay) {
        PlayerButtonCommand command;
        command.m_button = (PlayerButton)button;
        command.m_isPush = down;
        command.m_isPlayer2 = player2;
        command.m_step = 0;
        m_queuedRecordedButtons.push_back(command);
    }
}

bool GJBaseGameLayer::rectIntersectsCircle(cocos2d::CCRect rect, cocos2d::CCPoint center, float radius) {
    auto minX = rect.getMinX();
    auto maxX = rect.getMaxX();
    auto minY = rect.getMinY();
    auto maxY = rect.getMaxY();
    if (rect.containsPoint(center)) return true;
    if (radius > std::abs(cocos2d::ccpDistance({ maxX, maxY }, center))) return true;
    if (radius > std::abs(cocos2d::ccpDistance({ maxX, minY }, center))) return true;
    if (radius > std::abs(cocos2d::ccpDistance({ minX, minY }, center))) return true;
    if (radius > std::abs(cocos2d::ccpDistance({ minX, maxY }, center))) return true;
    if (radius >= cocos2d::ccpDistance({ std::clamp(center.x, minX, maxX), std::clamp(center.y, minY, maxY) }, center)) return true;
    return false;
}

void GJBaseGameLayer::regenerateEnterEasingBuffers() {
    m_enterEasingValues.clear();
    m_enterEasingIndices.clear();
    m_enterEasingValuesIndex = 0;
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_objects)) {
        auto object = static_cast<EnterEffectObject*>(obj);
        if (object->m_objectID >= 3006 && object->m_objectID <= 3021 && object->m_objectID != 3016) {
            this->generateEnterEasingBuffers(object);
        }
    }
}

int GJBaseGameLayer::registerSpawnRemap(gd::vector<ChanceObject>& spawnRemap) {
    std::unordered_map<int, int> remap;
    m_spawnRemapTriggers.push_back(remap);
    for (auto& obj : spawnRemap) {
        m_spawnRemapTriggers.back()[obj.m_groupID] = obj.m_chance;
    }
    return m_spawnRemapTriggers.size() - 1;
}

void GJBaseGameLayer::registerStateObject(EffectGameObject* object) {
    m_gameState.m_stateObjects[object->m_uniqueID] = object;
}

void GJBaseGameLayer::removeBackground() {
    if (m_background) {
        m_background->removeFromParent();
        m_background = nullptr;
    }
}

void GJBaseGameLayer::removeFromGroupParents(GameObject* object) {
    if (object->m_hasGroupParentsString) {
        if (auto groupIDs = static_cast<cocos2d::CCArray*>(m_removedParentGroupIDs->objectForKey(object->m_uniqueID))) {
            for (int i = 0; i < groupIDs->count(); i++) {
                m_parentGroupsDict->removeObjectForKey(static_cast<cocos2d::CCInteger*>(groupIDs->objectAtIndex(i))->getValue());
            }
            m_removedParentGroupIDs->removeObjectForKey(object->m_uniqueID);
            m_parentGroupIDs->removeObjectForKey(object->m_uniqueID);
        }
    }
}

void GJBaseGameLayer::removeFromStickyGroup(GameObject* object) {
    if (object->m_linkedGroup != 0) {
        if (auto stickyGroup = this->getStickyGroup(object->m_linkedGroup)) stickyGroup->removeObject(object);
        m_stickyGroups[object->m_uniqueID] = object->m_linkedGroup;
        object->m_linkedGroup = 0;
    }
}

void GJBaseGameLayer::removeGroundLayer() {
    if (m_groundLayer) {
        m_groundLayer->removeFromParent();
        m_groundLayer = nullptr;
        m_groundLayer2->removeFromParent();
        m_groundLayer2 = nullptr;
    }
}

void GJBaseGameLayer::removeKeyframe(KeyframeGameObject* object) {
    if (auto keyframeGroup = static_cast<cocos2d::CCArray*>(m_keyframeGroups->objectForKey(object->m_keyframeGroup))) {
        keyframeGroup->removeObject(object);
        this->updateKeyframeOrder(object->m_keyframeGroup);
    }
}

void GJBaseGameLayer::removeMiddleground() {
    if (m_middleground) {
        m_middleground->removeFromParent();
        m_middleground = nullptr;
    }
}

void GJBaseGameLayer::removePlayer2() {
    m_player2->removeFromParentAndCleanup(true);
    m_player2->setOpacity(0);
    m_player2->releaseAllButtons();
    m_player2->removeAllParticles();
    m_player2->deactivateStreak(true);
}

void GJBaseGameLayer::removeTemporaryParticles() {
    for (int i = 0; i < m_temporaryParticles->count();) {
        auto particle = static_cast<cocos2d::CCParticleSystem*>(m_temporaryParticles->objectAtIndex(i));
        if (particle->isAutoRemoveOnFinish()) {
            particle->removeMeAndCleanup();
            m_customParticlesUIDs.erase(particle->m_uID);
            m_temporaryParticles->fastRemoveObjectAtIndex(i);
        }
        else i++;
    }
}

void GJBaseGameLayer::reorderObjectSection(GameObject* object) {
    this->removeObjectFromSection(object);
    this->addToSection(object);
}

void GJBaseGameLayer::reparentObject(cocos2d::CCNode* node, cocos2d::CCNode* parent) {
    if (parent == node->getParent() || node->getTag() == -9999) return;
    node->retain();
    node->removeFromParentAndCleanup(false);
    parent->addChild(node, node->getZOrder());
    node->release();
}

void GJBaseGameLayer::resetGroupCounters(bool reset) {
    for (auto& pair : m_labelObjects) {
        for (auto label : pair.second) {
            if (reset) label->updateLabel("0");
            else label->updatePreviewLabel();
        }
    }

    for (auto& pair : m_timeLabelObjects) {
        for (auto label : pair.second) {
            if (reset) label->updateLabel(label->m_showSecondsOnly ? "0" : "0.00");
            else label->updatePreviewLabel();
        }
    }
}

void GJBaseGameLayer::resetMoveOptimizedValue() {
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_objects)) {
        auto object = static_cast<GameObject*>(obj);
        object->m_isDecoration2 = object->m_isDecoration;
    }
}

void GJBaseGameLayer::resetStoppedAreaObjects() {
    if (m_areaObjectsCount > 0) {
        for (size_t i = 0; i < m_areaObjectsCount; i++) {
            auto object = m_areaObjects[i];
            object->m_isDirty = true;
            object->m_isObjectRectDirty = true;
            object->m_isOrientedBoxDirty = true;
            if (this->resetAreaObjectValues(object, false)) {
                this->updateObjectSection(object);
            }
            object->setRRotation(0.f);
            object->setRScale(1.f);
        }
    }
}

void GJBaseGameLayer::restoreAllUIObjects() {
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_uiObjects)) {
        auto object = static_cast<GameObject*>(obj);
        object->setStartPos(m_uiObjectPositions[object->m_uniqueID]);
        object->deactivateObject(true);
        object->m_outerSectionIndex = 0;
        object->m_isUIObject = false;
        this->addToSection(object);
        m_objectsToDeactivate->setObject(object, object->m_uniqueID);
        object->m_unk3ee = true;
    }
    m_uiObjects->removeAllObjects();
    m_uiObjectPositions.clear();
    m_calcCollisionBlockObjects2.clear();
    m_calcCollisionBlockObjects2Size = 0;
}

void GJBaseGameLayer::setStartPosObject(StartPosObject* startPos) {
    if (startPos != m_startPosObject) {
        if (startPos) {
            startPos->retain();
        }
        if (m_startPosObject) {
            m_startPosObject->release();
        }
        m_startPosObject = startPos;
    }
}

void GJBaseGameLayer::sortAllGroupsX() {
    for (int i = 0; i < 10000; i++) {
        if (auto group = m_groups[i]) {
            qsort(group->data->arr, group->data->num, sizeof(GameObject*), [](const void* a, const void* b) {
                auto objA = *static_cast<GameObject* const*>(a);
                auto objB = *static_cast<GameObject* const*>(b);
                return (int)objA->getPosition().x - (int)objB->getPosition().x;
            });
        }
    }
}

void GJBaseGameLayer::spawnGroupTriggered(int targetID, float delay, bool spawnOrdered, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    if (delay > 0.f) m_effectManager->spawnGroup(targetID, delay, spawnOrdered, remapKeys, uniqueID, controlID);
    else this->spawnGroup(targetID, spawnOrdered, -delay, remapKeys, uniqueID, controlID);
}

void GJBaseGameLayer::spawnParticleTrigger(SpawnParticleGameObject* object) {
    auto rotation = object->m_rotation + (((float)rand() / (float)RAND_MAX) * 2.f - 1.f) * object->m_rotationVariance;
    auto scale = object->m_scale + (((float)rand() / (float)RAND_MAX) * 2.f - 1.f) * object->m_scaleVariance;
    auto position = this->getPosition();
    auto centerID = object->m_centerGroupID;
    if (centerID > 0) {
        if (auto groupObject = this->tryGetObject(centerID)) {
            position = groupObject->getPosition();
            if (object->m_matchRotation) rotation += groupObject->getRotation();
        }
    }
    position.x += object->m_offset.x + (((float)rand() / (float)RAND_MAX) * 2.f - 1.f) * object->m_offsetVariance.x;
    position.y += object->m_offset.y + (((float)rand() / (float)RAND_MAX) * 2.f - 1.f) * object->m_offsetVariance.y;
    this->spawnParticleTrigger(object->m_targetGroupID, position, rotation, scale);
}

void GJBaseGameLayer::spawnPlayer2() {
    auto parent = m_player2->getParent();
    if (!parent) {
        m_player1->getParent()->addChild(m_player2, 59);
        if (!m_isEditor) m_player2->addAllParticles();
    }
    m_player2->spawnFromPlayer(m_player1, m_gameState.m_unkBool31);
}

void GJBaseGameLayer::stopCameraShake() {
    m_gameState.m_cameraShakeEnabled = false;
    m_gameState.m_cameraShakeFactor = 0.f;
}

void GJBaseGameLayer::stopCustomEnterEffect(EnterEffectObject* object) {
    auto enterType = object->m_enterType;
    if (enterType == 0 || enterType == 1) this->stopCustomEnterEffect(object, true);
    if (enterType == 0 || enterType == 2) this->stopCustomEnterEffect(object, false);
}

void GJBaseGameLayer::stopSFXTrigger(SFXTriggerGameObject* object) {
    if (object->m_objectID != 3602) return;
    auto engine = FMODAudioEngine::sharedEngine();
    for (auto& channel : m_gameState.m_unkUMap8[object->m_uniqueID]) {
        engine->stopChannel(channel);
        m_gameState.m_proximityVolumeRelated.erase({ channel, 0 });
    }
    m_gameState.m_unkUMap8[object->m_uniqueID].clear();
}

void GJBaseGameLayer::swapBackground(int background) {
    m_gameState.m_background = background;
    if (m_skipArtReload) return;
    auto gameManager = GameManager::sharedState();
    if (background != gameManager->m_loadedBgID) gameManager->loadBackgroundAsync(background);
    else this->asyncBGLoaded(background);
}

void GJBaseGameLayer::swapGround(int ground) {
    m_gameState.m_ground = ground;
    if (m_skipArtReload) return;
    auto gameManager = GameManager::sharedState();
    if (ground != gameManager->m_loadedGroundID) gameManager->loadGroundAsync(ground);
}

void GJBaseGameLayer::swapMiddleground(int middleground) {
    m_gameState.m_middleground = middleground;
    if (m_skipArtReload) return;
    auto gameManager = GameManager::sharedState();
    if (middleground == gameManager->m_loadedMG && (middleground < 1 || !m_middleground)) return;
    if (middleground == 0) this->createMiddleground(0);
    else {
        if (middleground != gameManager->m_loadedMG) gameManager->loadMiddlegroundAsync(middleground);
        else this->asyncMGLoaded(middleground);
    }
}

void GJBaseGameLayer::switchToFlyMode(PlayerObject* player, GameObject* object, bool noPortal, int type) {
    player->switchedToMode((GameObjectType)type);
    auto cameraObject = this->processCameraObject(object, player);
    auto noEffects = cameraObject && cameraObject->m_hasNoEffects;
    switch (type) {
        case 5:
            player->toggleFlyMode(true, noEffects);
            break;
        case 19:
            player->toggleBirdMode(true, noEffects);
            break;
        case 26:
            player->toggleDartMode(true, noEffects);
            break;
        case 41:
            player->toggleSwingMode(true, noEffects);
            break;
    }
    this->toggleGlitter(true);
}

void GJBaseGameLayer::testInstantCountTrigger(int itemID, int compareCount, int groupID, bool activateGroup, int triggerMode, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    auto itemCount = m_effectManager->countForItem(itemID);
    switch (triggerMode) {
        case 0:
            if (itemCount != compareCount) return;
            break;
        case 1:
            if (itemCount <= compareCount) return;
            break;
        case 2:
            if (itemCount >= compareCount) return;
            break;
    }
    this->toggleGroupTriggered(groupID, activateGroup, remapKeys, uniqueID, controlID);
}

void GJBaseGameLayer::togglePlayerStreakBlend(bool blend) {
    if (blend != m_gameState.m_playerStreakBlend) {
        m_gameState.m_playerStreakBlend = blend;
        m_player1->updateStreakBlend(blend);
        m_player2->updateStreakBlend(blend);
    }
}

void GJBaseGameLayer::togglePlayerVisibility(bool visible) {
    this->togglePlayerVisibility(visible, true);
    this->togglePlayerVisibility(visible, false);
}

void GJBaseGameLayer::triggerAdvancedFollowCommand(AdvancedFollowTriggerObject* object) {
    auto targetID = object->m_centerGroupID;
    if (object->m_targetPlayer1) targetID = -1;
    else if (object->m_targetPlayer2) targetID = -2;
    else if (object->m_followCPP) targetID = -3;
    auto exists = false;
    for (auto& inst : m_gameState.m_advanceFollowInstances) {
        if (inst.m_gameObject != object || inst.m_group != object->m_targetGroupID || inst.m_objectKey != targetID || inst.m_controlId != object->m_controlID) continue;
        inst.m_finished = false;
        inst.m_doStart = false;
        inst.m_relatedToGJGameStateUnkUint7 = ++m_gameState.m_unkUint7;
        exists = true;
    }
    if (!exists) {
        m_gameState.m_advanceFollowInstances.emplace_back(object, object->m_targetGroupID, targetID, 0, ++m_gameState.m_unkUint7, object->m_controlID);
    }
}

void GJBaseGameLayer::triggerAreaEffectAnimation(EnterEffectObject* object) {
    auto targetID = object->m_targetGroupID;
    if (object->m_useEffectID) {
        for (int i = 0; i < 5; i++) {
            std::vector<EnterEffectInstance>* instances;
            switch (i) {
                case 0: instances = &m_gameState.m_moveEffectInstances; break;
                case 1: instances = &m_gameState.m_rotateEffectInstances; break;
                case 2: instances = &m_gameState.m_scaleEffectInstances; break;
                case 3: instances = &m_gameState.m_fadeEffectInstances; break;
                case 4: instances = &m_gameState.m_tintEffectInstances; break;
                default: continue;
            }
            for (auto& inst : *instances) {
                if (inst.m_gameObject->m_effectID == targetID) {
                    inst.loadTransitions(object, m_gameState.m_totalTime);
                    if (targetID > 0) break;
                }
                else break;
            }
        }
    }
    else {
        auto group = this->getGroup(targetID);
        for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(group)) {
            auto groupObject = static_cast<GameObject*>(obj);
            if (groupObject->m_unk390 != 45) continue;
            std::vector<EnterEffectInstance>* instances;
            switch (groupObject->m_objectID) {
                case 3006: instances = &m_gameState.m_moveEffectInstances; break;
                case 3007: instances = &m_gameState.m_rotateEffectInstances; break;
                case 3008: instances = &m_gameState.m_scaleEffectInstances; break;
                case 3009: instances = &m_gameState.m_fadeEffectInstances; break;
                case 3010: instances = &m_gameState.m_tintEffectInstances; break;
                default: continue;
            }
            for (auto& inst : *instances) {
                if (inst.m_gameObject == groupObject) {
                    inst.loadTransitions(object, m_gameState.m_totalTime);
                }
            }
        }
    }
}

void GJBaseGameLayer::triggerDynamicMoveCommand(EffectGameObject* object) {
    auto targetID = object->m_targetModCenterID;
    if (targetID < 1) targetID = object->m_targetGroupID;
    auto object1 = this->tryGetObject(targetID);
    GameObject* object2;
    if (!object->m_targetPlayer1) {
        if (!object->m_targetPlayer2) object2 = this->tryGetObject(object->m_centerGroupID);
        else if (m_gameState.m_isDualMode) object2 = m_player2;
        else object2 = m_player1;
    }
    else object2 = m_player1;
    if (object1 && object2) {
        m_gameState.m_dynamicMoveActions.emplace_back(object, object1, object2);
    }
}

void GJBaseGameLayer::triggerGravityChange(EffectGameObject* object, int playerID) {
    if (object->m_followCPP) {
        if (playerID == 1) m_player1->m_gravityMod = object->m_gravityValue;
        else if (playerID == 2) m_player2->m_gravityMod = object->m_gravityValue;
    }
    else {
        if (object->m_targetPlayer1) m_player1->m_gravityMod = object->m_gravityValue;
        else if (object->m_targetPlayer2) m_player2->m_gravityMod = object->m_gravityValue;
    }
}

void GJBaseGameLayer::triggerRotateCommand(EnhancedTriggerObject* object) {
    if (object->m_isDynamicMode && object->m_duration != 0.f) {
        if (object->m_useMoveTarget || object->m_isDirectionFollowSnap360) {
            this->triggerDynamicRotateCommand(object);
        }
    }
    else {
        auto rotation = object->m_times360 * 360.f + object->m_rotationDegrees;
        if (object->m_useMoveTarget || object->m_isDirectionFollowSnap360) {
            GameObject* centerObject;
            GameObject* targetObject;
            GameObject* rotateObject;
            this->getRotateCommandTargets(object, centerObject, targetObject, rotateObject);
            if (centerObject && targetObject && rotateObject) {
                auto minXObject = this->tryGetObject(object->m_minXID);
                auto minYObject = this->tryGetObject(object->m_minYID);
                auto maxXObject = this->tryGetObject(object->m_maxXID);
                auto maxYObject = this->tryGetObject(object->m_maxYID);
                auto centerPosition = centerObject->getRealPosition();
                auto targetPosition = targetObject->getRealPosition();
                auto rotatePosition = rotateObject->getRealPosition();
                if (centerObject == targetObject) {
                    rotation = centerObject->getRotation();
                }
                else {
                    auto difference = targetPosition - centerPosition;
                    if (sqrtf(difference.x * difference.x + difference.y * difference.y) < .01f) {
                        rotation = centerObject->getRotation();
                    }
                    else {
                        rotation = 90.f - atan2f(difference.y, difference.x) * (180.f / M_PI);
                    }
                }
                auto distance = 0.f;
                if (centerObject != targetObject) {
                    if (object->m_useMoveTarget) {
                        if (minXObject) {
                            auto minX = minXObject->getRealPosition().x;
                            if (rotatePosition.x < minX) rotatePosition.x = minX;
                        }
                        if (maxXObject) {
                            auto maxX = maxXObject->getRealPosition().x;
                            if (rotatePosition.x > maxX) rotatePosition.x = maxX;
                        }
                        if (minYObject) {
                            auto minY = minYObject->getRealPosition().y;
                            if (rotatePosition.y < minY) rotatePosition.y = minY;
                        }
                        if (maxYObject) {
                            auto maxY = maxYObject->getRealPosition().y;
                            if (rotatePosition.y > maxY) rotatePosition.y = maxY;
                        }
                        auto difference = rotatePosition - centerPosition;
                        if (sqrtf(difference.x * difference.x + difference.y * difference.y) >= .01f) {
                            distance = 90.f - atan2f(difference.y, difference.x) * (180.f / M_PI);
                        }
                    }
                    else {
                        distance = rotateObject->getRotation();
                    }
                }
                rotation = convertToClosestDirection(distance - rotation + object->m_rotationOffset, 180.f);
            }
            m_effectManager->createRotateCommand(rotation, object->m_duration, object->m_targetGroupID, object->m_centerGroupID,
                (int)object->m_easingType, object->m_easingRate, object->m_lockObjectRotation, false, false, object->m_uniqueID, object->m_controlID);
        }
    }
}

void GJBaseGameLayer::tryResumeAudio() {
    if (m_resumeTimer < 1 && m_audioPaused) {
        this->resumeAudio();
        m_audioPaused = false;
    }
}

void GJBaseGameLayer::updateActiveEnterEffect(EnterEffectObject* object) {
    auto id = -2;
    switch (object->m_objectID) {
        case 23: id = -6; break;
        case 24: id = -5; break;
        case 25: id = -7; break;
        case 26: id = -8; break;
        case 27: id = -3; break;
        case 28: id = -4; break;
        case 55: id = -11; break;
        case 56: id = -10; break;
        case 57: id = -9; break;
        case 58: id = -12; break;
        case 59: id = -13; break;
        case 1915: id = -14; break;
        case 3017: case 3018: case 3019: case 3020: case 3021: id = -15; break;
    }
    auto enterType = object->m_enterType;
    if (enterType == 0 || enterType == 1) {
        m_gameState.m_enterChannelMap[object->m_enterChannel] = id;
        if (id == -15) this->addCustomEnterEffect(object, true);
        else this->removeCustomEnterEffects(id, true);
    }
    if (enterType == 0 || enterType == 2) {
        m_gameState.m_exitChannelMap[object->m_enterChannel] = id;
        if (id == -15) this->addCustomEnterEffect(object, false);
        else this->removeCustomEnterEffects(id, false);
    }
}

void GJBaseGameLayer::updateAllObjectSection() {
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_objects)) {
        this->updateObjectSection(static_cast<GameObject*>(obj));
    }
}

void GJBaseGameLayer::updateBGArtSpeed(float modX, float modY) {
    m_gameState.m_unkFloat5 = modX;
    m_gameState.m_unkFloat6 = modY;
}

void GJBaseGameLayer::updateCameraEdge(int direction, int value) {
    switch (direction) {
        case 1:
            m_gameState.m_cameraEdgeValue0 = value;
            break;
        case 2:
            m_gameState.m_cameraEdgeValue1 = value;
            break;
        case 3:
            m_gameState.m_cameraEdgeValue2 = value;
            break;
        case 4:
            m_gameState.m_cameraEdgeValue3 = value;
            break;
    }
}

void GJBaseGameLayer::updateCameraMode(EffectGameObject* obj, bool updateDual) {
    auto cameraFree = obj->m_cameraIsFreeMode;
    auto freeMode = m_gameState.m_unkBool8;
    m_gameState.m_unkBool8 = cameraFree;
    m_gameState.m_unkBool9 = obj->m_cameraDisableGridSnap;
    if (obj->m_cameraEditCameraSettings) {
        m_gameState.m_unkFloat3 = std::clamp(obj->m_cameraEasingValue, 1.f, 40.f);
        m_gameState.m_unkFloat2 = std::clamp(obj->m_cameraPaddingValue, 0.f, 1.f);
    }
    if (cameraFree != freeMode && updateDual) this->updateDualGround(m_player1, m_gameState.m_dualRelated, false, 0.f);
}

void GJBaseGameLayer::updateExtendedCollision(GameObject* object, bool extendedCollision) {
    if (object->m_hasExtendedCollision != extendedCollision) {
        this->removeObjectFromSection(object);
        object->m_hasExtendedCollision = extendedCollision;
        this->addToSection(object);
    }
}

void GJBaseGameLayer::updateGameplayOffsetX(int offsetX, bool staticOffset) {
    m_gameState.m_unkInt1 = offsetX;
    m_gameState.m_unkBool2 = staticOffset;
}

void GJBaseGameLayer::updateGameplayOffsetY(int offsetY, bool staticOffset) {
    m_gameState.m_unkInt2 = offsetY;
    m_gameState.m_unkBool3 = staticOffset;
}

void GJBaseGameLayer::updateLegacyLayerCapacity(int front, int frontBlend, int back, int backBlend) {
    if (front < 100) front = 100;
    if (frontBlend < 100) frontBlend = 100;
    if (back < 100) back = 100;
    if (backBlend < 100) backBlend = 100;
    m_gameLayerT1->increaseAtlasCapacity(front);
    m_gameBlendingLayerT1->increaseAtlasCapacity(frontBlend);
    m_game2LayerT1->increaseAtlasCapacity(20);
    m_game2BlendingLayerT1->increaseAtlasCapacity(20);
    m_game2LayerB1->increaseAtlasCapacity(20);
    m_gameLayerB1->increaseAtlasCapacity(back);
    m_gameBlendingLayerB1->increaseAtlasCapacity(backBlend);
    m_gameLayerB2->increaseAtlasCapacity(back);
    m_gameBlendingLayerB2->increaseAtlasCapacity(backBlend);
    m_glowLayerT1->increaseAtlasCapacity(frontBlend / 2);
    m_glowLayerB1->increaseAtlasCapacity(backBlend / 2);
    m_glowLayerB2->increaseAtlasCapacity(backBlend / 2);
}

void GJBaseGameLayer::updateMGArtSpeed(float modX, float modY) {
    m_gameState.m_unkFloat7 = modX;
    m_gameState.m_unkFloat8 = modY;
}

void GJBaseGameLayer::updateOBB2(cocos2d::CCRect rect) {
    m_obb2->calculateWithCenter(rect.size * .5f, rect.size.width, rect.size.height, 0.f);
}

void GJBaseGameLayer::updateQueuedLabels() {
    for (auto& pair : m_labelObjects) {
        for (auto label : pair.second) {
            if (label->m_isActivated) label->updateLabelIfDirty();
        }
    }
    for (auto& pair : m_timeLabelObjects) {
        for (auto label : pair.second) {
            if (label->m_isActivated) label->updateLabelIfDirty();
        }
    }
}

void GJBaseGameLayer::updateReplay() {
    if (!m_useReplay) return;
    for (auto it = m_queuedReplayButtons.begin(); it != m_queuedReplayButtons.end() && it->m_step <= m_gameState.m_commandIndex;) {
        this->handleButton(it->m_isPush, (int)it->m_button, it->m_isPlayer2);
        it = m_queuedReplayButtons.erase(it);
    }
}

void GJBaseGameLayer::updateSavePositionObjects() {
    if (m_gameState.m_unkUint4 != 0 && m_gameState.m_unkUint4 + 1000 > m_gameState.m_unkUint5) return;
    m_gameState.m_unkUint4 = m_gameState.m_unkUint5;
    m_gameState.m_unkUint11++;
    for (auto& pair : m_savePositionValues) {
        cocos2d::CCPoint position;
        auto type = pair.first;
        auto value = pair.second;
        auto offset = 0;
        if (type < 1) {
            switch (type) {
                case -1:
                    offset = m_player1->m_unk52C;
                    position = m_player1->m_lastPosition;
                    break;
                case -2:
                    offset = m_player2->m_unk52C;
                    position = m_player2->m_lastPosition;
                    break;
                case -3:
                    offset = m_gameState.m_unkUint12;
                    position = m_gameState.m_cameraPosition2;
                    break;
            }
        }
        else {
            auto object = m_savePositionObjects[type];
            offset = object->m_unk52C;
            position = object->m_lastPosition;
        }
        auto index = (m_gameState.m_unkUint11 % value + offset) * 2;
        m_gameState.m_unkVecFloat1[index] = position.x;
        m_gameState.m_unkVecFloat1[index + 1] = position.y;
    }
}

void GJBaseGameLayer::updateTimeMod(float speed, bool players, bool noEffects) {
    if (players) {
        m_gameState.m_timeModRelated = 0;
        m_gameState.m_timeModRelated2 = false;
        m_player1->updateTimeMod(speed, noEffects);
        if (m_gameState.m_isDualMode) m_player2->updateTimeMod(speed, noEffects);
    }
    else {
        m_gameState.m_timeModRelated = speed;
        m_gameState.m_timeModRelated2 = noEffects;
    }
}
#endif

#if defined(GEODE_IS_IOS)
float GJBaseGameLayer::getAreaObjectValue(EnterEffectInstance* instance, GameObject* object, cocos2d::CCPoint& position, bool& show) {
    auto realPosition = object->getRealPosition();
    float value;
    switch (instance->m_gameObject->m_directionType) {
        case 1: {
            value = realPosition.x - position.x + (instance->m_offsetVariance != 0.f ? instance->m_offsetVariance * m_varianceValues[object->m_varianceIndex + 1] : 0.f);
            value *= value > 0.f ? instance->m_modFront : instance->m_modBack;
            show = instance->m_reversed ? position.x >= realPosition.x : position.x <= realPosition.x;
            break;
        }
        case 2: {
            value = realPosition.y - position.y + (instance->m_offsetVariance != 0.f ? instance->m_offsetVariance * m_varianceValues[object->m_varianceIndex + 1] : 0.f);
            value *= value > 0.f ? instance->m_modFront : instance->m_modBack;
            show = instance->m_reversed ? position.y >= realPosition.y : position.y <= realPosition.y;
            break;
        }
        default: {
            value = cocos2d::ccpDistance(realPosition, position + cocos2d::CCPoint {
                instance->m_offsetVariance != 0.f ? instance->m_offsetVariance * m_varianceValues[object->m_varianceIndex + 1] : 0.f,
                instance->m_offsetYVariance != 0.f ? instance->m_offsetYVariance * m_varianceValues[object->m_varianceIndex + 2] : 0.f
            });
            show = instance->m_reversed ? position.x >= realPosition.x : position.x <= realPosition.y;
            break;
        }
    }
    auto deadzone = instance->m_deadzone;
    auto result = value / (instance->m_length + (instance->m_lengthVariance != 0.f ? instance->m_lengthVariance * m_varianceValues[object->m_varianceIndex] : 0.f));
    result = std::clamp(deadzone != 0.f ? (result - deadzone) / (1.f - deadzone) : result, 0.f, 1.f);
    return instance->m_gameObject->m_inbound ? 1.f - result : result;
}

float GJBaseGameLayer::getEasedAreaValue(GameObject* object, EnterEffectInstance* instance, float value, bool show, int index) {
    auto enterObject = instance->m_gameObject;
    if (enterObject->m_easeOutEnabled) {
        if (value > .01f && value < .99f) {
            auto index = instance->m_easeIndex;
            auto& indices = instance->m_easeIndices;
            if (indices[index] == index - 2) {
                indices[index] = index;
                show = false;
            }
            else if (indices[index] == index - 1) {
                indices[index] = index + 1;
                show = true;
            }
        }
        if (!show) return this->getEnterEasingValue(value, (int)enterObject->m_easingOutType, enterObject->m_easingOutRate, enterObject->m_easingOutBuffer);
    }
    return this->getEnterEasingValue(value, (int)enterObject->m_easingInType, enterObject->m_easingInRate, enterObject->m_easingInBuffer);
}

float GJBaseGameLayer::getGroundHeightForMode(int type) {
    while (true) {
        switch (type) {
            case 5: case 19: case 26: case 41: {
                return 300.f;
            }
            case 16: {
                return 240.f;
            }
            case 23: case 24: {
                type = m_gameState.m_dualRelated;
                if (type == 23 || type == 24) {
                    return 270.f;
                }
                break;
            }
        }
    }
    return 270.f;
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MAC)

void GJBaseGameLayer::moveAreaObject(GameObject* object, float dx, float dy) {
    auto result = this->resetAreaObjectValues(object, true);
    if (dx == 0.f && dy == 0.f && !result) return;
    if (dy != 0.f) {
        object->m_positionY += dy;
        object->m_positionYOffset += dy;
        object->dirtifyObjectPos();
        object->dirtifyObjectRect();
    }
    if (dx != 0.f && !object->m_tempOffsetXRelated) {
        object->m_positionX += dx;
        object->m_positionXOffset += dx;
        object->dirtifyObjectPos();
        object->dirtifyObjectRect();
    }
    this->updateObjectSection(object);
}

bool GJBaseGameLayer::resetAreaObjectValues(GameObject* object, bool update) {
    if (m_gameState.m_commandIndex <= object->m_unk4C8) return false;
    if (update) this->updateAreaObjectLastValues(object);
    auto result = false;
    if (object->m_positionXOffset != 0.f) {
        object->m_positionX -= object->m_positionXOffset;
        object->m_positionXOffset = 0.f;
        object->m_isUnmodifiedPosDirty = true;
        result = true;
    }
    if (object->m_positionYOffset != 0.f) {
        object->m_positionY -= object->m_positionYOffset;
        object->m_positionYOffset = 0.f;
        object->m_isUnmodifiedPosDirty = true;
        result = true;
    }
    if (object->m_unk2BC != 0.f || object->m_unk2C0 != 0.f) {
        object->m_scaleXOffset -= object->m_unk2BC;
        object->m_scaleX -= object->m_unk2BC;
        object->m_scaleYOffset -= object->m_unk2C0;
        object->m_scaleY -= object->m_unk2C0;
        object->m_unk2BC = 0.f;
        object->m_unk2C0 = 0.f;
        if (!update) object->setRScale(1.f);
    }
    if (object->m_unk2A8 != 0.f || object->m_unk2B0 != 0.f) {
        object->m_rotationXOffset -= object->m_unk2A8;
        object->m_rotationYOffset -= object->m_unk2B0;
        object->m_unk2A8 = 0.f;
        object->m_unk2B0 = 0.f;
        if (!update) object->setRRotation(0.f);
    }
    object->m_unk4C8 = m_gameState.m_commandIndex;
    if (update) {
        if (m_areaObjectsCount < m_areaObjectsIndex) {
            m_areaObjects[m_areaObjectsCount++] = object;
        }
        else {
            m_areaObjects.push_back(object);
            m_areaObjectsIndex++;
            m_areaObjectsCount++;
        }
    }
    else this->updateAreaObjectLastValues(object);
    return result;
}

void GJBaseGameLayer::updateAreaObjectLastValues(GameObject* object) {
    if (object->m_isDecoration2) return;
    if (object->m_unk4C4 != m_gameState.m_commandIndex) {
        object->m_lastPosition.x = object->m_positionX;
        object->m_lastPosition.y = object->m_positionY;
        object->m_unk4C4 = m_gameState.m_commandIndex;
        object->dirtifyObjectRect();
    }
    if (object->m_unk4CC != m_gameState.m_commandIndex) {
        object->m_customScaleX = object->m_scaleX;
        object->m_customScaleY = object->m_scaleY;
        object->m_unk4CC = m_gameState.m_commandIndex;
        object->dirtifyObjectRect();
    }
}
#endif