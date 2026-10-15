#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCAnimation::CCAnimation() {
    m_fTotalDelayUnits = 0.f;
    m_fDelayPerUnit = 0.f;
    m_fDuration = 0.f;
    m_pFrames = nullptr;
    m_bRestoreOriginalFrame = false;
    m_uLoops = 0;
}

void cocos2d::CCAnimation::addSpriteFrame(cocos2d::CCSpriteFrame* frame) {
    auto animationFrame = new CCAnimationFrame();
    animationFrame->initWithSpriteFrame(frame, 1.f, nullptr);
    m_pFrames->addObject(animationFrame);
    animationFrame->release();
    m_fTotalDelayUnits++;
}

void cocos2d::CCAnimation::addSpriteFrameWithFileName(const char* filename) {
    auto texture = cocos2d::CCTextureCache::sharedTextureCache()->addImage(filename, false);
    this->addSpriteFrame(cocos2d::CCSpriteFrame::createWithTexture(texture, { { 0.f, 0.f }, texture->getContentSize() }));
}

void cocos2d::CCAnimation::addSpriteFrameWithTexture(cocos2d::CCTexture2D* texture, cocos2d::CCRect const& rect) {
    this->addSpriteFrame(cocos2d::CCSpriteFrame::createWithTexture(texture, rect));
}

cocos2d::CCAnimation* cocos2d::CCAnimation::create() {
    auto ret = new CCAnimation();
    ret->init();
    ret->autorelease();
    return ret;
}

bool cocos2d::CCAnimation::init() {
    return this->initWithSpriteFrames(nullptr, 0.f);
}
#endif

