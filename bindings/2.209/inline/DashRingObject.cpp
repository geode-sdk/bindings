#include <Geode/Bindings.hpp>

DashRingObject::DashRingObject() {
    m_dashSpeed = 1.f;
    m_endBoost = 1.f;
    m_maxDuration = 0.f;
    m_allowCollide = false;
    m_stopSlide = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool DashRingObject::init(char const* frame) {
    return RingObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
DashRingObject* DashRingObject::create(char const* frame) {
    auto ret = new DashRingObject();
    if (ret->init(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

