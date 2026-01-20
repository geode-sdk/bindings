#include <Geode/Geode.hpp>

GJPromoPopup::GJPromoPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJPromoPopup* GJPromoPopup::create(gd::string filename) {
    auto ret = new GJPromoPopup();
    if (ret->init(filename)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

