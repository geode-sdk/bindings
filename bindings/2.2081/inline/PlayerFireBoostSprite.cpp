#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void PlayerFireBoostSprite::animateFireIn() {
    this->stopAllActions();

    auto scaleto = cocos2d::CCScaleTo::create(0.06f, m_size * 0.6f, m_size * 1.5f);
    auto callfunc = cocos2d::CCCallFunc::create(this, callfunc_selector(PlayerFireBoostSprite::loopFireAnimation));
    auto sequence = cocos2d::CCSequence::create(scaleto, callfunc, nullptr);
    this->runAction(sequence);
}

void PlayerFireBoostSprite::animateFireOut() {
    this->stopAllActions();
    auto action = cocos2d::CCScaleTo::create(0.4f, 0.01f, 0.01f);
    this->runAction(action);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

