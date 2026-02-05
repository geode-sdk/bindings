#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#include <Geode/cocos/particle_nodes/firePngData.h>

cocos2d::CCParticleExplosion* cocos2d::CCParticleExplosion::create() {
    auto ret = new CCParticleExplosion();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCParticleExplosion* cocos2d::CCParticleExplosion::createWithTotalParticles(unsigned int p0) {
    auto ret = new CCParticleExplosion();
    if (ret->initWithTotalParticles(p0)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool cocos2d::CCParticleExplosion::initWithTotalParticles(unsigned int p0) {
    if (!CCParticleSystemQuad::initWithTotalParticles(p0, false)) return false;
    m_fDuration = .1f;
    this->setEmitterMode(kCCParticleModeGravity);
    this->setGravity({ 0.f, 0.f });
    this->setSpeed(70.f);
    this->setSpeedVar(40.f);
    this->setRadialAccel(0.f);
    this->setRadialAccelVar(0.f);
    this->setTangentialAccel(0.f);
    this->setTangentialAccelVar(0.f);
    m_fAngle = 90.f;
    m_fAngleVar = 360.f;
    this->setPosition(CCDirector::sharedDirector()->getWinSize() / 2.f);
    this->setPosVar({ 0.f, 0.f });
    m_fLife = 5.f;
    m_fLifeVar = 2.f;
    m_fStartSize = 15.f;
    m_fStartSizeVar = 10.f;
    m_fEndSize = kCCParticleStartSizeEqualToEndSize;
    m_fEmissionRate = m_uTotalParticles / m_fDuration;
    m_tStartColor = { .7f, .1f, .2f, 1.f };
    m_tStartColorVar = { .5f, .5f, .5f, 0.f };
    m_tEndColor = { .5f, .5f, .5f, 0.f };
    m_tEndColorVar = { .5f, .5f, .5f, 0.f };
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

