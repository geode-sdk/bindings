#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#include <Geode/cocos/particle_nodes/firePngData.h>

cocos2d::CCParticleSnow* cocos2d::CCParticleSnow::create() {
    CCParticleSnow* pRet = new CCParticleSnow();
    if (pRet && pRet->init())
    {
        pRet->autorelease();
    }
    else
    {
        CC_SAFE_DELETE(pRet);
    }
    return pRet;
}

cocos2d::CCParticleSnow* cocos2d::CCParticleSnow::createWithTotalParticles(unsigned int numberOfParticles) {
    CCParticleSnow* pRet = new CCParticleSnow();
    if (pRet && pRet->initWithTotalParticles(numberOfParticles))
    {
        pRet->autorelease();
    }
    else
    {
        CC_SAFE_DELETE(pRet);
    }
    return pRet;
}

bool cocos2d::CCParticleSnow::initWithTotalParticles(unsigned int numberOfParticles) {
    if( CCParticleSystemQuad::initWithTotalParticles(numberOfParticles, false) ) 
    {
        // duration
        m_fDuration = kCCParticleDurationInfinity;

        // set gravity mode.
        setEmitterMode(kCCParticleModeGravity);

        // Gravity Mode: gravity
        setGravity(ccp(0,-1));

        // Gravity Mode: speed of particles
        setSpeed(5);
        setSpeedVar(1);

        // Gravity Mode: radial
        setRadialAccel(0);
        setRadialAccelVar(1);

        // Gravity mode: tangential
        setTangentialAccel(0);
        setTangentialAccelVar(1);

        // emitter position
        CCSize winSize = CCDirector::sharedDirector()->getWinSize();
        this->setPosition(ccp(winSize.width/2, winSize.height + 10));
        setPosVar(ccp(winSize.width/2, 0));

        // angle
        m_fAngle = -90;
        m_fAngleVar = 5;

        // life of particles
        m_fLife = 45;
        m_fLifeVar = 15;

        // size, in pixels
        m_fStartSize = 10.0f;
        m_fStartSizeVar = 5.0f;
        m_fEndSize = kCCParticleStartSizeEqualToEndSize;

        // emits per second
        m_fEmissionRate = 10;

        // color of particles
        m_tStartColor.r = 1.0f;
        m_tStartColor.g = 1.0f;
        m_tStartColor.b = 1.0f;
        m_tStartColor.a = 1.0f;
        m_tStartColorVar.r = 0.0f;
        m_tStartColorVar.g = 0.0f;
        m_tStartColorVar.b = 0.0f;
        m_tStartColorVar.a = 0.0f;
        m_tEndColor.r = 1.0f;
        m_tEndColor.g = 1.0f;
        m_tEndColor.b = 1.0f;
        m_tEndColor.a = 0.0f;
        m_tEndColorVar.r = 0.0f;
        m_tEndColorVar.g = 0.0f;
        m_tEndColorVar.b = 0.0f;
        m_tEndColorVar.a = 0.0f;

        // CCTexture2D* pTexture = getDefaultTexture();

        // getDefaultTexture : https://github.com/cocos2d/cocos2d-x/blob/v2/cocos2dx/particle_nodes/CCParticleExamples.cpp
        CCTexture2D* pTexture = NULL;
        CCImage* pImage = NULL;
        do 
        {
            bool bRet = false;
            const char* key = "__firePngData";
            pTexture = CCTextureCache::sharedTextureCache()->textureForKey(key);
            CC_BREAK_IF(pTexture != NULL);

            pImage = new CCImage();
            CC_BREAK_IF(NULL == pImage);
            bRet = pImage->initWithImageData((void*)__firePngData, sizeof(__firePngData), CCImage::kFmtPng);
            CC_BREAK_IF(!bRet);

            pTexture = CCTextureCache::sharedTextureCache()->addUIImage(pImage, key);
        } while (0);

        CC_SAFE_RELEASE(pImage);

        if (pTexture != NULL)
        {
            setTexture(pTexture);
        }

        // additive
        this->setBlendAdditive(false);
        return true;
    }
    return false;
}
#endif

