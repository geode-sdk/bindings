#include <Geode/Bindings.hpp>

void BoomScrollLayerDelegate::scrollLayerScrollingStarted(BoomScrollLayer* layer) {}

void BoomScrollLayerDelegate::scrollLayerScrolledToPage(BoomScrollLayer* layer, int page) {}

void BoomScrollLayerDelegate::scrollLayerMoved(cocos2d::CCPoint position) {}

void BoomScrollLayerDelegate::scrollLayerWillScrollToPage(BoomScrollLayer* layer, int page) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

