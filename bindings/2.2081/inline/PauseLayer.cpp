#include <Geode/Geode.hpp>

PauseLayer::PauseLayer() {
    m_unfocused = false;
    m_tryingQuit = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void PauseLayer::createToggleButton(gd::string label, cocos2d::SEL_MenuHandler selector, bool toggled, cocos2d::CCMenu* menu, cocos2d::CCPoint position) {
    auto onSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOn_001.png");
    auto offSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOff_001.png");
    onSprite->setScale(.6f);
    offSprite->setScale(.6f);
    auto toggler = CCMenuItemToggler::create(offSprite, onSprite, this, selector);
    toggler->toggle(toggled);
    menu->addChild(toggler);
    toggler->setPosition(menu->convertToNodeSpace(position));
    toggler->setSizeMult(1.5f);
    auto labelNode = cocos2d::CCLabelBMFont::create(label.c_str(), "bigFont.fnt");
    this->addChild(labelNode);
    labelNode->setAnchorPoint({ .0f, .5f });
    labelNode->setPosition(position + cocos2d::CCPoint { onSprite->getContentSize().width * .5f + 3.6f, 0.f });
    labelNode->limitLabelWidth(80.f, .4f, .0f);
}

bool PauseLayer::init(bool unfocused) {
    m_unfocused = unfocused;
    return CCBlockLayer::init();
}
#endif

#if defined(GEODE_IS_WINDOWS)
PauseLayer* PauseLayer::create(bool unfocused) {
    auto ret = new PauseLayer();
    if (ret && ret->init(unfocused)) {
        ret->autorelease();
        return ret;
    }
    CC_SAFE_DELETE(ret);
    return nullptr;
}

void PauseLayer::keyUp(cocos2d::enumKeyCodes key, double timestamp) {}
#endif

#if defined(GEODE_IS_IOS)
#endif

