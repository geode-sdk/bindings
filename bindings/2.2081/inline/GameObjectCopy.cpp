#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool GameObjectCopy::init(GameObject* object) {
    m_object = object;
    object->retain();
    m_position = m_object->getPosition();
    m_rotationX = m_object->getRotationX();
    m_rotationY = m_object->getRotationY();
    m_isFlipX = m_object->isFlipX();
    m_isFlipY = m_object->isFlipY();
    m_customScaleX = m_object->m_scaleX;
    m_customScaleY = m_object->m_scaleY;
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

