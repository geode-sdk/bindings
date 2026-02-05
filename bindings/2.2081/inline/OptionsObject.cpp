#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool OptionsObject::init(int id, bool enabled, gd::string name, OptionsObjectDelegate* delegate) {
    m_optionID = id;
    m_enabled = enabled;
    m_name = name;
    m_delegate = delegate;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
void OptionsObject::toggleState() {
    m_enabled = !m_enabled;
    if (m_delegate) m_delegate->stateChanged(this);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

