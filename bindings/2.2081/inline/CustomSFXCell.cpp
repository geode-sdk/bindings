#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool CustomSFXCell::shouldReload() {
    return (m_sfxObject->m_sfxID == this->getActiveSFXID()) != m_selected;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
CustomSFXCell::CustomSFXCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}
#endif

