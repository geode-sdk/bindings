#include <Geode/Geode.hpp>

ExplodeItemSprite::ExplodeItemSprite() {
    m_xVelocity = 0.f;
    m_yVelocity = 0.f;
    m_timeRemaining = 0.f;
    m_fadeOutTime = 0.f;
    m_rotVelocity = 0.f;
    m_particles = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
ExplodeItemSprite* ExplodeItemSprite::create() {
    auto ret = new ExplodeItemSprite();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

