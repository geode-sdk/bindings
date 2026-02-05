#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
void DynamicBitset::resize(size_t size) {
    m_bits.resize(size / 32 + 1);
}
#endif

