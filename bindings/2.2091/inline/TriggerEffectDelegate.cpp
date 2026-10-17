#include <Geode/Bindings.hpp>

void TriggerEffectDelegate::toggleGroupTriggered(int group, bool activate, std::vector<int> const& remapKeys, int triggerID, int controlID) {}

void TriggerEffectDelegate::spawnGroup(int group, bool ordered, double delay, std::vector<int> const& remapKeys, int triggerID, int controlID) {}

void TriggerEffectDelegate::spawnObject(GameObject* object, double delay, std::vector<int> const& remapKeys) {}

#if defined(GEODE_IS_ANDROID) || defined(GEODE_IS_IOS)
bool TriggerEffectDelegate::checkSpawnAbuse() { return false; }
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

