#include <Geode/Bindings.hpp>

TouchToggleAction::TouchToggleAction() {}

TouchToggleAction::TouchToggleAction(int targetID, bool holdMode, TouchTriggerType touchType, TouchTriggerControl touchControl, bool dualMode, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    m_disabled = false;
    m_targetGroupID = targetID;
    m_holdMode = holdMode;
    m_touchTriggerType = touchType;
    m_touchTriggerControl = touchControl;
    m_triggerUniqueID = uniqueID;
    m_controlID = controlID;
    m_dualMode = dualMode;
    m_remapKeys = remapKeys;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

