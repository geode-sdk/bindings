#include <Geode/binding/InfoAlertButton.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool InfoAlertButton::init(std::string title, std::string desc, float spriteScale) {
    auto infoSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_infoIcon_001.png");
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

