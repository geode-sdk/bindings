#include <Geode/binding/CreatorSettingsDelegate.hpp>

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MACOS)
CreatorSettingsDelegate::~CreatorSettingsDelegate() {}
#endif

void CreatorSettingsDelegate::creatorDescriptionChanged(std::string const&) {}
