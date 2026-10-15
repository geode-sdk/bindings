#include <Geode/Bindings.hpp>

SelectSFXSortLayer::SelectSFXSortLayer() {
    m_sortType = AudioSortType::NameAscending;
    m_delegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SelectSFXSortLayer* SelectSFXSortLayer::create(AudioSortType sortType) {
    auto ret = new SelectSFXSortLayer();
    if (ret->init(sortType)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

