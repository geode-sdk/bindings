#include <Geode/Bindings.hpp>

SpriteAnimationManager::SpriteAnimationManager() {
    m_sprite = nullptr;
    m_priorityDict = nullptr;
    m_typeDict = nullptr;
    m_soundDict = nullptr;
    m_frameDict = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void SpriteAnimationManager::finishAnimation(gd::string animation) {
    if (m_queuedAnimation == animation) m_queuedAnimation = "not_used";
    if (m_currentAnimation == animation) this->runQueuedAnimation();
}

void SpriteAnimationManager::playSound(gd::string sound) {}

void SpriteAnimationManager::resetAnimState() {
    m_queuedAnimation = "not_used";
    m_nextAnimation = "not_used";
}

void SpriteAnimationManager::runQueuedAnimation() {
    if (m_queuedAnimation != "not_used") {
        this->executeAnimation(m_queuedAnimation);
        m_queuedAnimation = "not_used";
    }
}

void SpriteAnimationManager::switchToFirstFrameOfAnimation(gd::string animation) {
    if (m_frameDict->objectForKey(animation)->getObjType() == (cocos2d::CCObjectType)0) {
        m_sprite->switchToMode(this->getAnimType(animation));
        auto frame = static_cast<cocos2d::CCSpriteFrame*>(m_frameDict->objectForKey(cocos2d::CCString::createWithFormat("%s_first", animation.c_str())->getCString()));
        auto type = (int)frame->getObjType();
        if (type == 1 || type == 2) m_sprite->m_sprite->setDisplayFrame(frame);
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
SpriteAnimationManager::~SpriteAnimationManager() {
    CC_SAFE_RELEASE(m_frameDict);
    CC_SAFE_RELEASE(m_priorityDict);
    CC_SAFE_RELEASE(m_typeDict);
    CC_SAFE_RELEASE(m_soundDict);
    CC_SAFE_RELEASE(m_animateDict);
}

SpriteAnimationManager* SpriteAnimationManager::createWithOwner(CCAnimatedSprite* sprite, gd::string definition) {
    auto ret = new SpriteAnimationManager();
    if (ret->initWithOwner(sprite, definition)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void SpriteAnimationManager::doCleanup() {
    m_frameDict->removeAllObjects();
    this->release();
}

spriteMode SpriteAnimationManager::getAnimType(gd::string animation) {
    return (spriteMode)m_typeDict->valueForKey(animation)->intValue();
}

void SpriteAnimationManager::offsetCurrentAnimation(float dt) {
    if (auto action = static_cast<cocos2d::CCActionInterval*>(m_sprite->m_sprite->getActionByTag(1))) {
        if (action->getM_bFirstTick()) action->step(0.f);
        action->step(dt);
    }
}

void SpriteAnimationManager::playSoundForAnimation(gd::string animation) {
    if (auto sound = static_cast<cocos2d::CCString*>(m_soundDict->objectForKey(animation))) {
        auto delay = static_cast<cocos2d::CCString*>(m_soundDict->objectForKey(cocos2d::CCString::createWithFormat("%s%s", animation.c_str(), "delay")->getCString()))->floatValue();
        if (delay == 0.f) this->playSound(sound->getCString());
    }
}

void SpriteAnimationManager::stopAnimations() {
    this->overridePrio();
    if (m_sprite->m_paSprite) m_sprite->m_paSprite->stopAllActions();
    if (m_sprite->m_fbfSprite) m_sprite->m_fbfSprite->stopAllActions();
}

void SpriteAnimationManager::storeSoundForAnimation(cocos2d::CCString* sound, gd::string animation, float delay) {
    m_soundDict->setObject(sound, animation);
    m_soundDict->setObject(cocos2d::CCString::createWithFormat("%f", delay), animation);
}

void SpriteAnimationManager::updateAnimationSpeed(float speed) {
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    if (m_animateDict) HASH_ITER(hh, m_animateDict->m_pElements, element, temp) {
        if (element->getObject()->getObjType() == (cocos2d::CCObjectType)0) {
            static_cast<cocos2d::CCAnimate*>(element->getObject())->setSpeedMod(speed);
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

