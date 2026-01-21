#include <Geode/Geode.hpp>

ArtTriggerGameObject::ArtTriggerGameObject() {
    m_artIndex = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool ArtTriggerGameObject::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
ArtTriggerGameObject* ArtTriggerGameObject::create(char const* frame) {
    auto ret = new ArtTriggerGameObject();
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

