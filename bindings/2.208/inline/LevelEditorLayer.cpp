#include <Geode/Geode.hpp>

LevelEditorLayer* LevelEditorLayer::get() {
    return GameManager::sharedState()->m_levelEditorLayer;
}

void LevelEditorLayer::setObjectCount(int count) {
    m_objectCount = count;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void LevelEditorLayer::addObjectsAtPosition(cocos2d::CCPoint position, cocos2d::CCArray* objects, cocos2d::CCArray* result) {
    for (int i = 0; i < objects->count(); i++) {
        auto object = static_cast<GameObject*>(objects->objectAtIndex(i));
        if (this->validGroup(object, true)) {
            if (m_nonSquareRotation) {
                if (!m_currentOBB2D->overlaps(m_obb2)) continue;
            }
            else {
                if (!this->getObjectRect(object, false, false).containsPoint(position)) continue;
            }
            result->addObject(object);
        }
    }
}

void LevelEditorLayer::addObjectsInRect(cocos2d::CCRect rect, bool ignoreGroups, cocos2d::CCArray* objects, cocos2d::CCArray* result) {
    for (int i = 0; i < objects->count(); i++) {
        auto object = static_cast<GameObject*>(objects->objectAtIndex(i));
        if (ignoreGroups || this->validGroup(object, true)) {
            if (m_nonSquareRotation) {
                if (!m_currentOBB2D->overlaps(m_obb2)) continue;
            }
            else {
                if (!rect.intersectsRect(this->getObjectRect(object, false, false))) continue;
            }
            result->addObject(object);
        }
    }
}

void LevelEditorLayer::addPlayerCollisionBlock() {
    if (m_collisionBlocksAdded) return;
    m_collisionBlocksAdded = true;
    this->addToSection(m_player1CollisionBlock);
    this->addToSection(m_player2CollisionBlock);
}

void LevelEditorLayer::applyAttributeState(GameObject* dest, GameObject* src) {
    dest->duplicateAttributes(src);
    dest->m_updateParents = true;
}

void LevelEditorLayer::clearPlayerPoints() {
    m_playerPoints.clear();
    m_player2Points.clear();
}

void LevelEditorLayer::clearTouchPoints() {
    m_touchPoints.clear();
}

void LevelEditorLayer::fastUpdateDisabledGroups() {}

void LevelEditorLayer::fullUpdateDisabledGroups() {}

cocos2d::CCPoint LevelEditorLayer::getGridPos(cocos2d::CCPoint position) {
    return position / 30.f;
}

cocos2d::CCPoint LevelEditorLayer::getRelativeOffset(GameObject* object) {
    return GameToolbox::getRelativeOffset(object, object->m_obUnflippedOffsetPositionFromCenter);
}

void LevelEditorLayer::resetObjectVector() {
    for (int i = 0; i < 10000; i++) {
        m_objectVector[i] = nullptr;
    }
}

void LevelEditorLayer::resetToggledGroups() {
    for (int i = 0; i < 10000; i++) {
        m_toggledGroupStates[i] = 0;
        m_toggledGroups[i] = false;
    }
}

void LevelEditorLayer::toggleBackground(bool visible) {
    if (m_background) m_background->setVisible(visible);
}

void LevelEditorLayer::toggleGrid(bool visible) {
    m_drawGridLayer->setVisible(visible);
}

void LevelEditorLayer::triggerFollowCommand(EffectGameObject* object) {
    m_levelSettings->m_effectManager->createFollowCommand(
        object->m_followXMod,
        object->m_followYMod,
        object->m_duration,
        object->m_targetGroupID,
        object->m_centerGroupID,
        object->m_uniqueID,
        object->m_controlID
    );
}

void LevelEditorLayer::triggerPlayerFollowCommand(EffectGameObject* object) {
    m_levelSettings->m_effectManager->createPlayerFollowCommand(
        object->m_followYSpeed,
        object->m_followYDelay,
        object->m_followYOffset,
        object->m_followYMaxSpeed,
        object->m_duration,
        object->m_targetGroupID,
        object->m_uniqueID,
        object->m_controlID
    );
}

void LevelEditorLayer::triggerRotateCommand(EffectGameObject* object) {
    m_levelSettings->m_effectManager->createRotateCommand(
        object->m_times360 * 360.f + object->m_rotationDegrees,
        object->m_duration,
        object->m_targetGroupID,
        object->m_centerGroupID,
        (int)object->m_easingType,
        object->m_easingRate,
        object->m_lockObjectRotation,
        object->m_targetPlayer1,
        object->m_targetPlayer2,
        object->m_uniqueID,
        object->m_controlID
    );
}

void LevelEditorLayer::updateArt(float dt) {
    if (m_playbackMode != PlaybackMode::Not) return;
    this->updateGridLayerParent();
    m_inShaderParent->setVisible(m_inShaderParent->getChildrenCount() > 1 || m_inShaderObjectLayer->getChildrenCount() != 0);
    m_aboveShaderParent->setVisible(m_aboveShaderParent->getChildrenCount() > 1 || m_aboveShaderObjectLayer->getChildrenCount() != 0);
    this->updateGradientLayers();
    this->updateExtraGameLayers();
}

void LevelEditorLayer::updateKeyframeVisibility(bool visible) {}
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::CCScene* LevelEditorLayer::scene(GJGameLevel* level, bool noUI) {
    auto scene = cocos2d::CCScene::create();
    AppDelegate::get()->m_runningScene = scene;
    auto layer = LevelEditorLayer::create(level, noUI);
    scene->addChild(layer);
    scene->setObjType(cocos2d::CCObjectType::LevelEditorLayer);
    return scene;
}

void LevelEditorLayer::addExclusionList(cocos2d::CCArray* groups, cocos2d::CCDictionary* dict) {
    if (!groups || !dict) return;
    auto node = cocos2d::CCNode::create();
    for (int i = 0; i < groups->count(); i++) {
        auto group = static_cast<cocos2d::CCInteger*>(groups->objectAtIndex(i))->getValue();
        if (!dict->objectForKey(group)) dict->setObject(node, group);
    }
}

GameObject* LevelEditorLayer::addObjectFromVector(gd::vector<gd::string>& values, gd::vector<void*>& exists) {
    auto object = GameObject::objectFromVector(values, exists, this, false);
    if (!object) return nullptr;
    if (object->m_objectID == 1329 && m_coinCount.value() > 2) return nullptr;
    if (object->m_objectID == 142) return nullptr;
    object->setVisible(false);
    this->addToSection(object);
    this->addSpecial(object);
    return object;
}

void LevelEditorLayer::addObjectToGroup(GameObject* object, int group) {
    if (object->addToGroup(group) != 1) {
        return;
    }
    this->addToGroup(object,group,false);
}

void LevelEditorLayer::addPlayer2Point(cocos2d::CCPoint point, bool newGroup) {
    if (newGroup || m_player2Points.empty()) m_player2Points.emplace_back();
    m_player2Points.back().push_back(point);
}

void LevelEditorLayer::addPlayerPoint(cocos2d::CCPoint point) {
    m_playerPoints.push_back(point);
}

void LevelEditorLayer::addToRedoList(UndoObject* object) {
    if (m_redoObjects->count() >= (m_increaseMaxUndoRedo ? 1000 : 200)) m_redoObjects->removeObjectAtIndex(0, true);
    m_redoObjects->addObject(object);
}

void LevelEditorLayer::addTouchPoint(cocos2d::CCPoint point) {
    m_touchPoints.push_back(point);
}

void LevelEditorLayer::addToUndoList(UndoObject* object, bool keepRedo) {
    if (!keepRedo) m_redoObjects->removeAllObjects();
    if (m_undoObjects->count() >= (m_increaseMaxUndoRedo ? 1000 : 200)) m_undoObjects->removeObjectAtIndex(0, true);
    m_undoObjects->addObject(object);
}

bool LevelEditorLayer::canPasteState() {
    return m_copyStateObject != nullptr;
}

void LevelEditorLayer::copyParticleState(ParticleGameObject* object) {
    if (!object) return;
    if (!m_particleObject) {
        m_particleObject = ParticleGameObject::create();
        m_particleObject->addColorSprite("edit_eCParticleBtn_001.png");
        m_particleObject->setupCustomSprites("edit_eCParticleBtn_001.png");
        m_particleObject->retain();
    }
    m_particleObject->setParticleString(object->m_particleData);
    m_particleObject->m_hasUniformObjectColor = object->m_hasUniformObjectColor;
    m_particleObject->m_animateOnTrigger = object->m_animateOnTrigger;
}

void LevelEditorLayer::dirtifyTriggers() {
    m_triggersChanged = true;
    m_colorTriggersChanged = true;
    m_pulseTriggersChanged = true;
    m_alphaTriggersChanged = true;
    m_spawnTriggersChanged = true;
}

GameObject* LevelEditorLayer::findGameObject(int uniqueID) {
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_objects)) {
        auto object = static_cast<GameObject*>(obj);
        if (object->m_uniqueID == uniqueID) return object;
    }
    return nullptr;
}

