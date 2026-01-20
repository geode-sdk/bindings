#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
CCMenuItemToggler* CustomizeObjectLayer::createToggleButton(gd::string text, cocos2d::SEL_MenuHandler selector, bool toggled, cocos2d::CCMenu* menu, cocos2d::CCPoint position) {
    auto onSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOn_001.png");
    onSprite->setScale(.8f);
    auto offSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOff_001.png");
    offSprite->setScale(.8f);
    auto toggler = CCMenuItemToggler::create(offSprite, onSprite, this, selector);
    toggler->toggle(toggled);
    menu->addChild(toggler);
    toggler->setPosition(menu->convertToNodeSpace(position));
    toggler->setSizeMult(1.5f);
    m_detailTabNodes->addObject(toggler);
    auto label = cocos2d::CCLabelBMFont::create(text.c_str(), "bigFont.fnt");
    m_mainLayer->addChild(label);
    label->setAnchorPoint({ .0f, .5f });
    label->setPosition(m_mainLayer->convertToNodeSpace(position + cocos2d::CCPoint { onSprite->getContentSize().width * .5f + 5.6f, 0.f }));
    label->setScale(.5f);
    m_detailTabNodes->addObject(label);
    return toggler;
}

cocos2d::ccHSVValue CustomizeObjectLayer::getHSV() {
    return ConfigureHSVWidget::getHSV(m_targetObject, m_targetObjects, m_selectedMode);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void CustomizeObjectLayer::recreateLayer() {
    CC_SAFE_RETAIN(m_targetObject);
    CC_SAFE_RETAIN(m_targetObjects);
    cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->unregisterForcePrio(this);
    this->onClose(nullptr);
    CustomizeObjectLayer::create(m_targetObject, m_targetObjects)->show();
    CC_SAFE_RELEASE(m_targetObject);
    CC_SAFE_RELEASE(m_targetObjects);
}

void CustomizeObjectLayer::updateChannelLabel(int channel) {
    if (channel > 999) {
        m_selectedColorLabel->setString(GJSpecialColorSelect::textForColorIdx(channel));
    }
    else if (channel > 0) {
        m_selectedColorLabel->setString(cocos2d::CCString::createWithFormat("%i", channel)->getCString());
    }
    else {
        m_selectedColorLabel->setString(" ");
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

