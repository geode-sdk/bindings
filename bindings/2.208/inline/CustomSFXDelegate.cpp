#include <Geode/Geode.hpp>

void CustomSFXDelegate::sfxObjectSelected(SFXInfoObject* object) {}

int CustomSFXDelegate::getActiveSFXID() { return 0; }

bool CustomSFXDelegate::overridePlaySFX(SFXInfoObject* object) { return false; }

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

