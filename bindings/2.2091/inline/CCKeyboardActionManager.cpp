#include <Geode/mapping/CCKeyboardActionManager.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#ifdef GEODE_IS_MACOS
bool cocos2d::CCKeyboardActionManager::handleGlobalAction(int, bool) {
    return false;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif
