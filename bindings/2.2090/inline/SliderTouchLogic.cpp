#include <Geode/Bindings.hpp>

SliderTouchLogic::SliderTouchLogic() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void SliderTouchLogic::setMaxOffset(float offset) {
    float newOffset = m_thumb->getScale() * offset;
    m_length = newOffset;
    m_thumb->setMaxOffset(newOffset);
}

void SliderTouchLogic::setRotated(bool rotated) {
    m_rotated = rotated;
    m_thumb->setRotated(rotated);
}
#endif

#if defined(GEODE_IS_WINDOWS)
SliderTouchLogic* SliderTouchLogic::create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler selector, char const* thumb, char const* thumbSel, float scale) {
    auto ret = new SliderTouchLogic();
    if (ret->init(target, selector, thumb, thumbSel, scale)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool SliderTouchLogic::init(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler selector, char const* thumb, char const* thumbSel, float scale) {
    if (!cocos2d::CCMenu::init()) return false;
    m_rotated = false;
    m_length = scale * 200.f;
    this->setPosition({ 0.f, 0.f });
    m_thumb = SliderThumb::create(target, selector, thumb, thumbSel);
    this->addChild(m_thumb);
    m_thumb->setScale(scale);
    m_activateThumb = false;
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

