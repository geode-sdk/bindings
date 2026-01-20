#include <Geode/Geode.hpp>

GJShopLayer::GJShopLayer() {
    m_closing = false;
    m_currencyLabel = nullptr;
    m_shopItems = nullptr;
    m_type = ShopType::Normal;
    m_unkNode1 = nullptr;
    m_unkNode2 = nullptr;
    m_videoPlaying = false;
    m_unkBool = false;
    m_shopKeeper = nullptr;
    m_zolgurothDialogIndex = 0;
    m_affordDialogIndex = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJShopLayer::~GJShopLayer() {
    cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->unregisterForcePrio(this);
    auto gm = GameManager::sharedState();
    if (gm->m_rewardedVideoDelegate == this) gm->m_rewardedVideoDelegate = nullptr;
    CC_SAFE_RELEASE(m_shopItems);
}

GJShopLayer* GJShopLayer::create(ShopType type) {
    auto ret = new GJShopLayer();
    if (ret->init(type)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void GJShopLayer::ccTouchMoved(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void GJShopLayer::ccTouchEnded(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void GJShopLayer::onPlushies(cocos2d::CCObject* sender) {}
#endif

#if defined(GEODE_IS_IOS)
#endif

