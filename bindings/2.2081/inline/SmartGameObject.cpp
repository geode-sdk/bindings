#include <Geode/Bindings.hpp>

SmartGameObject::SmartGameObject() {
    m_referenceOnly = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SmartGameObject* SmartGameObject::create(char const* frame) {
    auto ret = new SmartGameObject();
    if (ret->init(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool SmartGameObject::init(char const* frame) {
    if (!GameObject::init(frame)) return false;
    m_baseFrame = frame;
    m_classType = GameObjectClassType::Smart;
    m_bUnkBool2 = false;
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

