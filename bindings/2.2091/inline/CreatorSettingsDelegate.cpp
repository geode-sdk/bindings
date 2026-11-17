#include <Geode/binding/CreatorSettingsDelegate.hpp>

#ifndef GEODE_IS_WINDOWS
CreatorSettingsDelegate::~CreatorSettingsDelegate() {}
#endif

void CreatorSettingsDelegate::creatorDescriptionChanged(std::string const&) {}
