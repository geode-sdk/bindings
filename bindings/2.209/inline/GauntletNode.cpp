#include <Geode/Bindings.hpp>

GauntletNode::GauntletNode() {
    m_gauntletInfoNode = nullptr;
    m_rewardNode = nullptr;
    m_gauntlet = nullptr;
    m_locked = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GauntletNode* GauntletNode::create(GJMapPack* gauntlet) {
    auto ret = new GauntletNode();
    if (ret->init(gauntlet)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool GauntletNode::init(GJMapPack* gauntlet) {
    if (!CCNode::init()) return false;
    if (gauntlet) {
        m_gauntlet = gauntlet;
        m_gauntlet->retain();
    }
    m_locked = false;
    this->generateNode();
    return true;
}

void GauntletNode::onUnlock() {
    m_locked = false;
    this->generateNode();
    auto background = cocos2d::extension::CCScale9Sprite::create("GJ_squareB_01.png", { 0.f, 0.f, 86.f, 86.f });
    background->setOpacity(255);
    background->setContentSize({ 110.f, 234.f });
    this->addChild(background, 100);
    background->setColor({ 255, 255, 255 });
    background->setBlendAdditive(true);
    background->runAction(cocos2d::CCSequence::create(
        cocos2d::CCEaseIn::create(cocos2d::CCFadeOut::create(.8f), 1.5f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(CCNode::removeMeAndCleanup)),
        nullptr
    ));
}

void GauntletNode::showUnlockAnimation() {
    auto background = cocos2d::extension::CCScale9Sprite::create("GJ_squareB_01.png", { 0.f, 0.f, 86.f, 86.f });
    background->setOpacity(0);
    background->setContentSize({ 110.f, 234.f });
    this->addChild(background, 100);
    background->setColor({ 255, 255, 255 });
    background->setBlendAdditive(true);
    background->runAction(cocos2d::CCEaseIn::create(cocos2d::CCFadeTo::create(2.f, 150), 2.f));
}
#endif

#if defined(GEODE_IS_IOS)
#endif

