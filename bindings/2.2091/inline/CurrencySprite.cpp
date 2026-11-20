#include <Geode/binding/CurrencySprite.hpp>

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

CurrencySprite* CurrencySprite::createWithSprite(cocos2d::CCSprite* sprite) {
    auto ret = new CurrencySprite();
    if (ret->initWithSprite(sprite)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

