#include <Geode/Bindings.hpp>

CheckpointGameObject::CheckpointGameObject() {
    m_checkpointActivated = false;
    m_respawnID = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
CheckpointGameObject* CheckpointGameObject::create() {
    auto ret = new CheckpointGameObject();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void CheckpointGameObject::updateCheckpointSpriteVisibility() {
    this->getChildByTag(1125)->setVisible(!m_checkpointActivated);
    this->getChildByTag(1126)->setVisible(!m_checkpointActivated);
    this->getChildByTag(1127)->setVisible(!m_checkpointActivated);
    this->getChildByTag(1128)->setVisible(m_checkpointActivated);
    m_colorSprite->getChildByTag(1125)->setVisible(!m_checkpointActivated);
    m_colorSprite->getChildByTag(1126)->setVisible(!m_checkpointActivated);
    m_colorSprite->getChildByTag(1127)->setVisible(!m_checkpointActivated);
    m_colorSprite->getChildByTag(1128)->setVisible(m_checkpointActivated);
    if (m_checkpointActivated) this->setObjectColor({ 255, 255, 255 });
    m_isColorSpriteBlack = m_checkpointActivated;
}
#endif

#if defined(GEODE_IS_IOS)
void CheckpointGameObject::resetCheckpoint() {
    m_checkpointActivated = false;
    this->updateCheckpointSpriteVisibility();
}
#endif

