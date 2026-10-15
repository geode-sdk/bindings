#include <Geode/Bindings.hpp>

SongObject::SongObject() {
    m_audioID = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool SongObject::init(int audioID) {
    m_audioID = audioID;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
SongObject* SongObject::create(int audioID) {
    auto ret = new SongObject();
    if(ret->init(audioID)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

