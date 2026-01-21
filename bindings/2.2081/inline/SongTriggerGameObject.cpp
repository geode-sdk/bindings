#include <Geode/Geode.hpp>

SongTriggerGameObject::SongTriggerGameObject() {
    m_unk7a9 = false;
    m_prep = false;
    m_loadPrep = false;
    m_songChannel = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool SongTriggerGameObject::init(char const* frame) {
    return SFXTriggerGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
SongTriggerGameObject* SongTriggerGameObject::create(char const* frame) {
    auto ret = new SongTriggerGameObject();
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

