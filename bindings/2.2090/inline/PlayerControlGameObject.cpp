#include <Geode/Bindings.hpp>

PlayerControlGameObject::PlayerControlGameObject() {
    m_stopJump = false;
    m_stopMove = false;
    m_stopRotation = false;
    m_stopSlide = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
PlayerControlGameObject* PlayerControlGameObject::create() {
    auto ret = new PlayerControlGameObject();
    if (ret && ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

