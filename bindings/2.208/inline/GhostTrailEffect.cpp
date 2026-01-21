#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void GhostTrailEffect::draw() {}

void GhostTrailEffect::doBlendAdditive() {
    m_blendFunc.src = GL_SRC_ALPHA;
    m_blendFunc.dst = GL_ONE;
}

void GhostTrailEffect::runWithTarget(cocos2d::CCSprite* sprite, float snapshotInterval, float fadeInterval, float duration, float ghostScale, bool scaleTwice) {
    m_iconSprite = sprite;
    m_snapshotInterval = snapshotInterval;
    m_fadeInterval = fadeInterval;
    if (ghostScale <= .1f) ghostScale = .1f;
    m_scaleTwice = scaleTwice;
    m_ghostScale = ghostScale;
    this->schedule(schedule_selector(GhostTrailEffect::trailSnapshot), snapshotInterval);
    if (duration > 0.f) this->runAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(duration),
        cocos2d::CCCallFunc::create(this, callfunc_selector(GhostTrailEffect::stopTrail)),
        nullptr
    ));
}

void GhostTrailEffect::stopTrail() {
    this->unscheduleAllSelectors();
    this->stopAllActions();
    this->removeMeAndCleanup();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

