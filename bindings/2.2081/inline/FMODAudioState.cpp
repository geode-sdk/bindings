#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
FMODAudioState::FMODAudioState() {
    m_interval = 0.f;
    m_elapsed = 0.f;
}
#endif

