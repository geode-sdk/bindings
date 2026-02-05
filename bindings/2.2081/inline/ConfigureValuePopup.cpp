#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void ConfigureValuePopup::addInfoAlertButton(gd::string title, gd::string description) {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto button = InfoAlertButton::create(title, description, .8f);
    button->m_textScale = .9f;
    m_buttonMenu->addChild(button);
    button->setPosition(m_buttonMenu->convertToNodeSpace(winSize * .5f + cocos2d::CCPoint { 113.f, 83.f }));
}
#endif

#if defined(GEODE_IS_IOS)
#endif

