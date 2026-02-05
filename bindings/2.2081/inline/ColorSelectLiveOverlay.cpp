#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void ColorSelectLiveOverlay::colorValueChanged(cocos2d::ccColor3B color) {}

CCMenuItemToggler* ColorSelectLiveOverlay::createToggleButton(gd::string label, cocos2d::SEL_MenuHandler selector, bool toggled, cocos2d::CCMenu* menu, cocos2d::CCPoint position) {
    auto onSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOn_001.png");
    auto offSprite = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOff_001.png");
    onSprite->setScale(.7f);
    offSprite->setScale(.7f);
    auto toggler = CCMenuItemToggler::create(offSprite, onSprite, this, selector);
    toggler->toggle(toggled);
    menu->addChild(toggler);
    toggler->setPosition(menu->convertToNodeSpace(position));
    toggler->setSizeMult(1.5f);
    auto labelNode = cocos2d::CCLabelBMFont::create(label.c_str(), "bigFont.fnt");
    this->addChild(labelNode);
    labelNode->setAnchorPoint({ .0f, .5f });
    labelNode->setPosition(position + cocos2d::CCPoint { onSprite->getContentSize().width * .5f + 4.2f, 0.f });
    labelNode->limitLabelWidth(110.f, .35f, .0f);
    return toggler;
}

cocos2d::ccColor3B ColorSelectLiveOverlay::getColorValue() {
    return { 255, 255, 255 };
}

void ColorSelectLiveOverlay::textChanged(CCTextInputNode* node) {}

void ColorSelectLiveOverlay::textInputClosed(CCTextInputNode* node) {}

void ColorSelectLiveOverlay::updateColorValue() {
    if (m_updateColor) return;
    if (m_effectGameObject) {
        m_effectGameObject->m_triggerTargetColor = m_targetColor;
    }
    else {
        if (m_detailColorSelected) m_detailColorAction->m_fromColor = m_targetColor;
        else m_baseColorAction->m_fromColor = m_targetColor;
    }
}

void ColorSelectLiveOverlay::updateOpacity() {
    if (m_updateColor) return;
    if (m_effectGameObject) {
        m_effectGameObject->m_opacity = m_opacity;
    }
    else {
        if (m_detailColorSelected) m_detailColorAction->m_fromOpacity = m_opacity;
        else m_baseColorAction->m_fromOpacity = m_opacity;
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
ColorSelectLiveOverlay* ColorSelectLiveOverlay::createWithActions(ColorAction* baseAction, ColorAction* detailAction) {
    return ColorSelectLiveOverlay::create(baseAction, detailAction, nullptr);
}

ColorSelectLiveOverlay* ColorSelectLiveOverlay::createWithObject(EffectGameObject* object) {
    return ColorSelectLiveOverlay::create(nullptr, nullptr, object);
}

void ColorSelectLiveOverlay::determineStartValues() {
    if (m_effectGameObject) {
        m_targetColor = m_effectGameObject->m_triggerTargetColor;
        m_mainColor = m_targetColor;
        m_opacity = m_effectGameObject->m_opacity;
    }
    else {
        m_targetColor = m_baseColorAction->m_fromColor;
        m_mainColor = m_targetColor;
        m_opacity = m_baseColorAction->m_fromOpacity;
        if (m_detailColorAction) m_detailColor = m_detailColorAction->m_fromColor;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

