#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCScriptHandlerEntry* cocos2d::CCScriptHandlerEntry::create(int handler) {
    auto ret = new CCScriptHandlerEntry(handler);
    ret->autorelease();
    return ret;
}
#endif

