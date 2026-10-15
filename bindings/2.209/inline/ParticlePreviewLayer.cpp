#include <Geode/Bindings.hpp>

ParticlePreviewLayer::ParticlePreviewLayer() {
    m_particleMode = 0;
    m_particleSystem = nullptr;
    m_gravityMode = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void ParticlePreviewLayer::postVisit() {
    glDisable(GL_SCISSOR_TEST);
}

void ParticlePreviewLayer::preVisitWithClippingRect(cocos2d::CCRect rect) {
    if (this->isVisible()) {
        glEnable(GL_SCISSOR_TEST);
        auto position = this->getParent()->convertToWorldSpace(this->getPosition() + rect.origin);
        cocos2d::CCEGLView::sharedOpenGLView()->setScissorInPoints(position.x, position.y, rect.size.width, rect.size.height);
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
ParticlePreviewLayer* ParticlePreviewLayer::create(cocos2d::CCParticleSystemQuad* particleSystem) {
    auto ret = new ParticlePreviewLayer();
    if (ret->init(particleSystem)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool ParticlePreviewLayer::init(cocos2d::CCParticleSystemQuad* particleSystem) {
    if (!cocos2d::CCLayerColor::initWithColor({ 0, 0, 0, 255 }, 120.f, 180.f)) return false;
    m_particleSystem = particleSystem;
    this->addChild(particleSystem, 100);
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

