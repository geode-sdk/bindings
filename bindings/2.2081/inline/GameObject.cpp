#include <Geode/Bindings.hpp>

void GameObject::firstSetup() {}

void GameObject::triggerObject(GJBaseGameLayer* layer, int uniqueID, gd::vector<int> const* remapKeys) {}

void GameObject::customObjectSetup(gd::vector<gd::string>& values, gd::vector<void*>& exists) {}

void GameObject::triggerActivated(float xPosition) {}

void GameObject::animationTriggered() {}

void GameObject::activatedByPlayer(PlayerObject* player) {}

bool GameObject::hasBeenActivatedByPlayer(PlayerObject* player) { return false; }

bool GameObject::hasBeenActivated() { return false; }

bool GameObject::canAllowMultiActivate() { return false; }

void GameObject::blendModeChanged() {}

void GameObject::updateMainParticleOpacity(unsigned char opacity) {}

void GameObject::updateSecondaryParticleOpacity(unsigned char opacity) {}

bool GameObject::canReverse() { return false; }

bool GameObject::isSpecialSpawnObject() { return false; }

bool GameObject::canBeOrdered() { return false; }

void GameObject::setObjectLabel(cocos2d::CCLabelBMFont* label) {}

bool GameObject::getHasSyncedAnimation() { return false; }

bool GameObject::getHasRotateAction() { return false; }

bool GameObject::canMultiActivate(bool multiActivate) { return false; }

void GameObject::updateTextKerning(int kerning) {}

int GameObject::getTextKerning() { return false; }

cocos2d::CCLabelBMFont* GameObject::getObjectLabel() { return nullptr; }

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::CCSprite* GameObject::addCustomBlackChild(gd::string frame, float opacity, bool color) {
    if (color) {
        return this->addCustomColorChild(frame);
    }
    else {
        auto ret = this->addCustomChild(frame, { 0.f, 0.f }, -2);
        ret->setColor({ 0, 0, 0 });
        m_blackChildOpacity = opacity;
        ret->setOpacity(opacity * 255);
        m_blackChildOpacityLocked = true;
        return ret;
    }
}

cocos2d::CCSprite* GameObject::addInternalChild(cocos2d::CCSprite* parent, gd::string frame, cocos2d::CCPoint offset, int zOrder) {
    auto spr = cocos2d::CCSprite::createWithSpriteFrameName(frame.c_str());
    spr->setPosition(parent->convertToNodeSpace({0.f, 0.f}) + offset);
    parent->addChild(spr, zOrder);
    return spr;
}

void GameObject::addRotation(float rotationX, float rotationY) {
    this->setRotationX(this->getRotationX() + rotationX);
    this->setRotationY(this->getRotationY() + rotationY);
}

void GameObject::createColorGroupContainer(int size) {
    if (!m_colorGroups) {
        m_colorGroups = new std::array<short, 10>();
        for (int i = 0; i < size; i++) {
            (*m_colorGroups)[i] = 0;
        }
    }
}

void GameObject::createOpacityGroupContainer(int size) {
    if (!m_opacityGroups) {
        m_opacityGroups = new std::array<short, 10>();
        for (int i = 0; i < size; i++) {
            (*m_opacityGroups)[i] = 0;
        }
    }
}

bool GameObject::didScaleXChange() {
    return (int)(m_scaleX * 10000) != (int)(m_customScaleX * 10000);
}

bool GameObject::didScaleYChange() {
    return (int)(m_scaleY * 10000) != (int)(m_customScaleY * 10000);
}

bool GameObject::dontCountTowardsLimit() {
    return m_objectID == 31;
}

cocos2d::CCRect GameObject::getBoundingRect() {
    return cocos2d::CCRectApplyAffineTransform({ 0.f, 0.f, m_width, m_height }, this->nodeToParentTransform());
}

cocos2d::CCRect GameObject::getOuterObjectRect() {
    if (m_isOrientedBoxDirty) this->updateOrientedBox();
    return m_orientedBox->getBoundingRect();
}

