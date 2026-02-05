#include <Geode/Bindings.hpp>

#if defined(GEODE_IS_WINDOWS)
GJTransformControl::GJTransformControl() {
    m_objects = nullptr;
    m_touchID = -1;
    m_transformButtonType = 0;
    m_delegate = nullptr;
    m_warpSprites = nullptr;
    m_warpLockButton = nullptr;
    m_scaleX = 1.0f;
    m_scaleY = 1.0f;
    m_warpLocked = false;
    m_rotationX = 0.0f;
    m_rotationY = 0.0f;
    m_rotation = 0.0f;
    m_buttonScale = 1.0f;
}

void GJTransformControl::calculateRotationOffset() {
    m_rotation = (-(atan2f(m_rotatePosition.y, m_rotatePosition.x) * (180.f / M_PI)) * 100.f) / 100.f;
}

void GJTransformControl::finishTouch() {
    if (m_touchID != -1) {
        m_touchID = -1;
        if (m_delegate) m_delegate->transformChangeEnded();
    }
}

void GJTransformControl::logCurrentZeroPos() {}

cocos2d::CCSprite* GJTransformControl::spriteByTag(int tag) {
    return static_cast<cocos2d::CCSprite*>(m_warpSprites->objectAtIndex(tag - 1));
}

void GJTransformControl::updateMinMaxPositions() {
    auto topRightPosition = this->spriteByTag(7)->getPosition();
    auto bottomLeftPosition = this->spriteByTag(8)->getPosition();
    if (m_transformButtonType == 10) {
        auto divisor = m_topRightPosition.x / m_topRight.x;
        m_topRight.x = topRightPosition.x / divisor;
        m_bottomLeft.x = bottomLeftPosition.x / divisor;
    }
    else if (m_transformButtonType == 11) {
        auto divisor = m_bottomLeftPosition.y / m_bottomLeft.y;
        m_topRight.y = topRightPosition.y / divisor;
        m_bottomLeft.y = bottomLeftPosition.y / divisor;
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJTransformControl::~GJTransformControl() {
    CC_SAFE_RELEASE(m_warpSprites);
    CC_SAFE_RELEASE(m_objects);
}

GJTransformControl* GJTransformControl::create() {
    auto ret = new GJTransformControl();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void GJTransformControl::applyRotation(float rotation) {
    if (m_rotationY != rotation) {
        m_rotationY = rotation;
        m_mainNode->setRotation(rotation);
        if (m_delegate) m_delegate->transformRotationChanged(rotation);
    }
    this->updateButtons(false, false);
}

void GJTransformControl::loadFromState(GJTransformState& state) {
    m_rotationX = state.m_transformRotationX;
    m_rotationY = state.m_transformRotationY;
    m_scaleX = state.m_transformScaleX;
    m_scaleY = state.m_transformScaleY;
    m_mainNode->setRotation(m_rotationY);
    this->setPosition(state.m_transformPosition);
    this->spriteByTag(1)->setPosition({ 0.f, 0.f });
    this->spriteByTag(10)->setPosition(state.m_transformSkewX);
    this->spriteByTag(11)->setPosition(state.m_transformSkewY);
}

void GJTransformControl::loadValues(GameObject* object, cocos2d::CCArray* objects, gd::unordered_map<int, GameObjectEditorState>& states) {
    if (object && !objects || objects->count() == 0) objects = cocos2d::CCArray::createWithObject(object);
    CC_SAFE_RELEASE(m_objects);
    m_objects = objects;
    objects->retain();
    if (objects->count() != 0) {
        for (int i = 0; i < objects->count(); i++) {
            auto obj = static_cast<GameObject*>(objects->objectAtIndex(i));
            obj->updateStartPos();
            states[obj->m_uniqueID].loadValues(obj);
        }
    }
    this->updateButtons(true, false);
}

void GJTransformControl::saveToState(GJTransformState& state) {
    state.m_transformScaleX = m_scaleX;
    state.m_transformScaleY = m_scaleY;
    state.m_transformRotationX = m_rotationX;
    state.m_transformRotationY = m_rotationY;
    state.m_transformPosition = this->spriteByTag(1)->getPosition();
    state.m_transformSkewX = this->spriteByTag(10)->getPosition();
    state.m_transformSkewY = this->spriteByTag(11)->getPosition();
}

void GJTransformControl::updateAnchorSprite(cocos2d::CCPoint position) {
    this->spriteByTag(0)->setPosition(position);
    if (m_delegate) m_delegate->updateTransformControl();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

