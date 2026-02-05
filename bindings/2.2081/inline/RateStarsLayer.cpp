#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void RateStarsLayer::onToggleCoins(cocos2d::CCObject* sender) {
    m_coinsToggled = !m_coinsToggled;
    m_coinSprite->setColor(m_coinsToggled ? cocos2d::ccColor3B { 255, 255, 255 } : cocos2d::ccColor3B { 50, 50, 50 });
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
CCMenuItemSpriteExtra* RateStarsLayer::getStarsButton(int stars, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale) {
    auto button = CCMenuItemSpriteExtra::create(
        ButtonSprite::create(cocos2d::CCString::createWithFormat("%i", stars)->getCString(), 20, 0, .5f, true, "bigFont.fnt", "GJ_button_01.png", 30.f),
        this, selector
    );
    button->setScale(scale);
    button->m_baseScale = scale;
    if (menu) menu->addChild(button);
    return button;
}
#endif

