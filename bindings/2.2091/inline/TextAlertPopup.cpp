#include <Geode/mapping/CCLabelBMFont.hpp>
#include <Geode/binding/TextAlertPopup.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void TextAlertPopup::setLabelColor(cocos2d::ccColor3B color) {
    if (m_label) m_label->setColor(color);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

