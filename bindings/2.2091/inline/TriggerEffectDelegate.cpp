#include <Geode/binding/TriggerEffectDelegate.hpp>

void TriggerEffectDelegate::toggleGroupTriggered(int group, bool activate, std::vector<int> const& remapKeys, int triggerID, int controlID) {}

void TriggerEffectDelegate::spawnGroup(int group, bool ordered, double delay, std::vector<int> const& remapKeys, int triggerID, int controlID) {}

void TriggerEffectDelegate::spawnObject(GameObject* object, double delay, std::vector<int> const& remapKeys) {}

bool TriggerEffectDelegate::checkSpawnAbuse() { return false; }

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

