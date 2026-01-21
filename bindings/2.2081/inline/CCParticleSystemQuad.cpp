#include <Geode/Geode.hpp>


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
#endif

