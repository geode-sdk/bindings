#include <Geode/Geode.hpp>

SpawnParticleGameObject::SpawnParticleGameObject() {
    m_matchRotation = false;
    m_rotation = 0.f;
    m_rotationVariance = 0.f;
    m_scale = 1.f;
    m_scaleVariance = 0.f;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SpawnParticleGameObject* SpawnParticleGameObject::create() {
    auto ret = new SpawnParticleGameObject();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

