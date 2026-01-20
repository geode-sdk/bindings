#include <Geode/Geode.hpp>

SFXInfoObject::SFXInfoObject() {
    m_sfxID = 0;
    m_folderID = 0;
    m_size = 0;
    m_duration = 0;
    m_folder = false;
    m_unk049 = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool SFXInfoObject::init(int id, gd::string name, int folderID, int size, int duration) {
    m_sfxID = id;
    m_name = name;
    m_folderID = folderID;
    m_size = size;
    m_duration = duration;
    m_folder = false;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
SFXInfoObject* SFXInfoObject::create(int id, gd::string name, int folderID, int size, int duration) {
    auto ret = new SFXInfoObject();
    if (ret->init(id, name, folderID, size, duration)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

gd::string SFXInfoObject::getLowerCaseName() {
    gd::string name = m_name;
    for (int i = 0; i < name.size(); i++) {
        name[i] = tolower(name[i]);
    }
    return name;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

