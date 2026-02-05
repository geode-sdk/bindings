#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
CheckpointObject::~CheckpointObject() {
    CC_SAFE_RELEASE(m_physicalCheckpointObject);
    CC_SAFE_RELEASE(m_player1Checkpoint);
    CC_SAFE_RELEASE(m_player2Checkpoint);
    CC_SAFE_RELEASE(m_gradientTriggerObjectArray);
}

CheckpointObject* CheckpointObject::create() {
    auto ret = new CheckpointObject();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

GameObject* CheckpointObject::getObject() {
    return m_physicalCheckpointObject;
}

void CheckpointObject::setObject(GameObject* object) {
    if (m_physicalCheckpointObject != object) {
        CC_SAFE_RETAIN(object);
        CC_SAFE_RELEASE(m_physicalCheckpointObject);
        m_physicalCheckpointObject = object;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

