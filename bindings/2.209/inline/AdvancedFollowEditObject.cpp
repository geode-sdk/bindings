#include <Geode/Bindings.hpp>

AdvancedFollowEditObject::AdvancedFollowEditObject() {
    m_modX = 1.f;
    m_modXVariance = 0.f;
    m_modY = 1.f;
    m_modYVariance = 0.f;
    m_redirectDirection = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool AdvancedFollowEditObject::init(char const* frame) {
    return AdvancedFollowTriggerObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
AdvancedFollowEditObject* AdvancedFollowEditObject::create(char const* frame) {
    auto ret = new AdvancedFollowEditObject();
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

