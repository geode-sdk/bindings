#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool CCSpritePart::getBeingUsed() {
    return m_isBeingUsed;
}

void CCSpritePart::hideInactive() {
    if (!m_isBeingUsed) this->setVisible(false);
}

void CCSpritePart::markAsNotBeingUsed() {
    m_isBeingUsed = false;
}

void CCSpritePart::resetTextureRect() {
    this->setTextureRect({ 0.f, 0.f, 0.f, 0.f });
}

void CCSpritePart::setBeingUsed(bool beingUsed) {
    m_isBeingUsed = beingUsed;
}

void CCSpritePart::updateDisplayFrame(gd::string frame) {
    this->frameChanged(frame);
    this->setDisplayFrame(cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()->spriteFrameByName(frame.c_str()));
}
#endif

#if defined(GEODE_IS_WINDOWS)
CCSpritePart* CCSpritePart::create(cocos2d::CCTexture2D* texture) {
    auto ret = new CCSpritePart();
    if (ret->initWithTexture(texture)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

CCSpritePart* CCSpritePart::createWithSpriteFrameName(char const* frame) {
    auto ret = new CCSpritePart();
    if (ret->initWithSpriteFrameName(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MAC) || defined(GEODE_IS_ANDROID)
CCSpritePart::CCSpritePart() {
    m_isBeingUsed = false;
    m_delegate = nullptr;
}
#endif

