#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void SelectArtLayer::updateSelectedCustom(int idx) {
    if (m_lineSprites) {
        m_line = idx;
        this->onSelectCustom(nullptr);
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

