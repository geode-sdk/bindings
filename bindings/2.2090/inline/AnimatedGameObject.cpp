#include <Geode/Bindings.hpp>

AnimatedGameObject::AnimatedGameObject() {
    m_animatedSprite = nullptr;
    m_childSprite = nullptr;
    m_eyeSpritePart = nullptr;
    m_finishedAnimating = false;
    m_playingAnimation = false;
    m_notGrounded = false;
    m_animationID = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
float AnimatedGameObject::getTweenTime(int type, int id) { return .05f; }
#endif

#if defined(GEODE_IS_WINDOWS)
AnimatedGameObject::~AnimatedGameObject() {
    CC_SAFE_RELEASE(m_eyeSpritePart);
}

AnimatedGameObject* AnimatedGameObject::create(int id) {
    auto ret = new AnimatedGameObject();
    if (ret->init(id)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void AnimatedGameObject::setupAnimatedSize(int id) {
    auto width = 10.f;
    auto height = 10.f;
    switch (id) {
        case 918:
            m_hasContentSize = true;
            m_objectRadius = 24.f;
            m_lastSize.width = 80.f;
            m_lastSize.height = 80.f;
            width = 48.f;
            height = 48.f;
            break;
        case 919:
            width = 25.f;
            height = 6.f;
            break;
        case 1327:
            m_hasContentSize = true;
            m_lastSize.width = 35.f;
            m_lastSize.height = 30.f;
            width = 8.f;
            height = 8.f;
            break;
        case 1328:
            m_hasContentSize = true;
            m_lastSize.width = 35.f;
            m_lastSize.height = 40.f;
            width = 8.f;
            height = 15.f;
            break;
        case 1584:
            m_hasContentSize = true;
            m_lastSize.width = 60.f;
            m_lastSize.height = 80.f;
            width = 8.f;
            height = 8.f;
            break;
        case 2012:
            m_hasContentSize = true;
            m_objectRadius = 15.f;
            m_lastSize.width = 45.f;
            m_lastSize.height = 45.f;
            width = 8.f;
            height = 8.f;
            break;
    }
    m_width = width * m_scaleX;
    m_height = height * m_scaleY;
    this->setContentSize({ width, height });
}

void AnimatedGameObject::updateChildSpriteColor(cocos2d::ccColor3B color) {
    if (!m_childSprite) return;
    auto spriteChildren = m_childSprite->getChildren();
    for (int i = 0; i < spriteChildren->count(); i++) {
        static_cast<cocos2d::CCSprite*>(spriteChildren->objectAtIndex(i))->setColor(color);
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

