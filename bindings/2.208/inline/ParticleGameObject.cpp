#include <Geode/Geode.hpp>

ParticleGameObject::ParticleGameObject() {
    m_updatedParticleData = false;
    m_hasUniformObjectColor = false;
    m_popupPage = 0;
    m_shouldQuickStart = false;
    m_respawnResult = -1.f;
    m_startingRespawn = false;
    m_notPreviewing = false;
}

void ParticleGameObject::updateParticleColor(cocos2d::ccColor3B const& color) {}

void ParticleGameObject::updateParticleOpacity(unsigned char opacity) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void ParticleGameObject::createAndAddCustomParticle() {
    if (!m_particleData.empty()) {
        m_hasParticles = true;
        this->updateParticleStruct();
        m_hasParticles = true;
    }
}

void ParticleGameObject::updateParticleScale(float scale) {
    if (m_particle) {
        this->updateParticleAngle(this->getRotation(), m_particle);
        m_particle->loadScaledDefaults(std::abs(scale));
    }
}

void ParticleGameObject::updateParticleStruct() {
    if (!m_updatedParticleData) return;
    m_updatedParticleData = false;
    GameToolbox::particleStringToStruct(m_particleData, m_particleStruct);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