StartPosObject* LevelEditorLayer::findStartPosObject() {
    StartPosObject* ret = nullptr;
    auto xPos = 0.0f;
    auto order = -1;
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_objects)) {
        auto object = static_cast<StartPosObject*>(obj);
        if (object->m_objectID == 31 && !object->m_startSettings->m_disableStartPos) {
            auto currentXPos = object->getPosition().x;
            auto currentOrder = object->m_startSettings->m_targetOrder;
            auto reverseGameplay = object->m_startSettings->m_reverseGameplay;
            if (
                order < currentOrder ||
                (xPos < currentXPos && !reverseGameplay && order <= currentOrder) ||
                (currentXPos < xPos && reverseGameplay && order <= currentOrder)
            ) {
                ret = object;
                order = currentOrder;
                xPos = currentXPos;
            }
        }
    }
    return ret;
}

void LevelEditorLayer::forceShowSelectedObjects(bool show) {
    if (!m_editorUI) return;
    cocos2d::CCArray* objects;
    if (m_editorUI->m_selectedObjects->count() == 0) {
        if (!m_editorUI->m_selectedObject) return;
        objects = cocos2d::CCArray::createWithObject(m_editorUI->m_selectedObject);
    }
    else {
        objects = m_editorUI->m_selectedObjects;
    }
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(objects)) {
        auto object = static_cast<GameObject*>(obj);
        if (show) {
            object->m_isGroupDisabledTemp = object->m_isGroupDisabled;
            object->m_isGroupDisabled = false;
        }
        else {
            object->m_isGroupDisabled = object->m_isGroupDisabledTemp;
        }
    }
}

