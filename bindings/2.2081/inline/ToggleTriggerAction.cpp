#include <Geode/Bindings.hpp>

ToggleTriggerAction::ToggleTriggerAction() {}

ToggleTriggerAction::ToggleTriggerAction(int targetID, bool activateGroup, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    m_disabled = false;
    m_targetGroupID = targetID;
    m_activateGroup = activateGroup;
    m_triggerUniqueID = uniqueID;
    m_controlID = controlID;
    m_remapKeys = remapKeys;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

