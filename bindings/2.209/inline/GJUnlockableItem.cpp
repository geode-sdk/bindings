#include <Geode/Bindings.hpp>

GJUnlockableItem::GJUnlockableItem() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool GJUnlockableItem::init() {
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJUnlockableItem* GJUnlockableItem::create() {
    auto ret = new GJUnlockableItem();
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

