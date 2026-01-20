#include <Geode/Geode.hpp>

SpecialAnimGameObject::SpecialAnimGameObject() {
    m_skipMainColorUpdate = false;
    m_skipSecondaryColorUpdate = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool SpecialAnimGameObject::init(char const* frame) {
    if (!EnhancedGameObject::init(frame)) return false;
    m_bUnkBool2 = false;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
SpecialAnimGameObject* SpecialAnimGameObject::create(char const* frame) {
    auto ret = new SpecialAnimGameObject();
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

