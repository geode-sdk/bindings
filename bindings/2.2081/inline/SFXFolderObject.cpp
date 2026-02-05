#include <Geode/Bindings.hpp>

SFXFolderObject::SFXFolderObject() {
    m_sfxObjects = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SFXFolderObject::~SFXFolderObject() {
    CC_SAFE_RELEASE(m_sfxObjects);
}

SFXFolderObject* SFXFolderObject::create(int id, gd::string name, int folderID) {
    auto ret = new SFXFolderObject();
    if (ret->init(id, name, folderID)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool SFXFolderObject::init(int id, gd::string name, int folderID) {
    if (!SFXInfoObject::init(id, name, folderID, 0, 0)) return false;
    m_sfxObjects = cocos2d::CCArray::create();
    m_sfxObjects->retain();
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

