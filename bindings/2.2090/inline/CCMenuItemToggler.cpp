#include <Geode/Bindings.hpp>

CCMenuItemToggler::CCMenuItemToggler() {
    m_offButton = nullptr;
    m_onButton = nullptr;
    m_toggled = false;
    m_notClickable = false;
}

CCMenuItemToggler* CCMenuItemToggler::createWithSize(const char* spr1, const char* spr2, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback, float scale) {
    auto sprOff = cocos2d::CCSprite::createWithSpriteFrameName(spr1);
    auto sprOn = cocos2d::CCSprite::createWithSpriteFrameName(spr2);

    sprOff->setScale(scale);
    sprOn->setScale(scale);

    return create(sprOff, sprOn, target, callback);
}

CCMenuItemToggler* CCMenuItemToggler::createWithStandardSprites(cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback, float scale) {
    auto sprOff = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOff_001.png");
    auto sprOn = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOn_001.png");

    float maxWidth = std::max(sprOff->getContentSize().width, sprOn->getContentSize().width);
    float maxHeight = std::max(sprOff->getContentSize().height, sprOn->getContentSize().height);

    sprOff->setScale(scale);
    sprOn->setScale(scale);

    auto ret = create(sprOff, sprOn, target, callback);

    ret->setContentSize({maxWidth, maxHeight});

    ret->m_offButton->setContentSize({maxWidth, maxHeight});
    ret->m_onButton->setContentSize({maxWidth, maxHeight});

    ret->m_offButton->setPosition({maxWidth/2, maxHeight/2});
    ret->m_onButton->setPosition({maxWidth/2, maxHeight/2});

    sprOff->setPosition({maxWidth/2, maxHeight/2});
    sprOn->setPosition({maxWidth/2, maxHeight/2});

    return ret;
}

bool CCMenuItemToggler::isOn() {
    return m_toggled;
}

bool CCMenuItemToggler::isToggled() {
    return m_toggled;
}

void CCMenuItemToggler::setClickable(bool on) {
    m_notClickable = !on;
}

void CCMenuItemToggler::toggleWithCallback(bool on) {
    this->activate();
    this->toggle(on);
}

void CCMenuItemToggler::updateSprite() {
    m_offButton->updateSprite();
    m_onButton->updateSprite();
    auto size = m_offButton->getScaledContentSize();
    m_offButton->setPosition(size / 2);
    m_offButton->setAnchorPoint({ .5f, .5f });
    m_onButton->setPosition(size / 2);
    m_onButton->setAnchorPoint({ .5f, .5f });
    this->setContentSize(size);
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
CCMenuItemSpriteExtra* CCMenuItemToggler::activeItem() {
    return m_toggled ? m_onButton : m_offButton;
}

bool CCMenuItemToggler::init(cocos2d::CCNode* off, cocos2d::CCNode* on, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
    if (!CCMenuItem::initWithTarget(target, callback)) return false;

    m_offButton = CCMenuItemSpriteExtra::create(off, nullptr, this, menu_selector(CCMenuItemToggler::normalTouch));
    m_onButton = CCMenuItemSpriteExtra::create(on, nullptr, this, menu_selector(CCMenuItemToggler::selectedTouch));

    this->addChild(m_offButton);
    this->addChild(m_onButton);

    m_offButton->getNormalImage()->setAnchorPoint({0.5f, 0.5f});
    m_onButton->getNormalImage()->setAnchorPoint({0.5f, 0.5f});

    auto imgoff = m_offButton->getNormalImage();
    auto imgon = m_onButton->getNormalImage();

    imgoff->setPosition(m_offButton->convertToNodeSpace({0.f, 0.f}));
    imgon->setPosition(m_onButton->convertToNodeSpace({0.f, 0.f}));
    m_notClickable = false;
    this->toggle(false);

    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

