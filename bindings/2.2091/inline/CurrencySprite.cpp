#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_WINDOWS) && !defined(GEODE_IS_IOS)
CurrencySprite::CurrencySprite() {
    m_unkFloat1 = 0.f;
    m_unkFloat2 = 0.f;
    m_unkFloat3 = 0.f;
    m_remaining = 0.f;
    m_count = 1;
    m_particleSystem = nullptr;
    m_spriteType = CurrencySpriteType::Orb;
    m_burstSprite = nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
CurrencySprite::~CurrencySprite() {
    CC_SAFE_RELEASE(m_burstSprite);
}

CurrencySprite* CurrencySprite::create(CurrencySpriteType type, bool burst) {
    auto ret = new CurrencySprite();
    if (ret->init(type, burst)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool CurrencySprite::initWithSprite(cocos2d::CCSprite* sprite) {
    if (!cocos2d::CCSprite::init()) return false;
    this->addChild(sprite);
    sprite->setPosition({ 0.f, 0.f });
    m_burstSprite = cocos2d::CCSprite::createWithSpriteFrameName("shineBurst_001.png");
    m_burstSprite->retain();
    auto factor = (float)rand() / (float)RAND_MAX > .5f ? 1.f : -1.f;
    m_burstSprite->runAction(cocos2d::CCRepeatForever::create(cocos2d::CCRotateBy::create(1.f, 90.f * factor)));
    m_burstSprite->setScale(2.f);
    m_burstSprite->setColor({ 255, 255, 255 });
    auto shineBurst = cocos2d::CCSprite::createWithSpriteFrameName("shineBurst_001.png");
    m_burstSprite->addChild(shineBurst);
    shineBurst->setPosition(m_burstSprite->convertToNodeSpace({ 0.f, 0.f }));
    shineBurst->setScale(.8f);
    shineBurst->setColor({ 255, 255, 255 });
    shineBurst->runAction(cocos2d::CCRepeatForever::create(cocos2d::CCRotateBy::create(1.f, -180.f * factor)));
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

