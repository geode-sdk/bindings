#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void TextAlertPopup::setAlertPosition(cocos2d::CCPoint windowOffset, cocos2d::CCPoint pointOffset) {
    if (!m_label) return;

    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    this->setPosition({
        windowOffset.x * winSize.width + m_width / 2 + pointOffset.x,
        windowOffset.y * winSize.height + m_height / 2 + pointOffset.y
    });
}

void TextAlertPopup::setLabelColor(cocos2d::ccColor3B color) {
    if (m_label) m_label->setColor(color);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

