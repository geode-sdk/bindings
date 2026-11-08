#include <Geode/binding/EditorSFXManager.hpp>
#include <Geode/binding/EditorSFXBinding.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void EditorSFXManager::releaseBinding(EditorSFXBinding* binding)
{
    if (!binding)
        return;

    CC_SAFE_RELEASE_NULL(binding->m_sounds);
    delete binding;
}
#endif

#if defined(GEODE_IS_IOS)
#endif
