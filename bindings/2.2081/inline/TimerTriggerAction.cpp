#include <Geode/Bindings.hpp>

TimerTriggerAction::TimerTriggerAction() {}

TimerTriggerAction::TimerTriggerAction(int targetID, float targetTime, bool multiActivate, int itemID, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    m_disabled = false;
    m_time = 0.f;
    m_targetTime = targetTime;
    m_targetGroupID = targetID;
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

