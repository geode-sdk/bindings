#include <Geode/Bindings.hpp>

StatsLayer::StatsLayer() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
StatsLayer* StatsLayer::create() {
    auto ret = new StatsLayer();
    if(ret->init("Stats", 220.f, false)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

