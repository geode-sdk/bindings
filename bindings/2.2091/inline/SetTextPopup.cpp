#include <Geode/binding/SetTextPopup.hpp>
#include <Geode/binding/CCTextInputNode.hpp>

#if !defined(GEODE_IS_WINDOWS)
SetTextPopup::SetTextPopup() {
    m_input = nullptr;
    m_disableDelegate = false;
    m_cancelled = false;
    m_unk2ac = 0.f;
    m_unk2b0 = 0.f;
    m_unk2d8 = 0;
    m_unk2dc = 0;
    m_emoteButton = nullptr;
    m_emotePicker = nullptr;
    m_delegate = nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void SetTextPopup::updateTextInputLabel() {
    m_disableDelegate = true;
    m_input->setString(m_value);
    m_disableDelegate = false;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

