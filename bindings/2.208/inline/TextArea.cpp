#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
float TextArea::fadeIn(float duration, bool unused) {
    this->stopAllActions();
    this->stopAllCharacterActions();
    this->setOpacity(0);
    this->runAction(cocos2d::CCSequence::create(
        cocos2d::CCFadeIn::create(duration),
        cocos2d::CCDelayTime::create(duration),
        cocos2d::CCCallFunc::create(this, callfunc_selector(TextArea::finishFade)),
        nullptr
    ));
    return duration;
}

void TextArea::fadeOut(float duration) {
    this->stopAllActions();
    this->stopAllCharacterActions();
    this->runAction(cocos2d::CCActionTween::create(duration, "opacity", this->getOpacity(), 0.f));
}

void TextArea::fadeOutAndRemove() {
    this->fadeOut(.3f);
    this->runAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(.3f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(cocos2d::CCNode::removeMeAndCleanup)),
        nullptr
    ));
}

void TextArea::hideAll() {
    this->stopAllCharacterActions();
    this->setOpacity(0);
}

void TextArea::setIgnoreColorCode(bool ignore) {
    m_disableColor = ignore;
    if (m_label) m_label->m_disableColor = ignore;
}
#endif

#if defined(GEODE_IS_WINDOWS)
void TextArea::draw() {}

void TextArea::colorAllLabels(cocos2d::ccColor3B color) {
    auto lines = m_label->m_lines;
    for (int i = 0; i < lines->count(); i++) {
        static_cast<cocos2d::CCLabelBMFont*>(lines->objectAtIndex(i))->setColor(color);
    }
}

bool TextArea::init(gd::string str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float lineHeight, bool disableColor) {
    if (!cocos2d::CCSprite::init()) return false;
    m_width = width;
    m_anchorPoint = anchor;
    m_fontFile = font;
    m_scale = scale;
    m_height = lineHeight;
    m_disableColor = disableColor;
    this->setString(str);
    return true;
}

void TextArea::showAll() {
    this->stopAllCharacterActions();
    this->setOpacity(255);
    m_allShown = true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

