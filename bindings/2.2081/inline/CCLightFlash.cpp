#include <Geode/Geode.hpp>

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
    for (int i = 0; i < m_lightStripArray->count(); i++) {
        auto strip = static_cast<CCLightStrip*>(m_lightStripArray->objectAtIndex(i));
        strip->runAction(cocos2d::CCSequence::create(
            cocos2d::CCDelayTime::create(((float)rand() / RAND_MAX) * .2f),
            cocos2d::CCActionTween::create((((float)rand() / RAND_MAX) * .2f - .1f) * .1f + .5f, "opacity", strip->m_opacity, 0.f),
            cocos2d::CCCallFunc::create(this, callfunc_selector(CCNode::removeMeAndCleanup)),
            nullptr
        ));
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

