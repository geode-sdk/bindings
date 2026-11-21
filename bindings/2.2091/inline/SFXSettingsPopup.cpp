#include <Geode/binding/SFXSettingsPopup.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#ifdef GEODE_IS_MACOS
SFXSettingsPopup::~SFXSettingsPopup() {}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
bool SFXSettingsPopup::init(SFXBrowser* browser) {
    m_browser = browser;
    m_gap = 36.0f;
    m_maxLabelScale = 0.4f;

    return GJOptionsLayer::init(1, 110.0f);
}
#endif
