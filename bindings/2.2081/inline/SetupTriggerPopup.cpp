#include <Geode/Bindings.hpp>

#if defined(GEODE_IS_ANDROID) || defined(GEODE_IS_MACOS)
SetupTriggerPopup::SetupTriggerPopup() {
    m_gameObject = nullptr;
    m_gameObjects = nullptr;
    m_touchTriggered = false;
    m_spawnTriggered = false;
    m_touchToggle = nullptr;
    m_spawnToggle = nullptr;
    m_multiTriggerContainer = nullptr;
    m_multiTriggered = false;
    m_width = 0.f;
    m_height = 0.f;
    m_disableTextDelegate = false;
    m_valueToggles = nullptr;
    m_inputNodes = nullptr;
    m_valueControls = nullptr;
    m_customValueToggles = nullptr;
    m_disableButtons = nullptr;
    m_easingLabel = nullptr;
    m_easingRateLabel = nullptr;
    m_easingRateButton = nullptr;
    m_easingType = EasingType::None;
    m_easingRate = 0.f;
    m_inputLabels = nullptr;
    m_triggerValues = nullptr;
    m_minSliderValues = nullptr;
    m_maxSliderValues = nullptr;
    m_disableSliderDelegate = false;
    m_effectObjects = false;
    m_pageContainers = nullptr;
    m_page = 0;
    m_easingControlScale = 1.f;
    m_groupContainers = nullptr;
    m_customEasingTags = nullptr;
    m_customEasingLabels = nullptr;
    m_customEasingButtons = nullptr;
    m_customEasingScales = nullptr;
    m_disabledEasingButtons = nullptr;
    m_prevButton = nullptr;
    m_nextButton = nullptr;
    m_hideAll = false;
}
#endif

void SetupTriggerPopup::pageChanged() {}

void SetupTriggerPopup::updateInputValue(int tag, float& value) {}

void SetupTriggerPopup::onPlusButton(cocos2d::CCObject* sender) {}

void SetupTriggerPopup::onCustomButton(cocos2d::CCObject* sender) {}

void SetupTriggerPopup::valueDidChange(int tag, float value) {}

void SetupTriggerPopup::onCustomToggleTriggerValue(cocos2d::CCObject* sender) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
SetupTriggerPopup* SetupTriggerPopup::create(float width, float height) {
    return SetupTriggerPopup::create(nullptr, nullptr, width, height, 1);
}

