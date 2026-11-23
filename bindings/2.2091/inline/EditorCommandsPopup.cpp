#include <Geode/binding/EditorCommandsPopup.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool EditorCommandsPopup::init(EditorUI* editorUI) {
    m_minWidth = 100.f;
    m_minHeight = 60.f;
    m_maxWidth = 160.f;
    m_maxHeight = 405.f;
    return this->initWindow(editorUI, 160.f, 270.f, 1, 1);
}
#endif

#if defined(GEODE_IS_IOS)
#endif
