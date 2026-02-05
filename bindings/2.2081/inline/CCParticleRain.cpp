#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#include <Geode/cocos/particle_nodes/firePngData.h>

cocos2d::CCParticleRain* cocos2d::CCParticleRain::create() {
    auto ret = new CCParticleRain();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCParticleRain* cocos2d::CCParticleRain::createWithTotalParticles(unsigned int p0) {
    auto ret = new CCParticleRain();
    if (ret->initWithTotalParticles(p0)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool cocos2d::CCParticleRain::initWithTotalParticles(unsigned int p0) {
    if (!CCParticleSystemQuad::initWithTotalParticles(p0, false)) return false;
    m_fDuration = kCCParticleDurationInfinity;
    this->setEmitterMode(kCCParticleModeGravity);
    this->setGravity({ 10.f, -10.f });
    this->setRadialAccel(0.f);
    this->setRadialAccelVar(1.f);
    this->setTangentialAccel(0.f);
    this->setTangentialAccelVar(1.f);
    this->setSpeed(130.f);
    this->setSpeedVar(30.f);
    m_fAngle = -90.f;
    m_fAngleVar = 5.f;
    auto winSize = CCDirector::sharedDirector()->getWinSize();
    this->setPosition(winSize / 2.f);
    this->setPosVar({ winSize.width / 2.f, 0.f });
    m_fLife = 4.5f;
    m_fLifeVar = 0.f;
    m_fStartSize = 4.f;
    m_fStartSizeVar = 2.f;
    m_fEndSize = kCCParticleStartSizeEqualToEndSize;
    m_fEmissionRate = 20.f;
    m_tStartColor.r = .7f;
    m_tStartColor.g = .8f;
    m_tStartColor.b = 1.f;
    m_tStartColor.a = 1.f;
    m_tStartColorVar.r = 0.f;
    m_tStartColorVar.g = 0.f;
    m_tStartColorVar.b = 0.f;
    m_tStartColorVar.a = 0.f;
    m_tEndColor.r = .7f;
    m_tEndColor.g = .8f;
    m_tEndColor.b = 1.f;
    m_tEndColor.a = .5f;
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

