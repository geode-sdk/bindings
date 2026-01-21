#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void ShareCommentLayer::textInputOpened(CCTextInputNode* node) {}

void ShareCommentLayer::updateCharCountLabel() {
    if (m_charLimit * .9f <= m_descText.size()) {
        m_charCountLabel->setColor({ 255, 0, 0 });
        m_charCountLabel->setOpacity(255);
    } else if (m_charLimit * .7f <= m_descText.size()) {
        m_charCountLabel->setColor({ 0, 0, 0 });
        m_charCountLabel->setOpacity(255);
    } else {
        m_charCountLabel->setColor({ 0, 0, 0 });
        m_charCountLabel->setOpacity(125);
    }
    m_charCountLabel->setString(cocos2d::CCString::createWithFormat("%i", m_charLimit - m_descText.size())->getCString());
}
#endif

#if defined(GEODE_IS_IOS)
void ShareCommentLayer::updateDescText(gd::string desc) {
    m_descText = desc;
    this->updateCharCountLabel();
}
#endif

