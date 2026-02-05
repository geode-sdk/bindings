#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_WINDOWS)
SetTextPopup::SetTextPopup() {
    m_input = nullptr;
    m_disableDelegate = false;
    m_cancelled = false;
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

