#include <Geode/binding/EditorWindowPopup.hpp>

void EditorWindowPopup::onBuildWindowContent() {}

void EditorWindowPopup::onWindowResized() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void EditorWindowPopup::setWindowSizeBounds(float minWidth, float minHeight, float maxWidth, float maxHeight) {
    m_minWidth = minWidth;
    m_minHeight = minHeight;
    m_maxWidth = maxWidth;
    m_maxHeight = maxHeight;
}
#endif

#if defined(GEODE_IS_IOS)
#endif
