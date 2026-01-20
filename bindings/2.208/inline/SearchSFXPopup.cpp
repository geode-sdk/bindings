#include <Geode/Geode.hpp>

SearchSFXPopup::SearchSFXPopup() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SearchSFXPopup* SearchSFXPopup::create(gd::string query) {
    auto ret = new SearchSFXPopup();
    if (ret->init(query)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

