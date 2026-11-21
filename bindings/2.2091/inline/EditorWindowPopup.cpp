#include <Geode/binding/EditorWindowPopup.hpp>

void EditorWindowPopup::onWindowResized() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#ifdef GEODE_IS_MACOS
void EditorWindowPopup::onBuildWindowContent() {}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif
