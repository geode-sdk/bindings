#include <Geode/binding/CustomSFXDelegate.hpp>

void CustomSFXDelegate::sfxObjectSelected(SFXInfoObject* object) {}

int CustomSFXDelegate::getActiveSFXID() { return 0; }

bool CustomSFXDelegate::overridePlaySFX(SFXInfoObject* object) { return false; }

int CustomSFXDelegate::getActiveCustomSFXID() { return 0; }

void CustomSFXDelegate::sfxAddToFolder(SFXInfoObject*) {}

void CustomSFXDelegate::sfxEditCustomObject(SFXInfoObject*) {}

void CustomSFXDelegate::sfxToggleCustomSelect(SFXInfoObject*) {}

bool CustomSFXDelegate::isCustomEntrySelected(int) { return false; }

bool CustomSFXDelegate::inCustomSFXTree() { return false; }

bool CustomSFXDelegate::showsSFXInfoButton() { return false; }

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

