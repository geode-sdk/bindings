#include <Geode/Geode.hpp>

SimpleObject::SimpleObject() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
SimpleObject* SimpleObject::create() {
    auto ret = new SimpleObject();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool SimpleObject::init() {
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

