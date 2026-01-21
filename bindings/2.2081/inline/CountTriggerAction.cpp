#include <Geode/Geode.hpp>

CountTriggerAction::CountTriggerAction() {}

CountTriggerAction::CountTriggerAction(int targetID, int targetCount, bool activateGroup, bool multiActivate, int itemID, int previousCount, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    m_disabled = false;
    m_previousCount = previousCount;
    m_targetCount = targetCount;
    m_targetGroupID = targetID;
    m_activateGroup = activateGroup;
    m_triggerUniqueID = uniqueID;
    m_controlID = controlID;
    m_itemID = itemID;
    m_multiActivate = multiActivate;
    m_remapKeys = remapKeys;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

