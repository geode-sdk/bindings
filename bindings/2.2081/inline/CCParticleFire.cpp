#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#include <Geode/cocos/particle_nodes/firePngData.h>

cocos2d::CCParticleFire* cocos2d::CCParticleFire::create() {
    auto ret = new CCParticleFire();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCParticleFire* cocos2d::CCParticleFire::createWithTotalParticles(unsigned int p0) {
    auto ret = new CCParticleFire();
    if (ret->initWithTotalParticles(p0)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool cocos2d::CCParticleFire::initWithTotalParticles(unsigned int p0) {
    if (!CCParticleSystemQuad::initWithTotalParticles(p0, false)) return false;
    m_fDuration = kCCParticleDurationInfinity;
    m_nEmitterMode = kCCParticleModeGravity;
    modeA.gravity.x = 0.f;
    modeA.gravity.y = 0.f;
    modeA.radialAccel = 0.f;
    modeA.radialAccelVar = 0.f;
    modeA.speed = 60.f;
    modeA.speedVar = 20.f;
    m_fAngle = 90.f;
    m_fAngleVar = 10.f;
    auto winSize = CCDirector::sharedDirector()->getWinSize();
    this->setPosition(winSize / 2.f);
    m_tPosVar.x = 40.f;
    m_tPosVar.y = 20.f;
    m_fLife = 3.f;
    m_fLifeVar = .25f;
    m_fStartSize = 54.f;
    m_fStartSizeVar = 10.f;
    m_fEndSize = kCCParticleStartSizeEqualToEndSize;
    m_fEmissionRate = m_uTotalParticles / m_fLife;
    m_tStartColor.r = .76f;
    m_tStartColor.g = .25f;
    m_tStartColor.b = .12f;
    m_tStartColor.a = 1.f;
    m_tStartColorVar.r = 0.f;
    m_tStartColorVar.g = 0.f;
    m_tStartColorVar.b = 0.f;
    m_tStartColorVar.a = 0.f;
    m_tEndColor.r = 0.f;
    m_tEndColor.g = 0.f;
    m_tEndColor.b = 0.f;
    m_tEndColor.a = 1.f;
    m_tEndColorVar.r = 0.f;
    m_tEndColorVar.g = 0.f;
    m_tEndColorVar.b = 0.f;
    m_tEndColorVar.a = 0.f;
    auto textureCache = CCTextureCache::sharedTextureCache();
    auto texture = textureCache->textureForKey("__firePngData");
    if (!texture) {
        auto image = new CCImage();
        if (image->initWithImageData((void*)__firePngData, sizeof(__firePngData), CCImage::kFmtPng)) {
            texture = textureCache->addUIImage(image, "__firePngData");
        }
    }
    if (texture) this->setTexture(texture);
    this->setBlendAdditive(false);
    return true;
}
#endif

