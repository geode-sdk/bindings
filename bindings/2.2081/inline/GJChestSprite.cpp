#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool GJChestSprite::init(int chestType) {
    if (!cocos2d::CCSprite::init()) return false;
    m_chestType = chestType;
    this->setContentSize({ 0, 0 });
    this->switchToState(ChestSpriteState::Closed, false);
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

