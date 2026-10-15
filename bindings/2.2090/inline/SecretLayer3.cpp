#include <Geode/Bindings.hpp>

SecretLayer3::SecretLayer3() {
    m_lockInput = false;
    m_locksArray = nullptr;
    m_demonEyes = nullptr;
    m_demonBody = nullptr;
    m_secretChest = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SecretLayer3::~SecretLayer3() {
    CC_SAFE_RELEASE(m_locksArray);
}

SecretLayer3* SecretLayer3::create() {
    auto ret = new SecretLayer3();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCScene* SecretLayer3::scene() {
    auto scene = cocos2d::CCScene::create();
    AppDelegate::get()->m_runningScene = scene;
    auto layer = SecretLayer3::create();
    scene->addChild(layer);
    return scene;
}

void SecretLayer3::firstInteractionStep1() {
    m_lockInput = true;
    m_demonEyes->stopAllActions();
    m_demonEyes->setScale(1.f);
    m_demonEyes->setOpacity(0);
    m_demonEyes->setVisible(true);
    m_demonEyes->runAction(cocos2d::CCFadeIn::create(1.f));
    this->runAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(2.f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(SecretLayer3::firstInteractionStep2)),
        nullptr
    ));
}

void SecretLayer3::firstInteractionStep3() {
    for (int i = 0; i < m_locksArray->count(); i++) {
        auto lock = static_cast<cocos2d::CCMenuItemSprite*>(m_locksArray->objectAtIndex(i));
        lock->setEnabled(true);
        lock->setVisible(true);
        auto lockSprite = static_cast<cocos2d::CCNodeRGBA*>(lock->getNormalImage());
        lockSprite->setScale(2.f);
        lockSprite->setOpacity(0);
        lockSprite->runAction(cocos2d::CCSequence::create(
            cocos2d::CCDelayTime::create((i + 1) * .1f),
            cocos2d::CCSpawn::createWithTwoActions(
                cocos2d::CCEaseBounceOut::create(cocos2d::CCScaleTo::create(.5f, 1.f)),
                cocos2d::CCFadeIn::create(.15f)
            ),
            nullptr
        ));
    }
    this->runAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(2.f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(SecretLayer3::firstInteractionStep4)),
        nullptr
    ));
}

void SecretLayer3::revealStep3() {
    m_demonBody->setOpacity(0);
    m_demonBody->setVisible(true);
    m_demonBody->runAction(cocos2d::CCEaseInOut::create(cocos2d::CCFadeIn::create(3.f), 1.5f));
    this->runAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(4.f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(SecretLayer3::revealStep4)),
        nullptr
    ));
}
#endif

#if defined(GEODE_IS_IOS)
#endif

