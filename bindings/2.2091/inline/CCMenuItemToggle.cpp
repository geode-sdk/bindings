#include <Geode/Bindings.hpp>

#if defined(GEODE_IS_MACOS)
cocos2d::CCMenuItemToggle* cocos2d::CCMenuItemToggle::createWithTarget(cocos2d::CCObject* target, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenuItem* item, ...) {
    va_list args;
    va_start(args, item);
    auto ret = new CCMenuItemToggle();
    ret->initWithTarget(target, selector, item, args);
    ret->autorelease();
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

