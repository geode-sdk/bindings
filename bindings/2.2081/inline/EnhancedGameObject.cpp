#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_WINDOWS) && !defined(GEODE_IS_IOS)
EnhancedGameObject::EnhancedGameObject() {
    m_poweredOn = false;
    m_state = 0;
    m_animationRandomizedStartValue = 0;
    m_animationStart = 0.f;
    m_unk540 = 0.f;
    m_unk544 = 0.f;
    m_unk548 = false;
    m_randomFrameTime = 1.f;
    m_visible = false;
    m_shouldNotHideAnimFreeze = false;
    m_usesSpecialAnimation = false;
    m_frameTime = 1.f;
    m_frames = 1;
    m_hasCustomAnimation = false;
    m_hasCustomRotation = false;
    m_disableRotation = false;
    m_rotationSpeed = 0.f;
    m_rotationAngle = 0.f;
    m_rotationDelta = 0.f;
    m_rotationAnimationSpeed = 0.f;
    m_animationRandomizedStart = false;
    m_animationSpeed = 1.f;
    m_animationShouldUseSpeed = false;
    m_animateOnTrigger = false;
    m_disableDelayedLoop = false;
    m_disableAnimShine = false;
    m_singleFrame = 0;
    m_animationOffset = false;
    m_animationTriggered = false;
    m_unkAnimationInt = 0;
    m_maybeAnimationVariableXInt = 0;
    m_maybeAnimationVariableYInt = 0;
    m_animateOnlyWhenActive = false;
    m_isNoMultiActivate = false;
    m_isMultiActivate = false;
    m_activated = false;
    m_activatedByPlayer1 = false;
    m_activatedByPlayer2 = false;
    m_hasUniqueCoin = false;
}
#endif

void EnhancedGameObject::stateSensitiveOff(GJBaseGameLayer* layer) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
EnhancedGameObject* EnhancedGameObject::create(char const* frame) {
    auto ret = new EnhancedGameObject();
    if (ret->init(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void EnhancedGameObject::previewAnimateOnTrigger() {
    m_animateOnTrigger = false;
    m_isDisabled2 = false;
    this->updateSyncedAnimation(0.f, -1);
    m_animateOnTrigger = true;
}

void EnhancedGameObject::refreshRotateAction() {
    this->createRotateAction(m_rotationAngle, 0);
}

void EnhancedGameObject::resetSyncedAnimation() {
    m_unk544 = 0.f;
    m_animationStart = m_unk548 ? -1.f : 0.f;
    m_unkAnimationInt = 0;
    this->updateSyncedAnimation(-m_animationRandomizedStartValue, -1);
}

void EnhancedGameObject::triggerAnimation() {
    if (!m_animateOnlyWhenActive || m_isActivated) {
        m_animationTriggered = true;
        m_isDisabled2 = false;
        m_maybeAnimationVariableXInt = -1;
        this->updateSyncedAnimation(0.f, -1);
        m_animationRandomizedStartValue = 0;
    }
}

void EnhancedGameObject::updateState(int state) {
    if (m_state < state) m_poweredOn = false;
    if (!m_poweredOn) this->powerOffObject();
}

void EnhancedGameObject::waitForAnimationTrigger() {
    m_animationTriggered = false;
    m_isDisabled2 = true;
    m_animationRandomizedStartValue = 0;
    m_animationStart = 0.f;
    m_unk540 = 0.f;
    m_unk544 = 0.f;
    this->setOpacity(0);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

