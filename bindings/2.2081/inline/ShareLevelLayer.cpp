#include <Geode/Bindings.hpp>

ShareLevelLayer::ShareLevelLayer() {
    m_level = nullptr;
    m_starsRequested = 0;
    m_starButtons = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
ShareLevelLayer::~ShareLevelLayer() {
    CC_SAFE_RELEASE(m_level);
    CC_SAFE_RELEASE(m_starButtons);
}

ShareLevelLayer* ShareLevelLayer::create(GJGameLevel* level) {
    auto ret = new ShareLevelLayer();
    if (ret->init(level)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

CCMenuItemSpriteExtra* ShareLevelLayer::getStarsButton(int btnID, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale) {
    auto btnSpr = ButtonSprite::create(cocos2d::CCString::createWithFormat("%i", btnID)->getCString(), 20, 0, .5f, true, "bigFont.fnt", "GJ_button_01.png", 30.f);
    auto btn = CCMenuItemSpriteExtra::create(btnSpr, this, selector);
    btn->setScale(scale);
    btn->m_baseScale = scale;
    if (menu) menu->addChild(btn);
    return btn;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

