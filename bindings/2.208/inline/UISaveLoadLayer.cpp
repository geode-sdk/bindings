#include <Geode/Geode.hpp>

UISaveLoadLayer::UISaveLoadLayer() {
    m_optionsLayer = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
UISaveLoadLayer* UISaveLoadLayer::create(UIOptionsLayer* layer) {
    auto ret = new UISaveLoadLayer();
    if (ret->init(layer)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

