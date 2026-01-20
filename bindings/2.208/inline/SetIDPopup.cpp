#include <Geode/Geode.hpp>

SetIDPopup::SetIDPopup() {
    m_inputNode = nullptr;
    m_value = 0;
    m_disableDelegate = false;
    m_cancelled = false;
    m_minimum = 0;
    m_maximum = 1000;
    m_default = 0;
    m_delegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void SetIDPopup::valueChanged() {}
#endif

#if defined(GEODE_IS_IOS)
#endif

