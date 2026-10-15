#include <Geode/Bindings.hpp>

GJPathRewardPopup::GJPathRewardPopup() {
    m_pathNumber = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJPathRewardPopup* GJPathRewardPopup::create(int path) {
    auto ret = new GJPathRewardPopup();
    if (ret->init(path)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void GJPathRewardPopup::keyBackClicked() {}
#endif

#if defined(GEODE_IS_IOS)
#endif

