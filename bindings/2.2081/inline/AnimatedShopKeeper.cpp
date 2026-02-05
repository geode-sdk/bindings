#include <Geode/Bindings.hpp>

AnimatedShopKeeper::AnimatedShopKeeper() {
    m_type = ShopType::Normal;
    m_idleInt1 = 0;
    m_idleInt2 = 0;
    m_looking = false;
    m_reacting = false;
    m_reactCount = 0;
    m_gruntIndex = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
AnimatedShopKeeper* AnimatedShopKeeper::create(ShopType type) {
    auto ret = new AnimatedShopKeeper();
    if (ret->init(type)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool AnimatedShopKeeper::init(ShopType type) {
    m_type = type;
    auto shopkeeper = "GJShopKeeper";
    switch (type) {
        case ShopType::Secret: shopkeeper = "GJShopKeeper2"; break;
        case ShopType::Community: shopkeeper = "GJShopKeeper3"; break;
        case ShopType::Mechanic: shopkeeper = "GJShopKeeper4"; break;
        case ShopType::Diamond: shopkeeper = "GJShopKeeper5"; break;
        default: shopkeeper = "GJShopKeeper"; break;
    }
    if (!CCAnimatedSprite::initWithType(shopkeeper, nullptr, false)) return false;
    m_idleInt2 = (rand() / 32767.f) * 5.f + 10.f;
    m_idleInt1 = (rand() / 32767.f) * 2.f + 1.f;
    m_animationManager->stopAnimations();
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

