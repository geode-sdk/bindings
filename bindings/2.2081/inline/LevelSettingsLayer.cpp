#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void LevelSettingsLayer::showPicker(ColorAction* action) {
    auto popup = ColorSelectPopup::create(action);
    popup->m_delegate = this;
    popup->show();
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

