#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
EffectGameObject* EffectGameObject::create(char const* frame) {
    auto ret = new EffectGameObject();
    if (ret->init(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool EffectGameObject::isSpecialSpawnObject() { return false; }

int EffectGameObject::getTargetColorIndex() {
    switch (m_objectID) {
        case ObjectID::LegacyBackgroundTrigger: return std::to_underlying(GJColorIndex::BG);
        case ObjectID::LegacyGroundTrigger: return std::to_underlying(GJColorIndex::G1);
        case ObjectID::LegacyObjColorTrigger: return std::to_underlying(GJColorIndex::Obj);
        case ObjectID::Legacy3DLTrigger: return std::to_underlying(GJColorIndex::TDL);
        case ObjectID::LegacyGround2Trigger: return std::to_underlying(GJColorIndex::G2);
        case ObjectID::LegacyLineTrigger2: return std::to_underlying(GJColorIndex::L);
        default: return m_targetColor;
    }
}

void EffectGameObject::resetSpawnTrigger() {
    m_activatedByPlayer1 = false;
    m_activatedByPlayer2 = false;
    m_spawnXPosition = this->getPosition().x;
}

void EffectGameObject::setTargetID(int id) {
    m_targetGroupID = std::clamp(id, 0, 9999);
}

void EffectGameObject::setTargetID2(int id) {
    m_centerGroupID = std::clamp(id, 0, 9999);
}
#endif

#if defined(GEODE_IS_IOS)
bool EffectGameObject::init(char const* frame) {
    if (!EnhancedGameObject::init(frame)) return false;
    m_classType = GameObjectClassType::Effect;
    m_triggerTargetColor.r = 255;
    m_triggerTargetColor.g = 255;
    m_triggerTargetColor.b = 255;
    m_legacyHSV = true;
    m_duration = .5f;
    return true;
}
#endif

