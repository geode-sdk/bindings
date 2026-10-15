#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
SetLevelOrderPopup::SetLevelOrderPopup() {
    m_levelID = 0;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetLevelOrderPopup* SetLevelOrderPopup::create(int levelID, int order, int amount) {
    auto ret = new SetLevelOrderPopup();
    if (ret->init(levelID, order, amount)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

