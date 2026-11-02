#include <Geode/binding/CCLightFlash.hpp>
#include <Geode/binding/CCLightStrip.hpp>
#include <Geode/cocos/actions/CCActionTween.h>
#include <Geode/mapping/CCObject.hpp>

CCLightFlash::CCLightFlash() {
    m_lightStripArray = nullptr;
    m_layerColor = nullptr;
    m_dontFadeOut = false;
    m_mainLayer = nullptr;
    m_layerColorZOrder = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
CCLightFlash::~CCLightFlash() {
    CC_SAFE_RELEASE(m_lightStripArray);
}

CCLightFlash* CCLightFlash::create() {
    auto ret = new CCLightFlash();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    CC_SAFE_DELETE(ret);
    return nullptr;
}

bool CCLightFlash::init() {
    return true;
}

void CCLightFlash::fadeAndRemove() {
    float maxTime = 0.f;
    for (int i = 0; i < m_lightStripArray->count(); i++) {
        auto strip = static_cast<CCLightStrip*>(m_lightStripArray->objectAtIndex(i));
        auto delay = ((float)rand() / RAND_MAX) * .2f;
        auto tween = (((float)rand() / RAND_MAX) * 2.f - 1.f) * .1f + .5f;
        strip->runAction(cocos2d::CCSequence::create(
            cocos2d::CCDelayTime::create(delay),
            cocos2d::CCActionTween::create(tween, "opacity", strip->m_opacity, 0.f),
            cocos2d::CCCallFunc::create(strip, callfunc_selector(CCNode::removeMeAndCleanup)),
            nullptr
        ));
        if (delay + tween > maxTime) maxTime = delay + tween;
    }
    this->runAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(maxTime),
        cocos2d::CCCallFunc::create(this, callfunc_selector(CCNode::removeMeAndCleanup)),
        nullptr
    ));
}
#endif

#if defined(GEODE_IS_IOS)
#endif