void GameObject::quickUpdatePosition2() {
    m_obPosition.x = m_positionX;
    m_obPosition.y = m_positionY;
}

void GameObject::removeColorSprite() {
    if (m_colorSprite) {
        m_colorSprite->release();
        m_colorSprite = nullptr;
    }
}

void GameObject::reorderColorSprite() {}

void GameObject::resetMainColorMode() {
    if (auto color = this->getMainColor()) {
        color->m_defaultColorID = std::clamp(color->m_defaultColorID, 0, 1101);
        color->m_colorID = 0;
    }
}

void GameObject::resetRScaleForced() {
    m_fScaleX = 0.f;
    m_fScaleY = 0.f;
    this->setRScaleX(1.f);
    this->setRScaleY(1.f);
}

void GameObject::resetSecondaryColorMode() {
    if (auto color = this->getSecondaryColor()) {
        color->m_defaultColorID = std::clamp(color->m_defaultColorID, 0, 1101);
        color->m_colorID = 0;
    }
}

void GameObject::setSecondaryColorMode(int id) {
    if (auto color = this->getSecondaryColor()) {
        color->m_colorID = std::clamp(id, 0, 1101);
    }
}

void GameObject::setupColorSprite(int id, bool mainColor) {
    if (mainColor) m_mainActionSprite = m_goEffectManager->getColorSprite(id);
    else m_detailActionSprite = m_goEffectManager->getColorSprite(id);
}

bool GameObject::shouldNotHideAnimFreeze() {
    return m_objectID == 1855;
}

double GameObject::slopeYPos(GameObject* object) {
    return this->slopeYPos(object->getObjectRect());
}

void GameObject::updateCustomColorType(short type) {
    m_customColorType = type;
    m_customSpriteColor = this->getRelativeSpriteColor(1) == nullptr;
}

void GameObject::updateMainColorOnly() {
    if (m_activeMainColorID != 0 && m_colorGroupCount != 0 && m_opacityGroupCount != 0) {
        this->updateMainColor(this->colorForMode(m_activeMainColorID, true));
    }
}

void GameObject::updateMainOpacity() {
    m_baseColor->m_opacity = this->opacityModForMode(m_activeMainColorID, true);
}

void GameObject::updateSecondaryColorOnly() {
    if (this->hasSecondaryColor() && m_activeDetailColorID != 0 && m_groupCount != 0) {
        this->updateSecondaryColor(this->colorForMode(m_activeDetailColorID, false));
    }
}

void GameObject::updateSecondaryOpacity() {
    m_detailColor->m_opacity = this->opacityModForMode(m_activeDetailColorID, false);
}

