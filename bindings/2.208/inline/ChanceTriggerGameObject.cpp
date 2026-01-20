#include <Geode/Geode.hpp>

ChanceTriggerGameObject::ChanceTriggerGameObject() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool ChanceTriggerGameObject::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void ChanceTriggerGameObject::editChanceObject(int oldID, int newID) {
    for (auto& obj : m_chanceObjects) {
        if (obj.m_groupID == oldID) obj.m_groupID = newID;
    }
}

void ChanceTriggerGameObject::revertChanceRemap() {
    for (auto& obj : m_chanceObjects) {
        obj.m_groupID = obj.m_oldGroupID;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

