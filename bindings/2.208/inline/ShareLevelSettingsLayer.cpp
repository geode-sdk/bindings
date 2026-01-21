#include <Geode/Geode.hpp>

ShareLevelSettingsLayer::ShareLevelSettingsLayer() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
ShareLevelSettingsLayer* ShareLevelSettingsLayer::create(GJGameLevel* level) {
    auto ret = new ShareLevelSettingsLayer();
    if (ret->init(level)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

