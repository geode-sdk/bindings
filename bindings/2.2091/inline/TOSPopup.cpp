#include <Geode/binding/TOSPopup.hpp>

TOSPopup::TOSPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#ifdef GEODE_IS_MACOS
TOSPopup::~TOSPopup() {}
#endif

#if defined(GEODE_IS_WINDOWS)
TOSPopup* TOSPopup::create() {
    auto ret = new TOSPopup();
    if(ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void TOSPopup::keyBackClicked() {}
#endif

#if defined(GEODE_IS_IOS)
#endif

