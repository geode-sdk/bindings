#include <Geode/Geode.hpp>

SpawnTriggerGameObject::SpawnTriggerGameObject() {
    m_remapKey = 0;
    m_currentDelay = 0.0;
    m_spawnDelay = 0.f;
    m_delayRange = 0.f;
    m_resetRemap = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SpawnTriggerGameObject* SpawnTriggerGameObject::create() {
    auto ret = new SpawnTriggerGameObject();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void SpawnTriggerGameObject::addRemap(int oldID, int newID) {
    for (auto& obj : m_remapObjects) {
        if (obj.m_groupID == oldID && obj.m_chance == newID) return;
    }
    m_remapObjects.emplace_back(oldID, newID);
}

void SpawnTriggerGameObject::removeRemap(int oldID, int newID) {
    for (int i = 0; i < m_remapObjects.size(); i++) {
        auto& obj = m_remapObjects[i];
        if (obj.m_groupID == oldID && obj.m_chance == newID) {
            m_remapObjects.erase(m_remapObjects.begin() + i);
            return;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

