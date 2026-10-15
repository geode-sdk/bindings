#include <Geode/Bindings.hpp>

DungeonBarsSprite::DungeonBarsSprite() {
    m_barsSprite = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
DungeonBarsSprite* DungeonBarsSprite::create() {
    auto ret = new DungeonBarsSprite();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void DungeonBarsSprite::animateOutBars() {
    auto a1 = cocos2d::CCMoveBy::create(0.08, { -1.5f, 0.0f });
    auto a2 = cocos2d::CCMoveBy::create(0.08, { 1.5f, 0.0f });
    auto a3 = cocos2d::CCMoveBy::create(0.08, { -1.5f, 0.0f });
    auto a4 = cocos2d::CCMoveBy::create(0.08, { 1.5f, 0.0f });
    auto a5 = cocos2d::CCMoveBy::create(0.08, { -1.5f, 0.0f });
    auto a6 = cocos2d::CCMoveBy::create(0.08, { 1.5f, 0.0f });
    auto a7 = cocos2d::CCMoveBy::create(2.5, { 0.0f, -130.0f });

    auto seq = cocos2d::CCSequence::create(
        a1, a2, a3, a4, a5, a6,
        cocos2d::CCEaseElasticIn::create(a7, 1.6f),
        nullptr
    );
    this->m_barsSprite->runAction(seq);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

