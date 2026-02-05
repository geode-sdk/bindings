#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool ItemInfoPopup::isUnlockedByDefault(int id, UnlockType type) {
    if (type == UnlockType::Cube) return id < 5;
    if (type == UnlockType::Col1 || type == UnlockType::Col2) return id < 4;
    return id < 2;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

