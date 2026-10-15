#include <Geode/Bindings.hpp>

CCContentLayer::CCContentLayer() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
CCContentLayer* CCContentLayer::create(cocos2d::ccColor4B const& color, float width, float height) {
    auto ret = new CCContentLayer();
    if (ret->initWithColor(color, width, height)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

