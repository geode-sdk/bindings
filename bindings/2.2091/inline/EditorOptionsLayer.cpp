#if !defined(GEODE_IS_WINDOWS) && !defined(GEODE_IS_IOS) // no longer used in 2.209

#include <Geode/binding/EditorOptionsLayer.hpp>

EditorOptionsLayer::EditorOptionsLayer() {
    m_buttonsPerRow = 0;
    m_buttonRows = 0;
    m_buttonsPerRowLabel = nullptr;
    m_buttonRowsLabel = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

#endif