cocos2d::CCArray* LevelEditorLayer::getAllObjects() {
    return m_objects;
}

DelayedSpawnNode* LevelEditorLayer::getDelayedSpawnNode() {
    DelayedSpawnNode* ret;
    if (m_delayedSpawnNodes2.empty()) {
        ret = new DelayedSpawnNode();
        ret->m_gameObject = nullptr;
        ret->m_spawnDelay = 0.f;
    }
    else {
        ret = m_delayedSpawnNodes2.back();
        m_delayedSpawnNodes2.pop_back();
    }
    m_delayedSpawnNodes.push_back(ret);
    return ret;
}

gd::string LevelEditorLayer::getLockedLayers() {
    auto isFirst = true;
    fmt::memory_buffer buffer;
    for (int i = 0; i < 10000; i++) {
        if (m_lockedLayers[i]) {
            if (!isFirst) fmt::format_to(std::back_inserter(buffer), ",");
            fmt::format_to(std::back_inserter(buffer), "{}", i);
            isFirst = false;
        }
    }
    return fmt::to_string(buffer);
}

int LevelEditorLayer::getNextFreeBlockID(cocos2d::CCArray* exclude) {
    auto dict = cocos2d::CCDictionary::create();
    auto node = cocos2d::CCNode::create();
    auto objects = this->getAllObjects();
    this->addExclusionList(exclude, dict);
    for (int i = 0; i < objects->count(); i++) {
        auto object = static_cast<EffectGameObject*>(objects->objectAtIndex(i));
        if (object->m_classType == GameObjectClassType::Effect || object->m_objectID == 1816) {
            auto id = object->m_itemID;
            if (!dict->objectForKey(id)) dict->setObject(node, id);
        }
    }
    for (int i = 0; i < 1001; i++) {
        if (!dict->objectForKey(i)) return i;
    }
    return 1000;
}

int LevelEditorLayer::getNextFreeSFXGroupID(cocos2d::CCArray* exclude) {
    auto dict = cocos2d::CCDictionary::create();
    auto node = cocos2d::CCNode::create();
    auto objects = this->getAllObjects();
    this->addExclusionList(exclude, dict);
    for (int i = 0; i < objects->count(); i++) {
        auto object = static_cast<SFXTriggerGameObject*>(objects->objectAtIndex(i));
        if (object->m_objectID == 3602 || object->m_objectID == 3603) {
            auto id = object->m_sfxGroup;
            if (id > 0 && !dict->objectForKey(id)) dict->setObject(node, id);
        }
    }
    for (int i = 0; i < 1001; i++) {
        if (!dict->objectForKey(i)) return i;
    }
    return 1000;
}

