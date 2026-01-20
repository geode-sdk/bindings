#include <Geode/Geode.hpp>

SliderThumb::SliderThumb() {
    m_length = 0.f;
    m_vertical = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool SliderThumb::init(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler selector, char const* normalFrame, char const* selectedFrame) {
    m_length = 200.f;
    return cocos2d::CCMenuItemImage::initWithNormalImage(normalFrame, selectedFrame, nullptr, target, selector);
}
#endif

#if defined(GEODE_IS_WINDOWS)
SliderThumb* SliderThumb::create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler selector, char const* normalFrame, char const* selectedFrame) {
    auto ret = new SliderThumb();
    if (ret->init(target, selector, normalFrame, selectedFrame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void SliderThumb::setMaxOffset(float offset) {
    float value = getValue();
    m_length = offset;
    this->setPosition({0, 0});
    setValue(value);
}

void SliderThumb::setRotated(bool rotated) {
    float value = getValue();
    m_vertical = rotated;
    this->setPosition({0, 0});
    setValue(value);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

