#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool InfoAlertButton::init(gd::string title, gd::string desc, float spriteScale) {
    auto infoSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_infoBtn_001.png");
    infoSprite->setScale(spriteScale);
    if (!CCMenuItemSpriteExtra::init(infoSprite, nullptr, nullptr, nullptr)) return false;
    this->setSizeMult(1.5f);
    m_title = title;
    m_description = desc;
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

