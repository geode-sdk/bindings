#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCParticleSystemQuad* cocos2d::CCParticleSystemQuad::create() {
    CCParticleSystemQuad *pParticleSystemQuad = new CCParticleSystemQuad();
    if (pParticleSystemQuad && pParticleSystemQuad->init())
    {
        pParticleSystemQuad->autorelease();
        return pParticleSystemQuad;
    }
    CC_SAFE_DELETE(pParticleSystemQuad);
    return nullptr;
}

void cocos2d::CCParticleSystemQuad::listenBackToForeground(cocos2d::CCObject* obj) {
    this->setupVBOandVAO();
}

void cocos2d::CCParticleSystemQuad::updateTexCoords() {
    if (m_pTexture) {
        this->initTexCoordsWithRect(m_tTextureRect);
    }
}
#endif

