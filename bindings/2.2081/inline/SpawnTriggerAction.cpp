#include <Geode/Bindings.hpp>

SpawnTriggerAction::SpawnTriggerAction() {}

SpawnTriggerAction::SpawnTriggerAction(GameObject* object, float delay, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    m_finished = false;
    m_disabled = false;
    m_duration = delay;
    m_deltaTime = 0.0;
    m_targetGroupID = 0;
    m_triggerUniqueID = uniqueID;
    m_controlID = controlID;
    m_spawnOrdered = false;
    m_gameObject = object;
    m_remapKeys = remapKeys;
}

SpawnTriggerAction::SpawnTriggerAction(int targetID, float delay, bool spawnOrdered, gd::vector<int> const& remapKeys, int uniqueID, int controlID) {
    m_finished = false;
    m_disabled = false;
    m_duration = delay;
    m_deltaTime = 0.0;
    m_targetGroupID = targetID;
    m_triggerUniqueID = uniqueID;
    m_controlID = controlID;
    m_spawnOrdered = spawnOrdered;
    m_gameObject = nullptr;
    m_remapKeys = remapKeys;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool SpawnTriggerAction::isFinished() {
    return m_finished;
}

void SpawnTriggerAction::step(float dt) {
    if (m_finished || m_disabled) return;
    m_deltaTime += dt;
    m_finished = m_deltaTime >= m_duration;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

