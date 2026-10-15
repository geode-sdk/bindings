#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_MACOS)
cocos2d::CCLayerMultiplex* cocos2d::CCLayerMultiplex::create(cocos2d::CCLayer* layer, ...) {
    va_list args;
    va_start(args, layer);
    auto ret = new CCLayerMultiplex();
    if (ret->initWithLayers(layer, args)) {
        ret->autorelease();
        va_end(args);
        return ret;
    }
    va_end(args);
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

