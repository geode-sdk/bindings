#include <Geode/Geode.hpp>

NewgroundsInfoLayer::NewgroundsInfoLayer() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
NewgroundsInfoLayer* NewgroundsInfoLayer::create() {
    auto ret = new NewgroundsInfoLayer();
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