int LevelEditorLayer::getNextFreeSFXID(cocos2d::CCArray* exclude) {
    auto dict = cocos2d::CCDictionary::create();
    auto node = cocos2d::CCNode::create();
    auto objects = this->getAllObjects();
    this->addExclusionList(exclude, dict);
    for (int i = 0; i < objects->count(); i++) {
        auto object = static_cast<SFXTriggerGameObject*>(objects->objectAtIndex(i));
        if (object->m_objectID == 3602) {
            auto id = object->getUniqueSFXID();
            if (id > 0 && !dict->objectForKey(id)) dict->setObject(node, id);
        }
    }
    for (int i = 0; i < 1001; i++) {
        if (!dict->objectForKey(i)) return i;
    }
    return 1000;
}

cocos2d::CCPoint LevelEditorLayer::getSavedEditorPosition(int index) {
    return index < 10 ? m_savedPositions[index] : cocos2d::CCPoint { 0.f, 0.f };
}

gd::string LevelEditorLayer::getSavedEditorPositions() {
    fmt::memory_buffer buffer;
    for (int i = 0; i < 10; i++) {
        if (i != 0) fmt::format_to(std::back_inserter(buffer), ",");
        fmt::format_to(std::back_inserter(buffer), "{},{}", (int)m_savedPositions[i].x, (int)m_savedPositions[i].y);
    }
    return fmt::to_string(buffer);
}

int LevelEditorLayer::getSectionCount() {
    return m_sections.size();
}

int LevelEditorLayer::getSelectedEditorOrder() {
    if (!m_playbackObject) return 0;
    if (m_playbackObject->m_objectID != 31) return m_playbackObject->m_ordValue;
    return static_cast<StartPosObject*>(m_playbackObject)->m_startSettings->m_targetOrder;
}

cocos2d::CCPoint LevelEditorLayer::getSelectedEffectPos() {
    if (!m_playbackObject) return cocos2d::CCPoint { 0.f, 0.f };
    if (m_playbackObject->m_objectID != 1816) return m_playbackObject->m_speedStart;
    return m_playbackObject->getRealPosition();
}

int LevelEditorLayer::getSelectedOrderChannel() {
    if (!m_playbackObject) return 0;
    if (m_playbackObject->m_objectID != 31) return m_playbackObject->m_channelValue;
    return static_cast<StartPosObject*>(m_playbackObject)->m_startSettings->m_targetChannel;
}

bool LevelEditorLayer::hasAction(bool redo) {
    if (redo) return m_redoObjects->count() != 0;
    else return m_undoObjects->count() != 0;
}

bool LevelEditorLayer::isLayerLocked(int layer) {
    if (layer < 10000 && m_layerLockingEnabled) {
        return m_lockedLayers[layer];
    }
    return false;
}

void LevelEditorLayer::onPausePlaytest() {
    auto director = cocos2d::CCDirector::sharedDirector();
    director->getKeyboardDispatcher()->setBlockRepeat(false);
    m_uiLayer->editorPlaytest(false);
    this->quickUpdateAllPositions();
    this->removePlayerCollisionBlock();
    if (m_playTestSmoothFix) {
        director->resetSmoothFixCounter();
        director->setSmoothFixCheck(false);
    }
    m_playbackMode = PlaybackMode::Paused;
    m_player1->pauseSchedulerAndActions();
    m_player2->pauseSchedulerAndActions();
    m_playtestTimeWarp = m_gameState.m_timeWarp;
    this->updateTimeWarp(1.f);
    m_playtestCameraZoom = m_gameState.m_cameraZoom;
    this->pauseAudio();
    if (m_playtestOrderChanged) this->timeObjectChanged();
}

void LevelEditorLayer::pasteAttributeState(GameObject* object, cocos2d::CCArray* objects) {
    if (!m_copyStateObject) return;

    if (!object) {
        for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(objects)) {
            this->applyAttributeState(static_cast<GameObject*>(obj), m_copyStateObject);
        }
    }
    else this->applyAttributeState(object, m_copyStateObject);

    if (!GameManager::sharedState()->getGameVariable(GameVar::DisablePasteStateGroups)) this->pasteGroupState(object, objects);
}

