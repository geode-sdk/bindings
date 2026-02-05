#include <Geode/Bindings.hpp>
#include <Geode/utils/cocos.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GJEffectManager::addAllInheritedColorActions(cocos2d::CCArray* actions) {
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_unkObject148->m_pElements, element, temp) {
        auto action = static_cast<ColorAction*>(element->getObject());
        if (action->m_copyID > 0) {
            if (!actions) actions = cocos2d::CCArray::create();
            actions->addObject(action);
        }
    }
}

cocos2d::ccColor3B GJEffectManager::colorForIndex(int index) {
    if (auto colorAction = this->getColorAction(index)) return colorAction->m_toColor;
    else return { 255, 255, 255 };
}

cocos2d::CCArray* GJEffectManager::getAllColorSprites() {
    auto arr = cocos2d::CCArray::create();
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_unkDict150->m_pElements, element, temp) {
        arr->addObject(element->getObject());
    }
    return arr;
}

bool GJEffectManager::hasPulseEffectForGroupID(int id) {
    if (auto it = m_pulseEffectMap.find(id); it != m_pulseEffectMap.end()) return !it->second.empty();
    return false;
}

void GJEffectManager::itemWasUsed(int id) {}

const char* GJEffectManager::keyForGroupIDColor(int id, cocos2d::ccColor3B const& color, bool mainColor) {
    fmt::memory_buffer out;
    fmt::format_to(std::back_inserter(out), "{}_{}{}{}_{}", id, color.r, color.g, color.b, (int)mainColor);
    return out.data();
}

float GJEffectManager::opacityForIndex(int index) {
    if (auto colorAction = this->getColorAction(index)) return colorAction->m_toOpacity;
    else return 1.f;
}

void GJEffectManager::resetTriggeredIDs() {
    m_unkMap498.clear();
}

void GJEffectManager::timerWasUsed(int id) {}

