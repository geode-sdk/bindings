#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
LevelSettingsObject* LevelSettingsObject::objectFromString(gd::string const& str) {
    return objectFromDict(GameToolbox::stringSetupToDict(str, ","));
}

bool LevelSettingsObject::shouldUseYSection() {
    return m_platformerMode || m_dynamicLevelHeight;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

