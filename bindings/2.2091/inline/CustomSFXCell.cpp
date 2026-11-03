#include <Geode/binding/CustomSFXCell.hpp>
#include <Geode/binding/SFXInfoObject.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool CustomSFXCell::shouldReload() {
    bool match = m_sfxObject->m_sfxID == this->getActiveSFXID()
              && m_sfxObject->m_customSfxID == this->getActiveCustomSFXID();

    bool customSelected = m_sfxObject->m_customSfxID > 0
                       && this->isCustomEntrySelected(m_sfxObject->m_customSfxID);

    if (m_selected != match) return true;
    return customSelected != m_compactMode;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
CustomSFXCell::CustomSFXCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}
#endif