void GJEffectManager::updateActiveOpacityEffects() {
    for (auto it = m_opacityEffectMap.begin(); it != m_opacityEffectMap.end();) {
        auto& action = it->second;
        if (action.m_finished && action.m_currentValue >= 1.f) it = m_opacityEffectMap.erase(it);
        else ++it;
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::ccColor3B GJEffectManager::getMixedColor(cocos2d::ccColor3B color1, cocos2d::ccColor3B color2, float ratio) {
    auto r = color1.r * ratio + color2.r * (1.f - ratio);
    auto g = color1.g * ratio + color2.g * (1.f - ratio);
    auto b = color1.b * ratio + color2.b * (1.f - ratio);
    return { std::clamp<uint8_t>(r, 0, 255), std::clamp<uint8_t>(g, 0, 255), std::clamp<uint8_t>(b, 0, 255) };
}

cocos2d::ccColor3B GJEffectManager::activeColorForIndex(int index) {
    if (index == 1010) return { 0, 0, 0 };
    else if (index == 0 || index == 1011) return { 255, 255, 255 };
    else {
        if (auto sprite = this->getColorSprite(index)) return sprite->m_color;
        else return { 255, 255, 255 };
    }
}

float GJEffectManager::activeOpacityForIndex(int index) {
    if (auto sprite = this->getColorSprite(index)) return sprite->m_opacity;
    else return 1.f;
}

void GJEffectManager::addCountToItem(int itemId, int value) {
    itemId = std::clamp(itemId, 0, 9999);
    this->updateCountForItem(itemId, value + m_itemCountMap[itemId]);
}

void GJEffectManager::addMoveCalculation(CCMoveCNode* node, cocos2d::CCPoint offset, GameObject* object) {
    node->m_unk0d1 = true;
    m_unkVector708.push_back({
        .m_moveNode = node,
        .m_offset = offset,
        .m_gameObject = object
    });
}

bool GJEffectManager::checkCollision(int const& blockAID, int const& blockBID) {
    auto key = std::min(blockAID, blockBID) * 10000 + std::max(blockAID, blockBID) + 10000000;
    return m_unkMap288.count(key) != 0;
}

void GJEffectManager::colorActionChanged(ColorAction* action) {
    if (action->m_copyID > 0) m_colorActionDict->setObject(action, action->m_colorID);
    else m_colorActionDict->removeObjectForKey(action->m_colorID);
}

bool GJEffectManager::colorExists(int col) {
    return m_colorActionVector[std::clamp(col, 0, 1101)] != nullptr;
}

cocos2d::ccColor3B GJEffectManager::colorForEffect(cocos2d::ccColor3B color, cocos2d::ccHSVValue hsv) {
    return GameToolbox::transformColor(color, hsv);
}

void GJEffectManager::createTransformCommand(double scaleX, double scaleY, double property450, double property451, bool onlyMove, float duration, int targetID, int centerID, int easingType, float easingRate, bool p10, bool relativeRotation, int uniqueID, int controlID) {
    auto& command = m_unkVector560.emplace_back();
    command.m_targetScaleX = scaleX;
    command.m_targetScaleY = scaleY;
    command.m_transformTriggerProperty450 = property450;
    command.m_transformTriggerProperty451 = property451;
    command.m_onlyMove = onlyMove;
    command.m_targetGroupID = targetID;
    command.m_centerGroupID = centerID;
    command.m_transformRelatedFalse = p10;
    command.m_relativeRotation = relativeRotation;
    command.m_triggerUniqueID = uniqueID;
    command.m_controlID = controlID;
    command.runTransformCommand(duration, easingType, easingRate);
}

OpacityEffectAction* GJEffectManager::getOpacityActionForGroup(int id) {
    if (auto it = m_opacityEffectMap.find(id); it != m_opacityEffectMap.end()) {
        return &it->second;
    }
    return nullptr;
}

gd::string GJEffectManager::getSaveString() {
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    fmt::memory_buffer out;
    HASH_ITER(hh, m_unkDict150->m_pElements, element, temp) {
        auto action = static_cast<ColorAction*>(element->getObject());
        if (
            action->m_colorID < 1000 && action->m_fromColor.r == 255 && action->m_fromColor.g == 255 && action->m_fromColor.b == 255 &&
            !action->m_blending && action->m_fromOpacity == 1.f && action->m_copyID == 0 && action->m_playerColor < 1
        ) {
            continue;
        }

        fmt::format_to(std::back_inserter(out), "1_{}_2_{}_3_{}_", action->m_fromColor.r, action->m_fromColor.g, action->m_fromColor.b);
        if (action->m_paused) {
            fmt::format_to(std::back_inserter(out), "19_1_");
        }
        if (action->m_toColor.r != 0 || action->m_toColor.g != 0 || action->m_toColor.b != 0) {
            fmt::format_to(std::back_inserter(out), "11_{}_12_{}_13_{}_", action->m_toColor.r, action->m_toColor.g, action->m_toColor.b);
        }
        if (action->m_playerColor != 0) {
            fmt::format_to(std::back_inserter(out), "4_{}_", action->m_playerColor);
        }
        if (action->m_duration != 0.f) {
            fmt::format_to(std::back_inserter(out), "16_{}_", action->m_duration);
        }
        fmt::format_to(std::back_inserter(out), "6_{}_", action->m_colorID);
        if (action->m_blending) {
            fmt::format_to(std::back_inserter(out), "5_1_");
        }
        fmt::format_to(std::back_inserter(out), "7_{}_15_{}_", action->m_fromOpacity, action->m_toOpacity);
        if (action->m_copyOpacity) {
            fmt::format_to(std::back_inserter(out), "17_1_");
        }
        if (action->m_copyID != 0) {
            fmt::format_to(std::back_inserter(out), "9_{}_", action->m_copyID);
        }
        if (
            action->m_copyHSV.h != 0.f || action->m_copyHSV.s != 1.f || action->m_copyHSV.v != 1.f ||
            action->m_copyHSV.absoluteSaturation || action->m_copyHSV.absoluteBrightness
        ) {
            fmt::format_to(std::back_inserter(out), "10_{}_", GameToolbox::stringFromHSV(action->m_copyHSV, "a"));
        }
        if (action->m_deltaTime > 0.f) {
            fmt::format_to(std::back_inserter(out), "14_{}_", action->m_deltaTime);
        }
        fmt::format_to(std::back_inserter(out), "18_{}_8_1|", action->m_uniqueID);
    }
    return fmt::to_string(out);
}

bool GJEffectManager::hasActiveDualTouch() {
    for (auto& action : m_unkVector1e0) {
        if (action.m_dualMode && !action.m_disabled) return true;
    }
    return false;
}

bool GJEffectManager::hasBeenTriggered(int objectUniqueID, int playerUniqueID) {
    auto bound = m_unkMap498.lower_bound(std::make_pair(objectUniqueID, playerUniqueID));
    return bound != m_unkMap498.end() && *bound <= std::make_pair(objectUniqueID, playerUniqueID);
}

bool GJEffectManager::isGroupEnabled(int id) {
    return m_unkVector438[std::clamp(id, 0, 9999)];
}

void GJEffectManager::objectsCollided(int blockAID, int blockBID) {
    auto key = std::min(blockAID, blockBID) * 10000 + std::max(blockAID, blockBID) + 10000000;
    if (auto it = m_unkMap288.find(key); it != m_unkMap288.end()) {
        it->second = true;
    }
    else {
        this->handleObjectCollision(true, blockAID, blockBID);
        m_unkMap288[key] = true;
    }
}

void GJEffectManager::pauseTimer(int id) {
    if (m_timerItemMap.count(id) != 0) m_timerItemMap[id].m_active = false;
}

void GJEffectManager::playerDied() {
    if (m_triggerEffectDelegate) {
        for (int i = 0; i < m_unkVector248.size(); i++) {
            auto& action = m_unkVector248[i];
            if (action.m_disabled) continue;
            m_triggerEffectDelegate->toggleGroupTriggered(action.m_targetGroupID, action.m_activateGroup, action.m_remapKeys, action.m_triggerUniqueID, action.m_controlID);
        }
    }
}

void GJEffectManager::preCollisionCheck() {
    for (auto& pair : m_unkMap288) {
        pair.second = false;
    }
}

void GJEffectManager::processMoveCalculations() {
    for (auto& calc : m_unkVector708) {
        auto angle = -calc.m_gameObject->m_rotationXOffset * M_PI / 180.f;
        cocos2d::CCPoint position;
        position.x = calc.m_offset.x * cosf(angle) - calc.m_offset.y * sinf(angle);
        position.y = calc.m_offset.x * sinf(angle) + calc.m_offset.y * cosf(angle);
        auto diff = position - calc.m_offset;
        calc.m_moveNode->m_unk038 += diff.x;
        calc.m_moveNode->m_unk040 += diff.y;
        calc.m_moveNode->m_unk090 += diff.x;
        calc.m_moveNode->m_unk098 += diff.y;
        calc.m_moveNode->m_unk0d1 = false;
    }
    m_unkVector708.clear();
}

void GJEffectManager::processPulseActions() {
    for (int i = 0; i < m_pulseEffectVector.size(); i++) {
        auto& action = m_pulseEffectVector[i];
        auto colorAction = this->getColorAction(action.m_targetGroupID);
        if (action.m_colorIndex == 0 && (!colorAction || colorAction->m_copyID == 0)) {
            colorAction->m_colorSprite->m_copyColor = this->colorForPulseEffect(colorAction->m_colorSprite->m_copyColor, &action);
        }
    }
}

void GJEffectManager::removeAllPulseActions() {
    m_pulseEffectVector.clear();
    m_unkVector2f0.clear();
}

void GJEffectManager::removeColorAction(int id) {
    id = std::clamp(id, 0, 1101);
    m_unkObject148->removeObjectForKey(id);
    m_colorActionVector[id] = nullptr;
    m_colorActionDict->removeObjectForKey(id);
}

void GJEffectManager::removePersistentFromAllItems() {
    m_persistentItemCountMap.clear();
}

void GJEffectManager::removePersistentFromAllTimers() {
    m_persistentTimerItemSet.clear();
}

void GJEffectManager::resetMoveActions() {
    m_unkVector560.clear();
    m_unkMap578.clear();
    m_unkMap618.clear();
    m_unkVector6c0.clear();
}

void GJEffectManager::resetToggledGroups() {
    m_unkVector438.assign(m_unkVector438.size(), true);
    m_unkMap460.clear();
}

void GJEffectManager::resetUsedItemState() {
    m_unk3f0.clear();
    m_unk430.clear();
}

void GJEffectManager::resumeTimer(int id) {
    if (m_timerItemMap.count(id) != 0) m_timerItemMap[id].m_active = true;
}

void GJEffectManager::runCountTrigger(int id, int targetCount, bool multiActivate, int targetID, bool activateGroup, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    m_countTriggerActions[id].emplace_back(targetID, targetCount, activateGroup, multiActivate, id, this->countForItem(id), remapKeys, uniqueID, controlID);
}

void GJEffectManager::runDeathTrigger(int targetID, bool activateGroup, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    m_unkVector248.emplace_back(targetID, activateGroup, remapKeys, uniqueID, controlID);
}

void GJEffectManager::runTimerTrigger(int id, double targetTime, bool multiActivate, int targetID, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    m_unkMap3f8[id].emplace_back(targetID, targetTime, multiActivate, id, remapKeys, uniqueID, controlID);
}

void GJEffectManager::runTouchTriggerCommand(int targetID, bool holdMode, TouchTriggerType touchType, TouchTriggerControl touchControl, bool dualMode, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    m_unkVector1e0.emplace_back(targetID, holdMode, touchType, touchControl, dualMode, remapKeys, uniqueID, controlID);
}

void GJEffectManager::saveCompletedMove(int groupId, double dx, double dy) {
    auto& entry = m_unkMap578[groupId];
    entry.first += dx;
    entry.second += dy;
}

void GJEffectManager::setFollowing(int targetID, int targetPosID, bool following) {
    auto key = targetID * 2000 + targetPosID;
    if (following) m_unkMap4c8.insert(key);
    else m_unkMap4c8.erase(key);
}

bool GJEffectManager::shouldBlend(int id) {
    auto action = m_colorActionVector[std::clamp(id, 0, 1101)];
    return action && action->m_blending;
}

void GJEffectManager::spawnObject(GameObject* object, float delay, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    m_spawnTriggerActions.emplace_back(object, delay, remapKeys, uniqueID, controlID);
}

void GJEffectManager::toggleGroup(int id, bool activate) {
    id = std::clamp(id, 0, 9999);
    if (activate) {
        m_unkVector438[id] = true;
        m_unkMap460.erase(id);
    }
    else {
        m_unkVector438[id] = false;
        m_unkMap460.insert(id);
    }
}

void GJEffectManager::toggleItemPersistent(int id, bool persistent) {
    if (persistent) m_persistentItemCountMap[id] = m_itemCountMap.count(id) != 0 ? m_itemCountMap[id] : 0;
    else m_persistentItemCountMap.erase(id);
}

void GJEffectManager::toggleTimerPersistent(int id, bool persistent) {
    if (persistent) m_persistentTimerItemSet.insert(id);
    else m_persistentTimerItemSet.erase(id);
}

void GJEffectManager::traverseInheritanceChain(InheritanceNode* node) {
    while (node) {
        m_unkArray430->addObject(node);
        node = node->m_inheritanceNode;
    }
    for (auto currentNode : geode::cocos::CCArrayExt<InheritanceNode, false>(m_unkArray430)) {
        this->calculateInheritedColor(currentNode->m_colorID, currentNode->m_colorAction);
    }
    m_unkArray430->removeAllObjects();
}

CCMoveCNode* GJEffectManager::tryGetMoveCommandNode(int id) {
    auto it = m_unkMap618.find(id);
    return it != m_unkMap618.end() ? it->second : nullptr;
}

void GJEffectManager::updateColorAction(ColorAction* action) {
    if (action->m_copyID == 0) {
        action->m_colorSprite->m_color = action->m_color;
        action->m_colorSprite->m_opacity = action->m_currentOpacity * 255.f;
    }
}

void GJEffectManager::updateColorEffects(float dt) {
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_unkObject148->m_pElements, element, temp) {
        auto action = static_cast<ColorAction*>(element->getObject());
        action->step(dt);
        if (action->m_copyID == 0) {
            action->m_colorSprite->m_color = action->m_color;
            action->m_colorSprite->m_opacity = action->m_currentOpacity * 255.f;
        }
    }
}

void GJEffectManager::updateColors(cocos2d::ccColor3B color1, cocos2d::ccColor3B color2) {
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_unkObject148->m_pElements, element, temp) {
        auto action = static_cast<ColorAction*>(element->getObject());
        if (action->m_playerColor == 1) action->m_fromColor = color1;
        else if (action->m_playerColor == 2) action->m_fromColor = color2;
    }
}

void GJEffectManager::updateOpacityAction(OpacityEffectAction* action) {
    if (action->m_finished && action->m_currentValue >= 1.f) m_opacityEffectMap.erase(action->m_targetGroupID);
}

void GJEffectManager::updateOpacityEffects(float dt) {
    for (auto it = m_opacityEffectMap.begin(); it != m_opacityEffectMap.end();) {
        auto& action = it->second;
        action.step(dt);
        if (action.m_finished && action.m_currentValue >= 1.f) it = m_opacityEffectMap.erase(it);
        else ++it;
    }
}

bool GJEffectManager::wasFollowing(int targetID, int targetPosID) {
    return m_unkMap4c8.count(targetID * 2000 + targetPosID) != 0;
}
#endif

#if defined(GEODE_IS_IOS)
bool GJEffectManager::wouldCreateLoop(InheritanceNode* node, int id) {
    while (node) {
        if (node->m_colorID == id) return true;
        node = node->m_inheritanceNode;
    }
    return false;
}
#endif

