#include <Geode/Geode.hpp>

CCPartAnimSprite::CCPartAnimSprite() {
    m_spritePartIDs = nullptr;
    m_spriteFrame = nullptr;
    m_hasChanged = false;
    m_spriteParts = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void CCPartAnimSprite::changeTextureOfID(char const* key, char const* frame) {
    if (auto spritePart = static_cast<CCSpritePart*>(m_spritePartIDs->objectForKey(key))) {
        if (frame) spritePart->updateDisplayFrame(frame);
        else spritePart->resetTextureRect();
    }
}

int CCPartAnimSprite::countParts() {
    return this->getChildren()->count();
}

void CCPartAnimSprite::dirtify() {
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(this->getChildren())) {
        static_cast<cocos2d::CCSprite*>(obj)->setDirty(true);
    }
}

void CCPartAnimSprite::setFlipY(bool flipY) {
    this->setScaleY(this->isFlipY() ? 0.f : 1.f);
    CCSprite::setFlipY(flipY);
    m_hasChanged = true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
CCPartAnimSprite::~CCPartAnimSprite() {
    CC_SAFE_RELEASE(m_spritePartIDs);
    CC_SAFE_RELEASE(m_spriteFrame);
    CC_SAFE_RELEASE(m_spriteParts);
}

CCPartAnimSprite* CCPartAnimSprite::createWithAnimDesc(char const* definition, cocos2d::CCTexture2D* texture, bool useTexture) {
    auto ret = new CCPartAnimSprite();
    if (ret->initWithAnimDesc(definition, texture, useTexture)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

CCSpritePart* CCPartAnimSprite::getSpriteForKey(char const* key) {
    return static_cast<CCSpritePart*>(m_spritePartIDs->objectForKey(key));
}

void CCPartAnimSprite::setFlipX(bool flipX) {
    auto currentFlipX = this->isFlipX();
    if (currentFlipX != flipX) this->setScaleX(currentFlipX ? 0.f : 1.f);
    CCSprite::setFlipX(flipX);
    m_hasChanged = true;
}

void CCPartAnimSprite::transformSprite(SpriteDescription* description) {
    auto spritePart = static_cast<CCSpritePart*>(m_spriteParts->objectAtIndex(description->m_tag));
    spritePart->stopAllActions();
    spritePart->setPosition(description->m_position);
    auto scaleX = description->m_scale.x;
    if (description->m_flipped.x) scaleX = -scaleX;
    auto scaleY = description->m_scale.y;
    if (description->m_flipped.y) scaleY = -scaleY;
    spritePart->setScaleX(scaleX);
    spritePart->setScaleY(scaleY);
    spritePart->setRotation(description->m_rotation);
    if (description->m_usesCustomTag) {
        spritePart->setDisplayFrame(description->m_texture);
        spritePart->frameChanged(description->m_texture->getFrameName());
    }
}

void CCPartAnimSprite::tweenSpriteTo(SpriteDescription* description, float duration) {
    auto spritePart = static_cast<CCSpritePart*>(m_spriteParts->objectAtIndex(description->m_tag));
    spritePart->stopAllActions();
    auto scaleX = description->m_scale.x;
    if (description->m_flipped.x) scaleX = -scaleX;
    auto scaleY = description->m_scale.y;
    if (description->m_flipped.y) scaleY = -scaleY;
    spritePart->runAction(cocos2d::CCMoveTo::create(duration, description->m_position));
    spritePart->runAction(cocos2d::CCScaleTo::create(duration, scaleX, scaleY));
    spritePart->runAction(cocos2d::CCRotateTo::create(duration, description->m_rotation));
    if (description->m_usesCustomTag) {
        spritePart->setDisplayFrame(description->m_texture);
        spritePart->frameChanged(description->m_texture->getFrameName());
    }
    auto zValue = description->m_zValue;
    if (spritePart->getZOrder() != zValue) {
        this->reorderChild(spritePart, zValue);
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

