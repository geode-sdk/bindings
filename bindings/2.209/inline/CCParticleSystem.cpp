#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCParticleSystem* cocos2d::CCParticleSystem::create(const char* plistFile) {
    auto ret = new CCParticleSystem();
    if (ret->initWithFile(plistFile, false)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCParticleSystem* cocos2d::CCParticleSystem::createWithTotalParticles(unsigned int numberOfParticles) {
    auto ret = new CCParticleSystem();
    if (ret->initWithTotalParticles(numberOfParticles, false)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool cocos2d::CCParticleSystem::initWithDictionary(cocos2d::CCDictionary* p0, bool p1) {
    return this->initWithDictionary(p0, "", p1);
}

bool cocos2d::CCParticleSystem::isFull() {
    return m_uParticleCount == m_uTotalParticles;
}

void cocos2d::CCParticleSystem::loadDefaults() {
    m_fStartSize = m_fDefaultStartSize;
    m_fStartSizeVar = m_fDefaultStartSizeVar;
    m_fEndSize = m_fDefaultEndSize;
    m_tPosVar = m_tDefaultPosVar;
    m_fAngle = m_fDefaultAngle;
    if (m_nEmitterMode == kCCParticleModeGravity) {
        this->setSpeed(m_fDefaultModeASpeed);
        this->setSpeedVar(m_fDefaultModeASpeedVar);
    }
}

void cocos2d::CCParticleSystem::updateVisible() {
    m_bVisible = *reinterpret_cast<bool*>(reinterpret_cast<uintptr_t>(&m_bUsingSchedule) + 1) && m_uParticleCount != 0;
}
#endif

