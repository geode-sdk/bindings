#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void Slider::setLiveDragging(bool activateThumb) {
    m_touchLogic->m_activateThumb = activateThumb;
}

void Slider::sliderBegan() {
    if (m_delegate) m_delegate->sliderBegan(this);
}

void Slider::sliderEnded() {
    if (m_delegate) m_delegate->sliderEnded(this);
}
#endif

#if defined(GEODE_IS_WINDOWS)
Slider* Slider::create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler) {
    return Slider::create(target, handler, 1.f);
}

Slider* Slider::create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, float scale) {
    return Slider::create(target, handler, "sliderBar.png", "slidergroove.png", "sliderthumb.png", "sliderthumbsel.png", scale);
}

void Slider::disableSlider() {
    if (!m_enabled) return;
    m_enabled = false;
    m_touchLogic->setTouchEnabled(false);
    m_sliderBar->setColor({ 150, 150, 150 });
    m_groove->setColor({ 150, 150, 150 });
    if (auto normalImage = static_cast<cocos2d::CCSprite*>(m_touchLogic->m_thumb->getNormalImage())) {
        normalImage->setColor({ 150, 150, 150 });
    }
}

void Slider::disableTouch() {
    m_touchLogic->setTouchEnabled(false);
}

void Slider::enableSlider() {
    if (m_enabled) return;
    m_enabled = true;
    m_touchLogic->setTouchEnabled(true);
    m_sliderBar->setColor({ 255, 255, 255 });
    m_groove->setColor({ 255, 255, 255 });
    if (auto normalImage = static_cast<cocos2d::CCSprite*>(m_touchLogic->m_thumb->getNormalImage())) {
        normalImage->setColor({ 255, 255, 255 });
    }
}

bool Slider::getLiveDragging() {
    return m_touchLogic->m_activateThumb;
}

SliderThumb* Slider::getThumb() {
    return m_touchLogic->m_thumb;
}

float Slider::getValue() {
    return this->getThumb()->getValue();
}

void Slider::hideGroove(bool visibility) {
    m_groove->setVisible(!visibility);
}

void Slider::setBarVisibility(bool visibility) {
    m_sliderBar->setVisible(visibility);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

