#include <Geode/Geode.hpp>

CCLightStrip::CCLightStrip() {
    m_objectWidth = .0f;
    m_toWidth = .0f;
    m_toHeight = .0f;
    m_duration = .0f;
    m_opacity = .0f;
    m_width = .0f;
    m_height = .0f;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
CCLightStrip* CCLightStrip::create(float width, float toWidth, float toHeight, float duration, float delay) {
    auto ret = new CCLightStrip();
    if (ret->init(width, toWidth, toHeight, duration, delay)) {
        ret->autorelease();
        return ret;
    }
    CC_SAFE_DELETE(ret);
    return nullptr;
}

bool CCLightStrip::init(float width, float toWidth, float toHeight, float duration, float delay) {
    this->m_toWidth = toWidth;
    this->m_toHeight = toHeight;
    this->m_objectWidth = width;
    this->m_duration = duration;
    this->m_width = width;
    this->m_opacity = 255.f;
    this->m_height = 1.f;

    this->setVisible(false);

    auto* delayAction = cocos2d::CCDelayTime::create(delay);
    auto* heightActionTween = cocos2d::CCActionTween::create(this->m_duration, "height", this->m_height, this->m_toHeight);
    auto* widthActionTween = cocos2d::CCActionTween::create(this->m_duration, "width", this->m_width, this->m_toWidth);
    auto* heightEaseOutAction = cocos2d::CCEaseOut::create(heightActionTween, 2.f);
    auto* widthEaseOutAction = cocos2d::CCEaseOut::create(widthActionTween, 2.f);
    auto* spawnEaseOutActions = cocos2d::CCSpawn::create(heightEaseOutAction, widthEaseOutAction, nullptr);
    auto* lightStripSequence = cocos2d::CCSequence::create(delayAction, cocos2d::CCShow::create(), spawnEaseOutActions, nullptr);

    cocos2d::CCDirector::sharedDirector()->getActionManager()->addAction(lightStripSequence, this, false);

    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