void GameObject::updateUnmodifiedPositions() {
    if (m_isDisabled) {
        m_isDisabled = false;
        m_unmodifiedPositionX = m_positionX - m_positionXOffset;
        m_unmodifiedPositionY = m_positionY - m_positionYOffset;
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
bool GameObject::isBasicEnterEffect(int id) {
    return (id > 21 && id < 29) || (id > 54 || id < 60) || id == 1915;
}

void GameObject::resetMID() {
    *reinterpret_cast<int*>(geode::base::get() + 0x6ba158) = 10;
}

void GameObject::update(float dt) {}

void GameObject::particleWasActivated() {}

bool GameObject::shouldDrawEditorHitbox() { return true; }

void GameObject::addNewSlope01(bool dontDraw) {
    if (dontDraw) this->setDontDraw(true);
    auto sprite = this->addCustomChild("blockOutline_14new_001.png", { 0.f, 0.f }, 2);
    sprite->setRotation(-45.f);
}

void GameObject::addNewSlope01Glow(bool dontDraw) {
    if (!m_glowSprite) return;
    if (dontDraw) m_glowSprite->setDontDraw(true);
    auto sprite = cocos2d::CCSprite::createWithSpriteFrameName(this->getGlowFrame("blockOutline_14new_001.png").c_str());
    sprite->setRotation(-45.f);
    m_glowSprite->addChild(sprite);
    sprite->setPosition(m_glowSprite->convertToNodeSpace({ 0.f, 0.f }));
}

void GameObject::addNewSlope02(bool dontDraw) {
    if (dontDraw) this->setDontDraw(true);
    auto sprite = this->addCustomChild("blockOutline_15new_001.png", { 0.f, 0.f }, 2);
    sprite->setRotation(-26.5f);
}

void GameObject::addNewSlope02Glow(bool dontDraw) {
    if (!m_glowSprite) return;
    if (dontDraw) m_glowSprite->setDontDraw(true);
    auto sprite = cocos2d::CCSprite::createWithSpriteFrameName(this->getGlowFrame("blockOutline_15new_001.png").c_str());
    sprite->setRotation(-26.5f);
    m_glowSprite->addChild(sprite);
    sprite->setPosition(m_glowSprite->convertToNodeSpace({ 0.f, 0.f }));
}

void GameObject::addToCustomScaleX(float scale) {
    m_isDirty = true;
    m_isObjectRectDirty = true;
    m_scaleXOffset += scale;
    m_scaleX += scale;
}

void GameObject::addToCustomScaleY(float scale) {
    m_isDirty = true;
    m_isObjectRectDirty = true;
    m_scaleYOffset += scale;
    m_scaleY += scale;
}

void GameObject::addToOpacityGroup(int group) {
    if (m_opacityGroupCount < 10 && group > 0 && group < 10000) {
        this->createOpacityGroupContainer(10);
        if (m_opacityGroupCount > 0) {
            for (int i = 0; i < m_opacityGroupCount; i++) {
                if ((*m_opacityGroups)[i] == group) return;
            }
        }
        (*m_opacityGroups)[m_opacityGroupCount] = group;
        m_opacityGroupCount++;
    }
}

void GameObject::addToTempOffset(double offsetX, double offsetY) {
    if (!m_tempOffsetXRelated) m_positionX += offsetX;
    m_positionY += offsetY;
}

void GameObject::assignUniqueID() {
    auto uniqueID = reinterpret_cast<int*>(geode::base::get() + 0x6ba158);
    m_uniqueID = *uniqueID;
    m_unknown5 = *uniqueID;
    (*uniqueID)++;
}

bool GameObject::belongsToGroup(int group) {
    if (m_groupCount > 0) {
        for (int i = 0; i < m_groupCount; i++) {
            if ((*m_groups)[i] == group) return true;
        }
    }
    return false;
}

void GameObject::calculateOrientedBox() {
    m_shouldUseOuterOb = true;
    this->updateOrientedBox();
    this->getObjectRect();
}

bool GameObject::canChangeCustomColor() {
    return this->canChangeMainColor() || this->canChangeSecondaryColor();
}

bool GameObject::canChangeMainColor() {
    return m_baseColor->m_defaultColorID != 0;
}

bool GameObject::canChangeSecondaryColor() {
    return m_detailColor && m_detailColor->m_defaultColorID != 0;
}

bool GameObject::canRotateFree() {
    auto type = m_objectType;
    return (
        type != GameObjectType::Solid
        && type != GameObjectType::Breakable
        && type != GameObjectType::Slope
    ) || m_isNoTouch;
}

void GameObject::createSpriteColor(int type) {
    if (type == 2) {
        if (!m_detailColor) m_detailColor = new GJSpriteColor();
    }
    else {
        if (!m_baseColor) m_baseColor = new GJSpriteColor();
    }
}

void GameObject::deselectObject() {
    m_isSelected = false;
    this->updateObjectEditorColor();
}

void GameObject::destroyObject() {
    m_isDisabled = true;
    m_isDisabled2 = true;
    this->setOpacity(0);
}

void GameObject::dirtifyObjectPos() {
    m_isObjectPosDirty = true;
    m_isUnmodifiedPosDirty = true;
}

void GameObject::dirtifyObjectRect() {
    m_isObjectRectDirty = true;
    m_isOrientedBoxDirty = true;
}

void GameObject::disableObject() {
    m_isDisabled = true;
    m_isDisabled2 = true;
    this->setOpacity(0);
    this->triggerActivated(0.f);
}

cocos2d::ccColor3B GameObject::editorColorForCustomMode(int id) {
    auto index = (id < 5 ? id : id - 5) % 12;
    switch (index) {
        case 0: return { 210, 255, 167 };
        case 1: return { 167, 255, 167 };
        case 2: return { 165, 255, 209 };
        case 3: return { 167, 255, 255 };
        case 4: return { 166, 209, 255 };
        case 5: return { 167, 167, 255 };
        case 6: return { 209, 166, 255 };
        case 7: return { 255, 167, 255 };
        case 8: return { 255, 166, 209 };
        case 9: return { 255, 167, 167 };
        case 10: return { 255, 209, 166 };
        case 11: return { 255, 255, 167 };
        default: return { 255, 255, 255 };
    }
}

void GameObject::fastRotateObject(float rotation) {
    m_rotationXOffset += rotation;
    m_rotationYOffset += rotation;
    this->addRotation(rotation);
    if (m_objectType != GameObjectType::Decoration && !m_shouldUseOuterOb) {
        this->calculateOrientedBox();
    }
}

const char* GameObject::getBallFrame(int index) {
    return cocos2d::CCString::createWithFormat("rod_ball_%02d_001.png", std::clamp(index, 0, 3))->getCString();
}

int GameObject::getColorIndex() {
    switch (m_objectID) {
        case 29: return 1000;
        case 30: return 1001;
        case 105: return 1004;
        case 744: return 1003;
        case 899: return m_targetColor;
        case 900: return 1009;
        case 915: return 1002;
        default: return 0;
    }
}

ZLayer GameObject::getCustomZLayer() {
    return m_zLayer;
}

bool GameObject::getGroupDisabled() {
    return m_isGroupDisabled;
}

int GameObject::getGroupID(int index) {
    if (index < 10 && m_groups) {
        return (*m_groups)[index];
    }
    return 0;
}

gd::string GameObject::getGroupString() {
    fmt::memory_buffer buffer;
    auto first = true;
    for (int i = 0; i < 10; i++) {
        auto group = (*m_groups)[i];
        if (group > 0) {
            if (!first) fmt::format_to(std::back_inserter(buffer), ".");
            fmt::format_to(std::back_inserter(buffer), "{}", group);
            first = false;
        }
    }
    return fmt::to_string(buffer);
}

cocos2d::CCPoint const& GameObject::getLastPosition() {
    return m_lastPosition;
}

GJSpriteColor* GameObject::getMainColor() {
    return m_baseColor;
}

int GameObject::getMainColorMode() {
    if (auto color = this->getMainColor()) return color->getColorMode();
    return 0;
}

float GameObject::getObjectRadius() {
    return m_scaleX == 1.f && m_scaleY == 1.f ? m_objectRadius : m_objectRadius * std::max(m_scaleX, m_scaleY);
}

cocos2d::CCRect* GameObject::getObjectRectPointer() {
    if (m_isObjectRectDirty) this->getObjectRect();
    return &m_objectRect;
}

ZLayer GameObject::getObjectZLayer() {
    return m_zLayer != ZLayer::Default ? m_zLayer : m_defaultZLayer;
}

int GameObject::getObjectZOrder() {
    return m_zOrder != 0 ? m_zOrder : m_defaultZOrder;
}

GJSpriteColor* GameObject::getSecondaryColor() {
    return m_detailColor;
}

int GameObject::getSecondaryColorMode() {
    if (auto color = this->getSecondaryColor()) return color->getColorMode();
    return 0;
}

float GameObject::getSlopeAngle() {
    cocos2d::CCRect rect = getObjectRect();
    return atanf(rect.size.height / rect.size.width);
}

cocos2d::CCPoint GameObject::getUnmodifiedPosition() {
    return { (float)(m_positionX - m_positionXOffset), (float)(m_positionY - m_positionYOffset) };
}

cocos2d::ccColor3B const& GameObject::groupColor(cocos2d::ccColor3B const& color, bool mainColor) {
    m_groupColor = color;
    if (m_groupCount > 0) {
        for (int i = 0; i < m_groupCount; i++) {
            m_groupColor = m_goEffectManager->colorForGroupID((*m_groups)[i], color, mainColor);
        }
    }
    return m_groupColor;
}

void GameObject::groupWasDisabled() {
    m_enabledGroupsCounter--;
    m_isGroupDisabled = m_enabledGroupsCounter < 1;
}

void GameObject::groupWasEnabled() {
    m_enabledGroupsCounter++;
    m_isGroupDisabled = m_enabledGroupsCounter < 1;
}

bool GameObject::hasSecondaryColor() {
    return m_colorSprite;
}

bool GameObject::ignoreEnter() {
    return m_ignoreEnter;
}

bool GameObject::ignoreFade() {
    return m_ignoreFade;
}

bool GameObject::init(char const* frame) {
    if (!CCSpritePlus::initWithSpriteFrameName(frame)) return false;
    this->commonSetup();
    m_bUnkBool2 = true;
    return true;
}

bool GameObject::isColorObject() {
    if (m_customColorType == 0) {
        if (m_maybeNotColorable) return false;
    }
    else if (m_customColorType == 1) return false;
    if (this->hasSecondaryColor()) return false;
    auto defaultColorID = m_baseColor->m_defaultColorID;
    return defaultColorID != 1004 && defaultColorID != 0;
}

bool GameObject::isColorTrigger() {
    return m_objectID == 29 || m_objectID == 30 || m_objectID == 105 || m_objectID == 744 || m_objectID == 899 || m_objectID == 900 || m_objectID == 915;
}

bool GameObject::isConfigurablePortal() {
    auto id = m_objectID;
    return id == 12 || id == 13 || id == 47 || id == 111 || id == 286 || id == 287 || id == 660 || id == 745 || id == 1331 || id == 1933;
}

bool GameObject::isEditorSpawnableTrigger() {
    auto id = m_objectID;
    return id == 29 || id == 30 || id == 105 || id == 744 || id == 899 || id == 900 || id == 901 || id == 915 || id == 1006 || id == 1007 || id == 1049 || id == 1268 || id == 1346 ||
        id == 1347 || id == 1585 || id == 1595 || id == 1611 || id == 1612 || id == 1613 || id == 1616 || id == 1811 || id == 1814 || id == 1815 || id == 1817 || id == 1912 ||
        id == 1913 || id == 1914 || id == 1916 || id == 1917 || id == 1932 || id == 1934 || id == 1935 || id == 2015 || id == 2062 || id == 2066 || id == 2067 || id == 2068 ||
        id == 2899 || id == 2900 || id == 2901 || id == 2903 || id == 2904 || id == 2905 || id == 2907 || id == 2909 || id == 2910 || id == 2911 || id == 2912 || id == 2913 ||
        id == 2914 || id == 2915 || id == 2916 || id == 2917 || id == 2919 || id == 2920 || id == 2921 || id == 2922 || id == 2923 || id == 2924 || id == 2925 || id == 2999 ||
        id == 3006 || id == 3007 || id == 3008 || id == 3009 || id == 3010 || id == 3011 || id == 3012 || id == 3013 || id == 3014 || id == 3015 || id == 3016 || id == 3022 ||
        id == 3024 || id == 3029 || id == 3030 || id == 3031 || id == 3033 || id == 3602 || id == 3603 || id == 3604 || id == 3605 || id == 3606 || id == 3607 || id == 3608 ||
        id == 3609 || id == 3612 || id == 3613 || id == 3614 || id == 3615 || id == 3617 || id == 3618 || id == 3619 || id == 3620 || id == 3640 || id == 3641 || id == 3655 ||
        id == 3660 || id == 3661 || id == 3662;
}

bool GameObject::isSettingsObject() {
    return m_objectID == 3662 || m_objectID == 3613;
}

bool GameObject::isSpeedObject() {
    auto id = m_objectID;
    return id == 200 || id == 201 || id == 202 || id == 203 || id == 1334 || id == 1917 || id == 1934 || id == 1935 || id == 2900 || id == 2902 || id == 3022 || id == 3027;
}

bool GameObject::isStoppableTrigger() {
    auto id = m_objectID;
    return id == 29 || id == 30 || id == 105 || id == 744 || id == 899 || id == 900 || id == 901 || id == 915 || id == 1006 || id == 1007 || id == 1268 || id == 1346 || id == 1347 ||
        id == 1595 || id == 1611 || id == 1615 || id == 1812 || id == 1814 || id == 1815 || id == 1913 || id == 1916 || id == 2015 || id == 2067 || id == 2903 || id == 2999 ||
        id == 3006 || id == 3007 || id == 3008 || id == 3009 || id == 3010 || id == 3016 || id == 3033 || id == 3602 || id == 3604 || id == 3614 || id == 3615;
}

void GameObject::makeInvisible() {
    m_isDisabled2 = true;
    m_isInvisible = true;
    this->setOpacity(0);
}

void GameObject::makeVisible() {
    m_isDisabled2 = false;
    m_isInvisible = false;
    this->setOpacity(255);
}

float GameObject::opacityModForMode(int id, bool mainColor) {
    auto ret = 1.f;
    if (id > 0) {
        auto actionSprite = mainColor ? m_mainActionSprite : m_detailActionSprite;
        uint8_t opacity = actionSprite->m_opacity;
        if (opacity < 250) ret = opacity / 255.f;
    }
    if (m_opacityGroupCount > 0) ret *= this->groupOpacityMod();
    return ret;
}

void GameObject::quickUpdatePosition() {
    auto pos = ccp(m_positionX, m_positionY);
    cocos2d::CCSprite::setPosition(pos);
    if (m_colorSprite && !m_colorSpriteLocked) m_colorSprite->setPosition(pos);
}

void GameObject::removeGlow() {
    if (m_glowSprite) {
        m_glowSprite->removeMeAndCleanup();
        m_glowSprite = nullptr;
    }
}

void GameObject::resetColorGroups() {
    if (m_colorGroupCount > 0) {
        for (int i = 0; i < m_colorGroupCount; i++) {
            (*m_colorGroups)[i] = 0;
        }
    }
    m_colorGroupCount = 0;
}

void GameObject::resetGroupDisabled() {
    m_enabledGroupsCounter = 0;
    m_isGroupDisabled = false;
}

void GameObject::resetGroups() {
    m_groupCount = 0;
}

void GameObject::resetMoveOffset() {
    m_positionX = m_startPosition.x;
    m_positionY = m_startPosition.y;
}

void GameObject::setCustomZLayer(int zLayer) {
    if (m_zFixedZLayer) return;
    m_zLayer = static_cast<ZLayer>(zLayer);
}

void GameObject::setDefaultMainColorMode(int id) {
    if (auto color = this->getMainColor()) {
        color->m_defaultColorID = std::clamp(id, 0, 1101);
        color->m_colorID = 0;
    }
}

void GameObject::setDefaultSecondaryColorMode(int id) {
    if (auto color = this->getSecondaryColor()) {
        color->m_defaultColorID = std::clamp(id, 0, 1101);
        color->m_colorID = 0;
    }
}

void GameObject::setGlowOpacity(unsigned char opacity) {
    if (m_glowSprite) {
        auto glowOpacity = opacity * m_opacityMod;
        m_glowSprite->setOpacity(glowOpacity);
        m_glowSprite->setChildOpacity(glowOpacity);
    }
}

void GameObject::setLastPosition(cocos2d::CCPoint const& position) {
    m_lastPosition = position;
}

void GameObject::setMainColorMode(int id) {
    if (auto color = this->getMainColor()) {
        color->m_colorID = std::clamp(id, 0, 1101);
    }
}

bool GameObject::shouldShowPickupEffects() {
    if (!m_hasNoEffects && !m_isInvisible) {
        if (this->getOpacity() != 0) return true;
        if (m_colorSprite && m_colorSprite->getOpacity() != 0) return true;
    }
    return false;
}

bool GameObject::slopeFloorTop() {
    return m_slopeDirection == 1 || m_slopeDirection == 3 || m_slopeDirection == 5 || m_slopeDirection == 6;
}

bool GameObject::slopeWallLeft() {
    return m_slopeDirection == 2 || m_slopeDirection == 3 || m_slopeDirection == 4 || m_slopeDirection == 6;
}

double GameObject::slopeYPos(cocos2d::CCRect rect) {
    auto floorTop = this->slopeFloorTop();
    if (m_slopeUphill) {
        return this->slopeYPos(floorTop ? rect.getMaxX() : rect.getMinX());
    }
    else {
        return this->slopeYPos(floorTop ? rect.getMinX() : rect.getMaxX());
    }
}

void GameObject::updateBlendMode() {
    auto shouldBlend = this->shouldBlendColor(m_baseColor, true);
    m_shouldBlendBase = shouldBlend;
    if (!m_colorSprite) {
        m_shouldBlendDetail = false;
        return;
    }
    m_shouldBlendDetail = m_detailColor->getColorMode() != 1012 ? this->shouldBlendColor(m_detailColor, false) : shouldBlend;
}

void GameObject::updateHSVState() {
    if (auto color = m_baseColor) {
        color->m_usesHSV = color->m_hsv.h != 0.f || color->m_hsv.s != 1.f || color->m_hsv.v != 1.f || color->m_hsv.absoluteSaturation || color->m_hsv.absoluteBrightness;
    }
    if (auto color = m_detailColor) {
        color->m_usesHSV = color->m_hsv.h != 0.f || color->m_hsv.s != 1.f || color->m_hsv.v != 1.f || color->m_hsv.absoluteSaturation || color->m_hsv.absoluteBrightness;
    }
}

void GameObject::updateMainColor() {
    this->updateMainColor(this->colorForMode(m_activeMainColorID, true));
    this->updateMainOpacity();
}

void GameObject::updateSecondaryColor() {
    if (this->hasSecondaryColor() && m_activeDetailColorID != 0 && m_groupCount != 0) {
        this->updateSecondaryColor(this->colorForMode(m_activeDetailColorID, false));
        this->updateSecondaryOpacity();
    }
}

bool GameObject::usesFreezeAnimation() {
    auto id = m_objectID;
    return id == 921 || id == 1519 || id == 1618 || id == 1851 || id == 1852 || id == 1854 || id == 1855 || id == 1856 || id == 1860 || id == 2020 || id == 2021 || id == 2022 ||
        id == 2024 || id == 2025 || id == 2026 || id == 2027 || id == 2028 || id == 2029 || id == 2030 || id == 2031 || id == 2033 || id == 2035 || id == 2036 || id == 2037 ||
        id == 2038 || id == 2039 || id == 2040 || id == 2043 || id == 2044 || id == 2045 || id == 2046 || id == 2047 || id == 2048 || id == 2049 || id == 2050 || id == 2051 ||
        id == 2052 || id == 2053 || id == 2054 || id == 2055 || id == 2867 || id == 2868 || id == 2869 || id == 2870 || id == 2871 || id == 2872 || id == 2875 || id == 2876 ||
        id == 2877 || id == 2878 || id == 2880 || id == 2882 || id == 2883 || id == 2885 || id == 2886 || id == 2887;
}

bool GameObject::usesSpecialAnimation() {
    auto id = m_objectID;
    return id == 1591 || id == 1593 || id == 1839 || id == 1840 || id == 1841 || id == 1842 || id == 2892 || id == 2893;
}
#endif

#if defined(GEODE_IS_IOS)
void GameObject::createGroupContainer(int size) {
    if (!m_groups) {
        m_groups = new std::array<short, 10>();
        for (int i = 0; i < size; i++) {
            (*m_groups)[i] = 0;
        }
    }
}

void GameObject::playPickupAnimation(cocos2d::CCSprite* target, float offset, float duration, float randomValue1, float randomValue2) {
    this->playPickupAnimation(target, offset * 50.f, offset * 60.f, offset * 90.f, offset * 180.f, offset * 20.f, duration * .75f, duration * .5f, duration * .25f, false, randomValue1, randomValue2);
}
#endif

