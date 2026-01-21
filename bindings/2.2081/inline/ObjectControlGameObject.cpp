#include <Geode/Geode.hpp>

ObjectControlGameObject::ObjectControlGameObject() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
ObjectControlGameObject* ObjectControlGameObject::create() {
    auto ret = new ObjectControlGameObject();
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

