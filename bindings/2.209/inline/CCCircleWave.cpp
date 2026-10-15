#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void CCCircleWave::baseSetup(float radius) {
    m_target = nullptr;
    m_radius = radius;
    m_opacity = 1.f;
    m_color.r = 255;
    m_color.g = 255;
    m_color.b = 255;
    m_circleMode = CircleMode::Filled;
    m_lineWidth = 2;
    m_opacityMod = 1.f;
    m_blendAdditive = true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
CCCircleWave* CCCircleWave::create(float startRadius, float endRadius, float duration, bool fadeIn) {
    return CCCircleWave::create(startRadius, endRadius, duration, fadeIn, true);
}

void CCCircleWave::followObject(cocos2d::CCNode* newTarget, bool staticPosition) {
    if (m_target) m_target->release();

    m_target = newTarget;
    newTarget->retain();

    this->unschedule(schedule_selector(CCCircleWave::updatePosition));
    if (!staticPosition) this->schedule(schedule_selector(CCCircleWave::updatePosition));

    this->setPosition(newTarget->getPosition());
}
#endif

#if defined(GEODE_IS_IOS)
#endif