SetupTriggerPopup* SetupTriggerPopup::create(EffectGameObject* trigger, cocos2d::CCArray* triggers, float width, float height, int background) {
    auto ret = new SetupTriggerPopup();
    if (ret->init(trigger, triggers, width, height, background)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void SetupTriggerPopup::closeInputNodes() {
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_inputNodes->m_pElements, element, temp) {
        auto inputNode = static_cast<CCTextInputNode*>(element->getObject());
        inputNode->m_delegate = nullptr;
        inputNode->onClickTrackNode(false);
    }
}

void SetupTriggerPopup::createValueControlWArrows(int property, gd::string label, cocos2d::CCPoint position, float scale) {
    this->createValueControlAdvanced(property, label, position, scale, true, InputValueType::Int, 6, true, 0.f, 0.f, 0, 0, GJInputStyle::GoldLabel, 2, false);
}

float SetupTriggerPopup::getMaxSliderValue(int property) {
    if (auto value = static_cast<cocos2d::CCFloat*>(m_maxSliderValues->objectForKey(property))) {
        return value->getValue();
    }
    return 1.f;
}

float SetupTriggerPopup::getMinSliderValue(int property) {
    if (auto value = static_cast<cocos2d::CCFloat*>(m_minSliderValues->objectForKey(property))) {
        return value->getValue();
    }
    return 0.f;
}

void SetupTriggerPopup::removeObjectFromGroup(cocos2d::CCObject* object, int group) {
    this->getGroupContainer(group)->removeObject(object);
}

void SetupTriggerPopup::setMinSliderValue(float value, int property) {
    m_minSliderValues->setObject(cocos2d::CCFloat::create(value), property);
}

bool SetupTriggerPopup::shouldLimitValue(int property) {
    return m_shouldLimitValues[property];
}

void SetupTriggerPopup::updateLabel(int property, gd::string text) {
    if (auto label = static_cast<cocos2d::CCLabelBMFont*>(m_inputLabels->objectForKey(property))) {
        label->setString(text.c_str());
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupTriggerPopup::addObjectsToGroup(cocos2d::CCArray* objects, int group) {
    this->getGroupContainer(group)->addObjectsFromArray(objects);
}

void SetupTriggerPopup::addObjectsToPage(cocos2d::CCArray* objects, int page) {
    this->getPageContainer(page)->addObjectsFromArray(objects);
}

void SetupTriggerPopup::addObjectToGroup(cocos2d::CCObject* object, int group) {
    this->getGroupContainer(group)->addObject(object);
}

cocos2d::CCArray* SetupTriggerPopup::createToggleValueControlAdvanced(int property, gd::string label, cocos2d::CCPoint position, bool vertical, int page, int group, float buttonScale, float labelScale, float labelWidth, cocos2d::CCPoint offset) {
    auto pageContainer = this->getPageContainer(page);
    auto groupContainer = this->getGroupContainer(group);
    auto nodes = cocos2d::CCArray::create();
    auto toggle = GameToolbox::createToggleButton(
        label, menu_selector(SetupTriggerPopup::onToggleTriggerValue), false, m_buttonMenu, position,
        this, m_mainLayer, buttonScale, labelScale, labelWidth, offset, "bigFont.fnt", vertical, 0, nodes
    );
    toggle->setTag(property);
    toggle->m_notClickable = true;
    m_valueToggles->setObject(toggle, property);
    pageContainer->addObjectsFromArray(nodes);
    if (group > 0) groupContainer->addObjectsFromArray(nodes);
    return nodes;
}

cocos2d::CCArray* SetupTriggerPopup::getObjects() {
    if (m_gameObject) {
        auto arr = cocos2d::CCArray::create();
        arr->addObject(m_gameObject);
        return arr;
    }
    return m_gameObjects;
}

float SetupTriggerPopup::getTruncatedValueByTag(int tag, float value) {
    if (auto inputNode = static_cast<CCTextInputNode*>(m_inputNodes->objectForKey(tag))) {
        return this->getTruncatedValue(value, inputNode->m_decimalPlaces);
    }
    return value;
}

void SetupTriggerPopup::hideAll() {
    this->goToPage(0, true);
}

void SetupTriggerPopup::postSetup() {
    this->updateDefaultTriggerValues();
    m_disableTextDelegate = false;
}

void SetupTriggerPopup::preSetup() {
    m_disableTextDelegate = true;
    this->determineStartValues();
}

void SetupTriggerPopup::refreshGroupVisibility() {
    for (int i = 0; i < m_groupContainers->count(); i++) {
        auto groupContainer = static_cast<cocos2d::CCArray*>(m_groupContainers->objectAtIndex(i));
        auto tag = groupContainer->getTag();
        for (int j = 0; j < groupContainer->count(); j++) {
            auto node = static_cast<cocos2d::CCNode*>(groupContainer->objectAtIndex(j));
            if (node->isVisible() && tag == 0) node->setVisible(false);
        }
    }
}

void SetupTriggerPopup::removeObjectFromPage(cocos2d::CCObject* object, int page) {
    this->getPageContainer(page)->removeObject(object);
}

void SetupTriggerPopup::resetDisabledValues() {
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_inputNodes->m_pElements, element, temp) {
        auto property = element->getObject()->getTag();
        if (this->getValue(property) == -909190.f) this->updateValue(property, 0.f);
    }
}

void SetupTriggerPopup::setMaxSliderValue(float value, int property) {
    m_maxSliderValues->setObject(cocos2d::CCFloat::create(value), property);
}

void SetupTriggerPopup::toggleBG(bool visible) {
    if (auto background = m_mainLayer->getChildByTag(1)) background->setVisible(visible);
}

void SetupTriggerPopup::toggleLimitValue(int property, bool limit) {
    m_shouldLimitValues[property] = limit;
}

void SetupTriggerPopup::togglePageArrows(bool visible) {
    if (m_prevButton) {
        m_prevButton->setVisible(visible);
        m_prevButton->setEnabled(visible);
        m_nextButton->setVisible(visible);
        m_nextButton->setEnabled(visible);
    }
}

void SetupTriggerPopup::updateCustomToggleTrigger(int tag, bool toggled) {
    if (auto toggle = static_cast<CCMenuItemToggler*>(m_customValueToggles->objectForKey(tag))) {
        toggle->toggle(toggled);
    }
}

void SetupTriggerPopup::updateSlider(int property, float value) {
    if (auto slider = static_cast<Slider*>(m_valueControls->objectForKey(property))) slider->setValue(value);
}
#endif

#if defined(GEODE_IS_IOS)
float SetupTriggerPopup::getTruncatedValue(float value, int decimals) {
    if (decimals < 1) return value;
    auto exponent = decimals > 1 ? powf(10.f, decimals) : 10.f;
    return roundf(value * exponent) / exponent;
}
#endif

