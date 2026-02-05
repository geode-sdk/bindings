#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool SFXSearchResult::init(int folderID) {
    if (!MusicSearchResult::init(GJSongType::Music)) return false;
    m_folderID = folderID;
    m_audioType = 1;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
SFXFolderObject* SFXSearchResult::getActiveFolder() {
    return m_folderObject;
}

void SFXSearchResult::setActiveFolder(SFXFolderObject* folder) {
    if (folder != m_folderObject) {
        CC_SAFE_RELEASE(m_folderObject);
        CC_SAFE_RETAIN(folder);
        m_folderObject = folder;
    }
    else if (!folder) {
        CC_SAFE_RELEASE_NULL(m_folderObject);
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

