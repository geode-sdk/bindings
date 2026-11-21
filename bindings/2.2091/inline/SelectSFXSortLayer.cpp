#include <Geode/binding/SelectSFXSortLayer.hpp>

SelectSFXSortLayer::SelectSFXSortLayer() {
    m_sortType = AudioSortType::NameAscending;
    m_delegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#ifdef GEODE_IS_MACOS
SelectSFXSortLayer::~SelectSFXSortLayer() {}
#endif

#if defined(GEODE_IS_WINDOWS)

#endif

#if defined(GEODE_IS_IOS)
#endif

