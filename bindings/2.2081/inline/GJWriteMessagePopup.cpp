#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void GJWriteMessagePopup::textInputOpened(CCTextInputNode* node) {}

void GJWriteMessagePopup::updateCharCountLabel(int type) {
    cocos2d::CCLabelBMFont* label;
    int count;
    int maxCount;
    if (type == 0) {
        label = m_subjectCountLabel;
        count = m_subjectText.size();
        maxCount = 35;
    }
    else {
        label = m_messageCountLabel;
        count = m_messageText.size();
        maxCount = 200;
    }
    if (maxCount * .9f <= count) {
        label->setOpacity(255);
        label->setColor({ 255, 0, 0 });
    }
    else if (maxCount * .7f <= count) {
        label->setOpacity(255);
        label->setColor({ 255, 255, 255 });
    }
    else {
        label->setOpacity(100);
        label->setColor({ 255, 255, 255 });
    }
    label->setString(cocos2d::CCString::createWithFormat("%i", maxCount - count)->getCString());
}
#endif

#if defined(GEODE_IS_IOS)
#endif

