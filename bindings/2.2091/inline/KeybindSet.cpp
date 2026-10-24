#include <Geode/binding/KeybindSet.hpp>

#if !defined(GEODE_IS_WINDOWS)
KeybindSet::KeybindSet() {
    m_dirty = false;
}
#endif

#if defined(GEODE_IS_WINDOWS)
KeybindSet::~KeybindSet() {}
#endif
