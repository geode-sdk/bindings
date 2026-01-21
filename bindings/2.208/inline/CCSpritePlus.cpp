#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
CCSpritePlus* CCSpritePlus::createWithSpriteFrame(cocos2d::CCSpriteFrame* frame) {
    auto ret = new CCSpritePlus();
    if (ret->initWithSpriteFrame(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void CCSpritePlus::addFollower(cocos2d::CCNode* follower) {
    m_hasFollower = true;
    if (!m_followers) {
        m_followers = cocos2d::CCArray::create();
        m_followers->retain();
    }
    m_followers->addObject(follower);
}

void CCSpritePlus::followSprite(CCSpritePlus* sprite) {
    m_followingSprite = sprite;
    sprite->addFollower(this);
}

CCSpritePlus* CCSpritePlus::getFollower() {
    return m_hasFollower ? static_cast<CCSpritePlus*>(m_followers->objectAtIndex(0)) : nullptr;
}

void CCSpritePlus::stopFollow() {
    if (m_followingSprite) m_followingSprite->removeFollower(this);
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MAC) || defined(GEODE_IS_ANDROID)
CCSpritePlus::CCSpritePlus() {
    m_followers = nullptr;
    m_followingSprite = nullptr;
    m_hasFollower = false;
    m_propagateScaleChanges = false;
    m_propagateFlipChanges = false;
}
#endif