void LevelEditorLayer::pasteColorState(GameObject* object, cocos2d::CCArray* objects) {
    if (!m_copyStateObject) return;

    if (object) {
        object->duplicateColorMode(m_copyStateObject);
        object->m_updateParents = true;
    }
    else {
        for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(objects)) {
            auto gameObject = static_cast<GameObject*>(obj);
            gameObject->duplicateColorMode(m_copyStateObject);
            gameObject->m_updateParents = true;
        }
    }
}

void LevelEditorLayer::pasteGroupState(GameObject* object, cocos2d::CCArray* objects) {
    if (!m_copyStateObject) return;

    if (object) return this->applyGroupState(object, m_copyStateObject);

    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(objects)) {
        this->applyGroupState(static_cast<GameObject*>(obj), m_copyStateObject);
    }
}

void LevelEditorLayer::pasteParticleState(ParticleGameObject* object, cocos2d::CCArray* objects) {
    if (!m_particleObject) return;

    if (object) {
        object->setParticleString(m_particleObject->m_particleData);
        object->m_hasUniformObjectColor = m_particleObject->m_hasUniformObjectColor;
        object->m_animateOnTrigger = m_particleObject->m_animateOnTrigger;
        object->updateParticle();
    }
    else {
        for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(objects)) {
            auto gameObject = static_cast<ParticleGameObject*>(obj);
            gameObject->setParticleString(m_particleObject->m_particleData);
            gameObject->m_hasUniformObjectColor = m_particleObject->m_hasUniformObjectColor;
            gameObject->m_animateOnTrigger = m_particleObject->m_animateOnTrigger;
            gameObject->updateParticle();
        }
    }
}

void LevelEditorLayer::redoLastAction() {
    return this->handleAction(false, m_redoObjects);
}

void LevelEditorLayer::refreshSpecial(GameObject* object) {
    this->removeSpecial(object);
    this->addSpecial(object);
}

void LevelEditorLayer::removeAllObjects() {
    m_removingAll = true;
    if (m_editorUI) m_editorUI->deselectAll();
    auto objectsCopy = cocos2d::CCArray::createWithCapacity(m_objects->count());
    objectsCopy->addObjectsFromArray(m_objects);
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(objectsCopy)) {
        this->removeObject(static_cast<GameObject*>(obj), true);
    }
    m_redoObjects->removeAllObjects();
    m_undoObjects->removeAllObjects();
    m_objectCount = 0;
    m_removingAll = false;
}

void LevelEditorLayer::removePlayerCollisionBlock() {
    if (!m_collisionBlocksAdded) return;
    m_collisionBlocksAdded = false;
    this->removeObjectFromSection(m_player1CollisionBlock);
    this->removeObjectFromSection(m_player2CollisionBlock);
}

void LevelEditorLayer::resetDelayedSpawnNodes() {
    for (auto node : m_delayedSpawnNodes) {
        m_delayedSpawnNodes2.push_back(node);
    }
    m_delayedSpawnNodes.clear();
}

void LevelEditorLayer::resetEffectTriggerOptim(GameObject* object, cocos2d::CCArray* objects) {
    if (object) {
        if (object->m_dontIgnoreDuration) static_cast<EffectGameObject*>(object)->m_endPosition = cocos2d::CCPoint { 0.f, 0.f };
    }
    else {
        for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(objects)) {
            auto gameObject = static_cast<EffectGameObject*>(obj);
            if (gameObject->m_dontIgnoreDuration) gameObject->m_endPosition = cocos2d::CCPoint { 0.f, 0.f };
        }
    }
}

void LevelEditorLayer::resetMovingObjects() {
    auto objects = this->getAllObjects();
    for (int i = 0; i < objects->count(); i++) {
        auto object = static_cast<GameObject*>(objects->objectAtIndex(i));
        object->resetMoveOffset();
        object->setPosition(object->getRealPosition());
        this->updateObjectSection(object);
    }
}

void LevelEditorLayer::resetPlayback() {
    m_playbackOrder = 0;
    this->clearActivatedAudioTriggers();
    m_activateAudioTriggers = true;
}

