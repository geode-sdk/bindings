#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupRandAdvTriggerPopup::textChanged(CCTextInputNode* node) {}

void SetupRandAdvTriggerPopup::addChance(int id, int chance) {
    m_performedAction = true;
    if (m_gameObject) {
        this->addChanceToObject(static_cast<RandTriggerGameObject*>(m_gameObject), id, chance);
    }
    else if (m_gameObjects) {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            this->addChanceToObject(static_cast<RandTriggerGameObject*>(m_gameObjects->objectAtIndex(i)), id, chance);
        }
    }
    this->updateGroupIDButtons();
}

void SetupRandAdvTriggerPopup::addChanceToObject(RandTriggerGameObject* object, int id, int chance) {
    for (auto& object : object->m_chanceObjects) {
        if (object.m_groupID == id) {
            object.m_chance += chance;
            return;
        }
    }
    object->m_chanceObjects.emplace_back(id, chance);
}

void SetupRandAdvTriggerPopup::removeGroupID(int id) {
    m_performedAction = true;
    if (m_gameObject) {
        this->removeGroupIDFromObject(static_cast<RandTriggerGameObject*>(m_gameObject), id);
    }
    else if (m_gameObjects) {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            this->removeGroupIDFromObject(static_cast<RandTriggerGameObject*>(m_gameObjects->objectAtIndex(i)), id);
        }
    }
    this->updateGroupIDButtons();
}

void SetupRandAdvTriggerPopup::removeGroupIDFromObject(RandTriggerGameObject* object, int id) {
    for (int i = 0; i < object->m_chanceObjects.size(); i++) {
        if (object->m_chanceObjects[i].m_groupID == id) {
            object->m_chanceObjects.erase(object->m_chanceObjects.begin() + i);
            return;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

