#include <Geode/binding/KeybindCapturePopup.hpp>
#include <Geode/binding/CCMenuItemSpriteExtra.hpp>

#if defined(GEODE_IS_WINDOWS)
void KeybindCapturePopup::updateButtonStates() {
    bool canSet = m_chord != 0 && !m_isBlocked;
    if (m_setButton) m_setButton->setEnabled(canSet);
    this->fadeButtonSprite(m_setSprite, canSet);

    bool canRemove = !m_isNewBind;
    if (m_removeButton) m_removeButton->setEnabled(canRemove);
    this->fadeButtonSprite(m_removeSprite, canRemove);
}
#endif

