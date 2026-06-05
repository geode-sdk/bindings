#include <Geode/Geode.hpp>

#if !defined(GEODE_IS_WINDOWS)
LevelOptionsLayer::LevelOptionsLayer() {
    m_settingsObject = nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
LevelOptionsLayer* LevelOptionsLayer::create(LevelSettingsObject* object) {
    auto ret = new LevelOptionsLayer();
    if (ret->init(object)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

