#include <Geode/Geode.hpp>

AchievementBar::AchievementBar() {
    m_layerColor = nullptr;
    m_unkUnused = 0;
    m_nextScene = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
AchievementBar* AchievementBar::create(char const* title, char const* desc, char const* icon, bool quest) {
    auto ret = new AchievementBar();
    if (ret->init(title, desc, icon, quest)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

