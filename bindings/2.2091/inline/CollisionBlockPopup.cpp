#include <Geode/binding/CollisionBlockPopup.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
CCMenuItemToggler* CollisionBlockPopup::createToggleButton(std::string label, cocos2d::SEL_MenuHandler selector, bool toggled, cocos2d::CCMenu* menu, cocos2d::CCPoint position) {
    auto onSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOn_001.png");
    auto offSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOff_001.png");
    onSprite->setScale(.8f);
    offSprite->setScale(.8f);
    auto toggler = CCMenuItemToggler::create(offSprite, onSprite, this, selector);
    toggler->toggle(toggled);
    menu->addChild(toggler);
    toggler->setPosition(menu->convertToNodeSpace(position));
    toggler->setSizeMult(1.5f);
    auto labelNode = cocos2d::CCLabelBMFont::create(label.c_str(), "bigFont.fnt");
    this->addChild(labelNode);
    labelNode->setAnchorPoint({ .0f, .5f });
    labelNode->setPosition(position + cocos2d::CCPoint { onSprite->getContentSize().width * .5f + 4.8f, 0.f });
    labelNode->limitLabelWidth(110.f, .35f, .0f);
    return toggler;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

