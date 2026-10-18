#include <Geode/Bindings.hpp>

SelectPremadeLayer::SelectPremadeLayer() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SelectPremadeLayer* SelectPremadeLayer::create() {
    auto ret = new SelectPremadeLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

