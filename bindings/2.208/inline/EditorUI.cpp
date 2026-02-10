#include <Geode/Geode.hpp>

EditorUI* EditorUI::get() {
    auto lel = LevelEditorLayer::get();
    if (!lel) return nullptr;
    return lel->m_editorUI;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void EditorUI::addSnapPosition(cocos2d::CCPoint position) {
    auto node = cocos2d::CCNode::create();
    node->setPosition(position);
    m_snapPositions->addObject(node);
}

void EditorUI::colorSelectClosed(cocos2d::ccColor3B color) {}

void EditorUI::constrainGameLayerPosition() {
    this->constrainGameLayerPosition(-100.f, -100.f);
}

void EditorUI::createGlow() {}

void EditorUI::doPasteInPlace(bool withColor) {
    auto& clipboard = GameManager::sharedState()->m_editorClipboard;
    if (clipboard.empty()) return;
    this->pasteObjects(clipboard, withColor, false);
    this->updateButtons();
    this->updateObjectInfoLabel();
}

bool EditorUI::editColorButtonUsable() {
    return m_selectedObject || m_selectedObjects->count() != 0;
}

void EditorUI::editObject3(cocos2d::CCObject* sender) {
    this->editObjectSpecial(1);
}

void EditorUI::findTriggerTest() {
    auto objects = m_editorLayer->getAllObjects();
    for (int i = 0; i < objects->count(); i++) {
        auto obj = static_cast<GameObject*>(objects->objectAtIndex(i));
    }
}

CCMenuItemSpriteExtra* EditorUI::getButton(char const* text, int width, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu) {
    auto sprite = ButtonSprite::create(text, width, 0, 1.f, true, "goldFont.fnt", "GJ_button_01.png", 0.f);
    auto button = CCMenuItemSpriteExtra::create(sprite, this, selector);
    if (menu) menu->addChild(button);
    return button;
}

CCMenuItemSpriteExtra* EditorUI::getModeBtn(char const* frameName, int tag) {
    auto button = CCMenuItemSpriteExtra::create(cocos2d::CCSprite::createWithSpriteFrameName(frameName), this, menu_selector(EditorUI::toggleMode));
    button->setTag(tag);
    return button;
}

CCMenuItemSpriteExtra* EditorUI::getSimpleButton(gd::string frameName, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu) {
    auto sprite = cocos2d::CCSprite::createWithSpriteFrameName(frameName.c_str());
    sprite->setScale(std::min(18.f / sprite->getContentSize().width, 18.f / sprite->getContentSize().height));
    auto button = CCMenuItemSpriteExtra::create(sprite, this, selector);
    if (menu) menu->addChild(button);
    return button;
}

CCMenuItemSpriteExtra* EditorUI::getSpriteButton(char const* spriteFrameName, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale) {
    return this->getSpriteButton(spriteFrameName, selector, menu, scale, 1, {0, 0});
}

GJTransformState& EditorUI::getTransformState() {
    m_transformControl->saveToState(m_transformState);
    return m_transformState;
}

bool EditorUI::isLiveColorSelectTrigger(GameObject* object) {
    return object && object->m_classType == GameObjectClassType::Effect && (object->m_isColorTrigger || object->m_objectID == 1006);
}

bool EditorUI::liveEditColorUsable() {
    return m_selectedObject || m_selectedObjects->count() != 0;
}

void EditorUI::onDeleteAll(cocos2d::CCObject* sender) {
    this->deselectAll();
    m_editorLayer->removeAllObjects();
}

void EditorUI::onPasteInPlace(cocos2d::CCObject* sender) {
    this->doPasteInPlace(false);
}

void EditorUI::playCircleAnim(cocos2d::CCPoint position, float radius, float duration) {
    auto circleWave = CCCircleWave::create(1.f, radius, duration, false, false);
    circleWave->m_color.r = 255;
    circleWave->m_color.g = 255;
    circleWave->m_color.b = 255;
    circleWave->setPosition(position);
    this->addChild(circleWave, 0);
    circleWave->m_circleMode = CircleMode::Outline;
}

void EditorUI::playerTouchBegan(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto touchLocation = this->convertToNodeSpace(touch->getLocation());
    if (m_editorLayer->m_gameState.m_isDualMode) {
        if (winSize.width * .5f < touchLocation.x) {
            if (m_playerTouchID2 == -1) {
                m_playerTouchID2 = touch->getID();
                m_editorLayer->queueButton(1, true, true);
            }
        }
    }
    else if (GameManager::sharedState()->getGameVariable(GameVar::AlwaysLimitControls)) {
        if (m_playerTouchID2 == -1) {
            m_playerTouchID2 = touch->getID();
            m_editorLayer->queueButton(1, true, true);
        }
    }
    if (m_playerTouchID1 == -1) {
        m_playerTouchID1 = touch->getID();
        m_editorLayer->queueButton(1, true, false);
    }
}

void EditorUI::playerTouchEnded(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {
    if (touch->getID() == m_playerTouchID1) {
        m_playerTouchID1 = -1;
        m_editorLayer->queueButton(1, false, false);
    }
    else if (touch->getID() == m_playerTouchID2) {
        m_playerTouchID2 = -1;
        m_editorLayer->queueButton(1, false, true);
    }
}

float EditorUI::rotationforCommand(EditCommand command) {
    switch (command) {
        case EditCommand::RotateCW: return 90.f;
        case EditCommand::RotateCCW: return -90.f;
        case EditCommand::RotateCW45: return 45.f;
        case EditCommand::RotateCCW45: return -45.f;
        default: return 0.f;
    }
}

void EditorUI::setupEditMenu() {
    this->createMoveMenu();
    this->updateEditMenu();
}

void EditorUI::setupTransformControl() {}

bool EditorUI::shouldSnap(GameObject* object) {
    return (int)object->getRotation() % 90 == 0;
}

void EditorUI::showDeleteConfirmation() {
    FLAlertLayer::create(
        this,
        "Delete All",
        "Are you sure you want to <cr>Delete</c> all objects? (<cy>This action cannot be undone</c>)",
        "Cancel",
        "Yes",
        300.f
    )->show();
}

void EditorUI::tryUpdateTimeMarkers() {}

void EditorUI::updateDeleteMenu() {
    m_deleteMenu->setVisible(m_selectedMode == 1);
    this->updateDeleteButtons();
}

void EditorUI::updateEditMenu() {
    m_editButtonBar->setVisible(m_selectedMode == 3);
}

void EditorUI::updateGridNodeSize(int objectID) {
    auto size = ObjectToolbox::sharedState()->gridNodeSizeForKey(objectID);
    m_gridSize = size;
    m_editorLayer->m_drawGridLayer->m_gridSize = size;
}

void EditorUI::updateGroupIDBtn2() {
    m_goToBaseBtn->setVisible(m_editorLayer->m_currentLayer >= 0);
}

void EditorUI::updateSpecialUIElements() {
    this->updateObjectInfoLabel();
    this->updateScaleControl();
}

void EditorUI::zoomGameLayer(bool zoomingIn) {
    auto scale = m_editorLayer->m_objectLayer->getScale();
    this->updateZoom(std::clamp(zoomingIn ? scale + .1f : scale - .1f, .1f, 4.f));
}
#endif

#if defined(GEODE_IS_WINDOWS)
EditorUI::~EditorUI() {
    CC_SAFE_RELEASE(m_selectedObjects);
    CC_SAFE_RELEASE(m_deleteObjects);
    CC_SAFE_RELEASE(m_createButtonArray);
    CC_SAFE_RELEASE(m_customObjectButtonArray);
    CC_SAFE_RELEASE(m_createButtonBars);
    CC_SAFE_RELEASE(m_tabsArray);
    CC_SAFE_RELEASE(m_editButtonDict);
    CC_SAFE_RELEASE(m_rotationControl);
    CC_SAFE_RELEASE(m_scaleControl);
    CC_SAFE_RELEASE(m_transformControl);
    CC_SAFE_RELEASE(m_snapPositions);
    CC_SAFE_RELEASE(m_uiItems);
    CC_SAFE_RELEASE(m_customTabControls);
}

EditorUI* EditorUI::create(LevelEditorLayer* editorLayer) {
    auto ret = new EditorUI();
    if (ret->init(editorLayer)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void EditorUI::transformChangeEnded() {}

void EditorUI::angleChangeEnded() {}

void EditorUI::scaleChangeEnded() {}

bool EditorUI::arrayContainsClass(cocos2d::CCArray* objects, int classType) {
    for (int i = 0; i < objects->count(); i++) {
        if ((int)static_cast<GameObject*>(objects->objectAtIndex(i))->m_classType == classType) return true;
    }
    return false;
}

bool EditorUI::canAllowMultiActivate(GameObject* object, cocos2d::CCArray* objects) {
    if (object) {
        return object->canAllowMultiActivate();
    }
    else {
        for (int i = 0; i < objects->count(); i++) {
            auto obj = static_cast<GameObject*>(objects->objectAtIndex(i));
            if (!obj->canAllowMultiActivate()) {
                return false;
            }
        }
        return true;
    }
}

void EditorUI::centerCameraOnObject(GameObject* object) {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto scale = m_editorLayer->m_objectLayer->getScale();
    m_editorLayer->m_objectLayer->setPosition(winSize * .5f - object->getPosition() * scale);
    this->constrainGameLayerPosition();
}

void EditorUI::changeSelectedObjects(cocos2d::CCArray* objects, bool ignoreFilter) {
    this->deselectAll();
    if (objects->count() == 0) return;
    this->selectObjects(objects, ignoreFilter);
    m_canActivateControls = true;
    this->updateObjectInfoLabel();
    this->updateScaleControl();
}

gd::string EditorUI::copyObjectsDetailed(cocos2d::CCArray* objects) {
    qsort(objects->data->arr, objects->data->num, sizeof(GameObject*), [](void const* a, void const* b) {
        auto objA = *static_cast<GameObject* const*>(a);
        auto objB = *static_cast<GameObject* const*>(b);
        return objA->m_uniqueID - objB->m_uniqueID;
    });
    auto groupCenter = this->getGroupCenter(objects, false);
    std::string result = "";
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(objects)) {
        auto object = static_cast<GameObject*>(obj);
        if (object->m_objectID == 749) continue;
        auto position = object->getPosition();
        object->setPosition(position - groupCenter);
        result += object->getSaveString(m_editorLayer) + ";";
        object->setPosition(position);
    }
    return result;
}

cocos2d::CCArray* EditorUI::createExtras(cocos2d::CCArray* objects) {
    if (!objects || objects->count() == 0) return nullptr;
    auto extras = cocos2d::CCArray::create();
    for (int i = 0; i < objects->count(); i++) {
        auto object = static_cast<GameObject*>(objects->objectAtIndex(i));
        if (object->m_objectID > 2807 && object->m_objectID < 2838) {
            this->createExtrasForObject(object->m_objectID, object, extras);
        }
    }
    return extras;
}

void EditorUI::deactivateRotationControl() {
    m_rotationTouchID = -1;
    if (m_rotationControl->isVisible()) {
        m_rotationControl->setVisible(false);
        m_rotationControl->finishTouch();
    }
}

void EditorUI::deleteObject(GameObject* object, bool noUndo) {
    if (!object) return;
    object->m_wasSelected = object->m_isSelected;
    m_editorLayer->removeObject(object, noUndo);
    this->deactivateRotationControl();
    this->deactivateScaleControl();
    this->deactivateTransformControl();
}

void EditorUI::deleteTypeFromObjects(int id, cocos2d::CCArray* objects) {
    for (int i = 0; i < objects->count(); i++) {
        auto obj = static_cast<GameObject*>(objects->objectAtIndex(i));
        if (obj->m_objectID != id) continue;
        if (obj->m_linkedGroup > 0) {
            if (auto stickyGroup = m_editorLayer->getStickyGroup(obj->m_linkedGroup)) stickyGroup->removeObject(obj, true);
        }
        this->deleteObject(obj, true);
        objects->removeObjectAtIndex(i, true);
    }
}

void EditorUI::deselectObject() {
    this->stopActionByTag(124);
    if (m_selectedObject) m_selectedObject->deselectObject();
    m_selectedObject = nullptr;
    this->toggleEditObjectButton();
    m_canActivateControls = true;
    m_lastTouchPoint = cocos2d::CCPoint { 0.f, 0.f };
}

void EditorUI::disableButton(CreateMenuItem* button) {
    auto sprite = static_cast<ButtonSprite*>(button->getNormalImage());
    if (sprite->m_subBGSprite) sprite->m_subBGSprite->setColor({ 127, 127, 127 });
    else if (sprite->m_BGSprite) sprite->m_BGSprite->setColor({ 127, 127, 127 });
    if (button->m_objectID < 0) return;
    auto object = static_cast<EffectGameObject*>(sprite->m_subSprite);
    if (object->m_classType == GameObjectClassType::Effect && object->isColorObject() && object->m_shouldPreview) {
        object->setObjectColor({ 127, 100, 100 });
    }
    else {
        object->setObjectColor({ 127, 127, 127 });
    }
    object->setChildColor({ 127, 100, 100 });
}

int EditorUI::edgeForObject(int id, int type) {
    if (id == 1348) {
        switch (type) {
            case 0: return 1359;
            case 3: return 1395;
            case 7: return 1363;
        }
    }
    else if (id == 1349) {
        switch (type) {
            case 0: return 1360;
            case 1: return 1357;
            case 4: return 1364;
        }
    }
    else if (id == 1350) {
        switch (type) {
            case 2: return 1361;
            case 3: return 1356;
            case 6: return 1365;
        }
    }
    else if (id == 1351) {
        switch (type) {
            case 1: return 1358;
            case 2: return 1362;
            case 5: return 1366;
        }
    }
    else if (id == 1431 || id == 1432 || id == 1433) {
        switch (type) {
            case 0: return 1435;
            case 1: return 1436;
            case 2: return 1437;
            case 3: return 1434;
            case 4: return 1439;
            case 5: return 1441;
            case 6: return 1440;
            case 7: return 1438;
        }
    }
    else if (id == 1461) {
        switch (type) {
            case 0: return 1629;
            case 1: return 1625;
            case 2: return 1633;
            case 3: return 1621;
            case 4: return 1638;
            case 5: return 1640;
            case 6: return 1639;
            case 7: return 1637;
        }
    }
    else if (id == 1462) {
        switch (type) {
            case 0: return 1630;
            case 1: return 1627;
            case 2: return 1634;
            case 3: return 1623;
            case 4: return 1642;
            case 5: return 1644;
            case 6: return 1643;
            case 7: return 1641;
        }
    }
    else if (id == 1463) {
        switch (type) {
            case 0: return 1631;
            case 1: return 1626;
            case 2: return 1635;
            case 3: return 1622;
            case 4: return 1646;
            case 5: return 1648;
            case 6: return 1647;
            case 7: return 1645;
        }
    }
    else if (id == 1464) {
        switch (type) {
            case 0: return 1632;
            case 1: return 1628;
            case 2: return 1636;
            case 3: return 1624;
            case 4: return 1650;
            case 5: return 1652;
            case 6: return 1651;
            case 7: return 1649;
        }
    }
    return 0;
}

int EditorUI::editorLayerForArray(cocos2d::CCArray* objects, bool layer2) {
    if (!objects) return 0;
    auto previousLayer = -1;
    auto currentLayer = -1;
    for (int i = 0; i < objects->count(); i++) {
        auto obj = static_cast<GameObject*>(objects->objectAtIndex(i));
        currentLayer = layer2 ? obj->m_editorLayer2 : obj->m_editorLayer;
        if (previousLayer != -1 && previousLayer != currentLayer) return 0;
        previousLayer = currentLayer;
    }
    return currentLayer != -1 ? currentLayer : 0;
}

void EditorUI::enableButton(CreateMenuItem* button) {
    auto sprite = static_cast<ButtonSprite*>(button->getNormalImage());
    if (sprite->m_subBGSprite) sprite->m_subBGSprite->setColor({ 255, 255, 255 });
    else if (sprite->m_BGSprite) sprite->m_BGSprite->setColor({ 255, 255, 255 });
    if (button->m_objectID < 0) return;
    auto object = static_cast<EffectGameObject*>(sprite->m_subSprite);
    if (object->m_classType == GameObjectClassType::Effect && object->isColorObject() && object->m_shouldPreview) {
        object->setObjectColor({ 200, 200, 255 });
    }
    else {
        auto objectID = object->m_objectID;
        if (objectID == 918 || objectID == 919 || (objectID != 1584 && objectID != 2012) && object->getMainColorMode() != 1010) {
            object->setObjectColor({ 255, 255, 255 });
        }
        else {
            object->setObjectColor({ 0, 0, 0 });
        }
    }
    object->setChildColor({ 200, 200, 255 });
}

CreateMenuItem* EditorUI::getCreateMenuItemButton(cocos2d::CCSprite* sprite, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale, int background, cocos2d::CCPoint offset) {
    const char* backgroundImage;
    switch (background) {
        case 2: backgroundImage = "GJ_button_02.png"; break;
        case 3: backgroundImage = "GJ_button_03.png"; break;
        case 4: backgroundImage = "GJ_button_04.png"; break;
        case 5: backgroundImage = "GJ_button_05.png"; break;
        case 6: backgroundImage = "GJ_button_06.png"; break;
        default: backgroundImage = "GJ_button_01.png"; break;
    }
    auto buttonSprite = ButtonSprite::create(sprite, 32, 0, 32.f, 1.f, true, backgroundImage, true);
    auto button = CreateMenuItem::create(buttonSprite, nullptr, this, selector);
    button->setScale(scale);
    button->m_baseScale = scale;
    if (menu) menu->addChild(button);
    buttonSprite->updateSpriteOffset(offset);
    return button;
}

GameObject* EditorUI::getCycledObject(cocos2d::CCArray* objects, bool dontSkipSelected) {
    GameObject* cycledObject = nullptr;
    for (int i = 0; i < objects->count(); i++) {
        auto obj = static_cast<GameObject*>(objects->objectAtIndex(i));
        if ((!dontSkipSelected && obj->m_isSelected) || (cycledObject && cycledObject->m_unk460 <= obj->m_unk460 )) break;
        if (this->canSelectObject(obj)) cycledObject = obj;
    }
    if (cycledObject) cycledObject->m_unk460 = m_cycledObjectIndex;
    return cycledObject;
}

cocos2d::CCPoint EditorUI::getGridSnappedPos(cocos2d::CCPoint pos) {
    auto size = m_editorLayer->m_drawGridLayer->m_gridSize;
    auto xVal = std::floorf(pos.x / size);
    auto yVal = std::floorf(pos.y / size);
    return this->getLimitedPosition(ccp((xVal + 0.5) * size, (yVal + 0.5) * size));
}

void EditorUI::getGroupInfo(GameObject* selectedObject, cocos2d::CCArray* selectedObjects, int& objectID, int& classType, int& objectType) {
    objectID = classType = objectType = -1;
    if (selectedObject) {
        objectID = selectedObject->m_objectID;
        classType = (int)selectedObject->m_classType;
        objectType = (int)selectedObject->m_savedObjectType;
    } else if (selectedObjects) {
        for (int i = 0; i < selectedObjects->count(); i++) {
            auto obj = static_cast<GameObject*>(selectedObjects->objectAtIndex(i));
            if (objectID != 0) {
                if (objectID == -1) objectID = obj->m_objectID;
                else if (objectID != obj->m_objectID) objectID = 0;
            }
            if (classType != 0) {
                if (classType == -1) classType = (int)obj->m_classType;
                else if (classType != (int)obj->m_classType) classType = 0;
            }
            if (objectType != 0) {
                if (objectType == -1) objectType = (int)obj->m_savedObjectType;
                else if (objectType != (int)obj->m_savedObjectType) objectType = 0;
            }
        }
    }
}

cocos2d::CCPoint EditorUI::getRelativeOffset(GameObject* object) {
    return GameToolbox::getRelativeOffset(object, this->offsetForKey(object->m_objectID));
}

float EditorUI::getSnapAngle(GameObject* object, cocos2d::CCArray* objects) {
    if (objects && objects->count() > 0) {
        for (int i = 0; i < objects->count(); i++) {
            auto rotation = m_editorLayer->rotationForSlopeNearObject(static_cast<GameObject*>(objects->objectAtIndex(i)));
            if (rotation != -1.f) return rotation;
        }
        return -1.f;
    }
    else if (object) return m_editorLayer->rotationForSlopeNearObject(object);
    else return -1.f;
}

cocos2d::CCPoint EditorUI::getTouchPoint(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {
    return this->convertToWorldSpace(cocos2d::CCDirector::sharedDirector()->convertToGL(touch->getLocationInView()));
}

void EditorUI::onToggleGuide(EffectGameObject* object) {
    object->m_shouldPreview = !object->m_shouldPreview;
    if (m_editorLayer->tryUpdateSpeedObject(object, false)) m_speedObjectsUpdated = true;
    this->tryUpdateTimeMarkers();
}

void EditorUI::onToggleSelectedOrder(EffectGameObject* object) {
    auto playbackObject = m_editorLayer->m_playbackObject;
}

bool EditorUI::positionIsInSnapped(cocos2d::CCPoint position) {
    for (int i = 0; i < m_snapPositions->count(); i++) {
        auto& snapPos = static_cast<cocos2d::CCNode*>(m_snapPositions->objectAtIndex(i))->getPosition();
        if (snapPos.x == position.x && snapPos.y == position.y) return true;
    }
    return false;
}

cocos2d::CCPoint EditorUI::positionWithoutOffset(GameObject* object) {
    return object->getPosition() - this->getRelativeOffset(object);
}

void EditorUI::recreateButtonTabs() {
    m_reloadItems = false;
    auto gameManager = GameManager::sharedState();
    auto buttonsPerRow = gameManager->getIntGameVariable(GameVar::EditorButtonsPerRow);
    auto buttonRows = gameManager->getIntGameVariable(GameVar::EditorButtonRows);
    for (int i = 0; i < m_createButtonBars->count(); i++) {
        static_cast<EditButtonBar*>(m_createButtonBars->objectAtIndex(i))->reloadItems(buttonsPerRow, buttonRows);
    }
    m_editButtonBar->reloadItems(buttonsPerRow, buttonRows);
}

void EditorUI::resetObjectEditorValues(cocos2d::CCArray* objects) {
    if (!objects) return;
    for (int i = 0; i < objects->count(); i++) {
        auto obj = static_cast<GameObject*>(objects->objectAtIndex(i));
        obj->updateStartPos();
        m_objectEditorStates[obj->m_uniqueID].loadValues(obj);
    }
}

void EditorUI::selectAll() {
    auto objects = m_editorLayer->m_objects;
    auto selected = cocos2d::CCArray::create();
    for (int i = 0; i < objects->count(); i++) {
        auto obj = static_cast<GameObject*>(objects->objectAtIndex(i));
        if (m_editorLayer->validGroup(obj, false)) {
            selected->addObject(obj);
        }
    }
}

void EditorUI::selectObjectsInRect(cocos2d::CCRect rect) {
    auto objects = m_editorLayer->objectsInRect(rect, false);
    if (objects->count() > 0) {
        for (int i = 0; i < objects->count(); i++) {
            auto obj = static_cast<GameObject*>(objects->objectAtIndex(i));
            if ((m_selectedObject && m_selectedObject->m_uniqueID != obj->m_uniqueID) || !m_selectedObjects->containsObject(obj)) {
                this->createUndoSelectObject(false);
                break;
            }
        }
        this->selectObjects(objects, false);
        this->updateSpecialUIElements();
    }
}

void EditorUI::showLiveColorSelectForModeSpecial(int colorID) {
    if (m_selectedObject) {
        m_selectedObject->deselectObject();
    }
    else {
        for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_selectedObjects)) {
            static_cast<GameObject*>(obj)->deselectObject();
        }
    }
    this->showLiveColorSelectForMode(colorID);
}

void EditorUI::showMaxCoinError() {
    auto alert = FLAlertLayer::create(
        this,
        "Max Coins",
        "You cannot add more than <cy>3</c> <cg>coins</c> in a single level.",
        "OK",
        nullptr,
        300.f,
        false,
        0.f,
        1.f
    );
    alert->setTag(122);
    alert->show();
}

void EditorUI::toggleDuplicateButton() {
    if (m_selectedObject || m_selectedObjects->count() != 0) {
        m_copyPasteBtn->m_animationEnabled = true;
        m_copyPasteBtn->setColor({ 255, 255, 255 });
        m_copyPasteBtn->setOpacity(255);
        m_copyBtn->m_animationEnabled = true;
        m_copyBtn->setColor({ 255, 255, 255 });
        m_copyBtn->setOpacity(255);
    }
    else {
        m_copyPasteBtn->m_animationEnabled = false;
        m_copyPasteBtn->setColor({ 166, 166, 166 });
        m_copyPasteBtn->setOpacity(175);
        m_copyBtn->m_animationEnabled = false;
        m_copyBtn->setColor({ 166, 166, 166 });
        m_copyBtn->setOpacity(175);
    }
    auto hasClipboard = !GameManager::sharedState()->m_editorClipboard.empty();
    m_pasteBtn->m_animationEnabled = hasClipboard;
    if (hasClipboard) {
        m_pasteBtn->setColor({ 255, 255, 255 });
        m_pasteBtn->setOpacity(255);
    }
    else {
        m_pasteBtn->setColor({ 166, 166, 166 });
        m_pasteBtn->setOpacity(175);
    }
}

void EditorUI::toggleLockUI(bool lockUI) {
    m_isPaused = lockUI;
}

void EditorUI::toggleStickyControls(bool enable) {
    m_stickyControlsEnabled = enable;
    m_linkBtn->setEnabled(enable);
          m_linkBtn->setVisible(enable);
          m_unlinkBtn->setEnabled(enable);
          m_unlinkBtn->setVisible(enable);
}

void EditorUI::transformObjectsReset() {
    auto selectedObjects = m_selectedObjects;
    if (!selectedObjects || selectedObjects->count() == 0) {
        if (!m_selectedObject) return;
        selectedObjects = cocos2d::CCArray::createWithObject(m_selectedObject);
    }
    if (selectedObjects) this->transformObjects(selectedObjects, m_pivotPoint, 1.f, 1.f, 0.f, 0.f, m_transformState.m_skewX, m_transformState.m_skewY);
}

float EditorUI::valueFromXPos(float xPos) {
    auto xMin = this->getXMin(0);
    auto sectionCount = std::max(m_editorLayer->getSectionCount(), 100);
    auto scale = m_editorLayer->m_objectLayer->getScale();
    return std::clamp(-(xPos - xMin) / (sectionCount * 100.f * scale), 0.f, 1.f);
}

float EditorUI::xPosFromValue(float value) {
    auto xMin = this->getXMin(0);
    auto sectionCount = std::max(m_editorLayer->getSectionCount(), 100);
    auto scale = m_editorLayer->m_objectLayer->getScale();
    return sectionCount * 100.f * scale * value - xMin;
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MAC) || defined(GEODE_IS_ANDROID)
EditorUI* EditorUI::getUI() { return this; }
#endif

#if defined(GEODE_IS_IOS)

void EditorUI::closeLiveColorSelect() {
    if (m_colorOverlay) {
        m_colorOverlay->closeColorSelect(nullptr);
        m_colorOverlay = nullptr;
    }
}

void EditorUI::closeLiveHSVSelect() {
    if (m_hsvOverlay) {
        m_hsvOverlay->closeColorSelect(nullptr);
        m_hsvOverlay = nullptr;
    }
}

void EditorUI::onAssignNewGroupID() {
    auto selectedObjects = m_selectedObject ? cocos2d::CCArray::createWithObject(m_selectedObject) : m_selectedObjects;
    if (selectedObjects->count() == 0) return;
    auto groupID = m_editorLayer->getNextFreeGroupID(nullptr);
    for (int i = 0; i < selectedObjects->count(); i++) {
        auto obj = static_cast<GameObject*>(selectedObjects->objectAtIndex(i));
        if (obj->addToGroup(groupID) == 1) m_editorLayer->addToGroup(obj, groupID, false);
    }
    this->updateObjectInfoLabel();
}
#endif

