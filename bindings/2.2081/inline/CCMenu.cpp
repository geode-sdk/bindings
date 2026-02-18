#include <Geode/Bindings.hpp>

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_IOS)
cocos2d::CCMenu* cocos2d::CCMenu::create(cocos2d::CCMenuItem* item, ...) {
    va_list args;
    va_start(args, item);
    auto ret = cocos2d::CCMenu::createWithItems(item, args);
    va_end(args);
    return ret;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

