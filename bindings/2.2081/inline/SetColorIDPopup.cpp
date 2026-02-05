#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
SetColorIDPopup::SetColorIDPopup() {}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetColorIDPopup* SetColorIDPopup::create(int id) {
    auto ret = new SetColorIDPopup();
    if (ret->init(id)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

