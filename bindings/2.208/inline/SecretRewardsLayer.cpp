#include <Geode/Geode.hpp>

SecretRewardsLayer::SecretRewardsLayer() {
    m_mainLayer = nullptr;
    m_secondaryLayer = nullptr;
    m_chestCounter = nullptr;
    m_chestCounters = nullptr;
    m_backSprite = nullptr;
    m_unkSize4_2 = 0;
    m_secondaryScrollLayer = nullptr;
    m_scratchDialogIndex = 0;
    m_potborDialogIndex = 0;
    m_diamondDialogIndex = 0;
    m_mechanicDialogIndex = 0;
    m_inMainLayer = false;
    m_rewardType = GJRewardType::Unknown;
    m_lockedDialogIndex = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::ccColor3B SecretRewardsLayer::getPageColor(int page) {
    if (page == 1) return cocos2d::ccc3(50, 50, 50);
    else if (page == 2) return cocos2d::ccc3(70, 0, 120);
    else return cocos2d::ccc3(70, 0, 75);
}
#endif

#if defined(GEODE_IS_WINDOWS)
SecretRewardsLayer::~SecretRewardsLayer() {
    CC_SAFE_RELEASE(m_chestCounters);
}

SecretRewardsLayer* SecretRewardsLayer::create(bool fromShop) {
    auto ret = new SecretRewardsLayer();
    if (ret->init(fromShop)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void SecretRewardsLayer::fadeInMusic() {
    FMODAudioEngine::sharedEngine()->fadeMusic(1.f, 0, 1.f, .2f);
    this->runAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(3.2f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(SecretRewardsLayer::fadeInOutMusic)),
        nullptr
    ));
}

void SecretRewardsLayer::goToPage(int page) {
    if (m_inMainLayer) m_mainScrollLayer->moveToPage(page);
    else m_secondaryScrollLayer->moveToPage(page);
}

void SecretRewardsLayer::moveToMainLayer(cocos2d::CCObject* sender) {
    if (m_inMainLayer) return;
    m_inMainLayer = true;
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    m_mainLayer->runAction(cocos2d::CCEaseInOut::create(cocos2d::CCMoveTo::create(.4f, { 0.f, 0.f }), 2.f));
    if (m_secondaryLayer) {
        m_secondaryScrollLayer->setTouchEnabled(false);
        m_secondaryScrollLayer = nullptr;
        m_chestCounter = nullptr;
        m_secondaryLayer->runAction(cocos2d::CCSequence::create(
            cocos2d::CCEaseInOut::create(cocos2d::CCMoveTo::create(.4f, { 0.f, winSize.height + 50.f }), 2.f),
            cocos2d::CCCallFunc::create(m_secondaryLayer, callfunc_selector(cocos2d::CCNode::removeMeAndCleanup)),
            nullptr
        ));
        m_secondaryLayer = nullptr;
    }
    this->updateBackButton();
}

void SecretRewardsLayer::moveToSecondaryLayer(int page) {
    if (!m_inMainLayer) return;
    m_inMainLayer = false;
    m_rewardType = (GJRewardType)page;
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    m_mainScrollLayer->setTouchEnabled(false);
    m_mainLayer->runAction(cocos2d::CCEaseBounceOut::create(cocos2d::CCMoveTo::create(.5f, { 0.f, -winSize.height - 100.f })));
    this->createSecondaryLayer(page);
    m_secondaryLayer->setPosition({ 0.f, winSize.height });
    m_secondaryLayer->runAction(cocos2d::CCEaseBounceOut::create(cocos2d::CCMoveTo::create(.5f, { 0.f, 0.f })));
    this->updateBackButton();
}

void SecretRewardsLayer::showShop(int shop) {
    if (cocos2d::CCDirector::sharedDirector()->replaceScene(cocos2d::CCTransitionMoveInT::create(0.5f, GJShopLayer::scene((ShopType)shop)))) this->setKeypadEnabled(false);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

