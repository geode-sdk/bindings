#include <Geode/Bindings.hpp>

SequenceTriggerGameObject::SequenceTriggerGameObject() {
    m_sequenceMode = 0;
    m_minInt = 0.f;
    m_resetMode = 0;
    m_reset = 0.f;
    m_sequenceTotalCount = 0;
    m_uniqueRemap = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void SequenceTriggerGameObject::updateSequenceTotalCount() {
    auto total = 0;
    for (auto& obj : m_chanceObjects) {
        total += obj.m_chance;
        m_sequenceTotalCount = total;
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
SequenceTriggerGameObject* SequenceTriggerGameObject::create() {
    auto ret = new SequenceTriggerGameObject();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void SequenceTriggerGameObject::addCount(int index, int count) {
    if (index < 0 || index >= m_chanceObjects.size()) return;
    auto& object = m_chanceObjects[index];
    object.m_chance = std::max(object.m_chance + count, 1);
    m_sequenceTotalCount = -1;
}

void SequenceTriggerGameObject::addTarget(int groupID, int count) {
    count = std::max(count, 1);
    m_chanceObjects.emplace_back(groupID, count);
    m_sequenceTotalCount = -1;
}

void SequenceTriggerGameObject::deleteTarget(int index) {
    if (index < 0 || index >= m_chanceObjects.size()) return;
    m_chanceObjects.erase(m_chanceObjects.begin() + index);
    m_sequenceTotalCount = -1;
}

bool SequenceTriggerGameObject::reorderTarget(int index, bool left) {
    int size = m_chanceObjects.size();
    if (index >= size) return false;
    if (left) {
        if (index == 0) return false;
        std::swap(m_chanceObjects[index], m_chanceObjects[index - 1]);
        return true;
    }
    else {
        if (index == size - 1) return false;
        std::swap(m_chanceObjects[index], m_chanceObjects[index + 1]);
        return true;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