void LevelEditorLayer::reverseKeyframeAnimationOrder(int keyframeGroup) {
    static_cast<cocos2d::CCArray*>(m_keyframeGroups->objectForKey(keyframeGroup))->reverseObjects();
    this->updateKeyframeOrder(keyframeGroup);
}

void LevelEditorLayer::reverseObjectChanged(EffectGameObject* object) {
    if (object->m_isReverse) m_drawGridLayer->addToSpeedObjects(object);
    else m_drawGridLayer->removeFromSpeedObjects(object);
}

void LevelEditorLayer::saveEditorPosition(cocos2d::CCPoint& position, int index) {
    if (index < 10) m_savedPositions[index] = position;
}

void LevelEditorLayer::sortBatchnodeChildren(float unused) {
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_batchNodes)) {
        static_cast<cocos2d::CCSpriteBatchNode*>(obj)->manualSortAllChildren();
    }
}

void LevelEditorLayer::stopPlayback() {
    auto engine = FMODAudioEngine::sharedEngine();
    engine->stopAllMusic(true);
    engine->stopAllEffects();
}

void LevelEditorLayer::timeObjectChanged() {
    m_spawnOrderObjectsChanged = true;
}

void LevelEditorLayer::toggleGround(bool enable) {
    m_hideGround = !enable;
    m_groundLayer->setVisible(enable);
}

void LevelEditorLayer::toggleLockActiveLayer() {
    if (m_currentLayer < 0 || m_currentLayer > 9999 || !m_layerLockingEnabled) return;
    m_lockedLayers[m_currentLayer] = !m_lockedLayers[m_currentLayer];
}

void LevelEditorLayer::undoLastAction() {
    return this->handleAction(true, m_undoObjects);
}

void LevelEditorLayer::unlockAllLayers() {
    for (int i = 0; i < 10000; i++) {
        m_lockedLayers[i] = false;
    }
}

void LevelEditorLayer::updateGridLayer() {
    auto parent = m_shaderLayer && m_shaderLayer->m_state.m_usesShaders ? m_aboveShaderObjectLayer : m_objectLayer;
    if (m_drawGridLayer->getParent() != parent) {
        m_drawGridLayer->retain();
        m_drawGridLayer->removeFromParentAndCleanup(false);
        parent->addChild(m_drawGridLayer, m_drawGridLayer->getZOrder());
        m_drawGridLayer->release();
    }
}

void LevelEditorLayer::updatePreviewAnim() {
    auto previewAnimations = GameManager::sharedState()->getGameVariable(GameVar::PreviewAnimations);
    if (m_previewAnimations == previewAnimations) return;
    m_previewAnimations = previewAnimations;
    for (int i = 0; i < m_objects->count(); i++) {
        auto object = static_cast<EnhancedGameObject*>(m_objects->objectAtIndex(i));
        if (object->m_classType == GameObjectClassType::Animated) {
            static_cast<AnimatedGameObject*>(object)->updateObjectAnimation();
        }
        if (!m_previewAnimations) {
            if (object->getHasSyncedAnimation()) object->resetSyncedAnimation();
            if (object->getHasRotateAction()) object->updateRotateAction(0.f);
        }
    }
}

bool LevelEditorLayer::validGroup(GameObject* object, bool checkLockedLayers) {
    int currentLayer = m_currentLayer;
    int editorLayer = object->m_editorLayer;
    int editorLayer2 = object->m_editorLayer2;
    if (editorLayer2 == 0) editorLayer2 = -1;
    auto result = currentLayer == -1 || editorLayer2 == currentLayer || editorLayer == currentLayer;
    if (checkLockedLayers) {
        editorLayer2 = std::clamp(editorLayer2, -1, 9999);
        result = false;
        if (currentLayer == -1 || editorLayer2 == currentLayer || editorLayer == currentLayer) {
            editorLayer = std::clamp(editorLayer, 0, 9999);
            result = !m_lockedLayers[editorLayer] && (editorLayer2 == -1 || !m_lockedLayers[editorLayer2]);
        }
    }
    return result;
}
#endif

#if defined(GEODE_IS_IOS)
void LevelEditorLayer::addDelayedSpawn(EffectGameObject* object, float delay) {
    auto node = this->getDelayedSpawnNode();
    node->m_gameObject = object;
    node->m_spawnDelay = delay;
    if (m_delayedSpawnNodes.size() > 1) m_sortSpawnNodes = true;
}
#endif

