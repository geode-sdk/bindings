#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GManager::load() {
    this->loadDataFromFile(m_fileName);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void GManager::encodeDataTo(DS_Dictionary* dict) {}

void GManager::dataLoaded(DS_Dictionary* dict) {}

void GManager::firstLoad() {}

std::string GManager::getSaveString() {
    auto dict = new DS_Dictionary();
    this->encodeDataTo(dict);
    auto str = dict->saveRootSubDictToString();
    delete dict;
    return str;
}

void GManager::loadFromString(std::string& str) {
    auto dict = new DS_Dictionary();
    auto loaded = dict->loadRootSubDictFromString(str.c_str());
    str.clear();
    if (loaded) this->dataLoaded(dict);
    delete dict;
}

void GManager::saveData(DS_Dictionary* dict, std::string filename) {
    dict->saveRootSubDictToCompressedFile(filename.c_str());
}

// TODO: 2.209
void GManager::saveGMTo(std::string filename, bool p0) {
    auto dict = new DS_Dictionary();
    this->encodeDataTo(dict);
    this->saveData(dict, filename);
    m_saved = false;
    delete dict;
}

bool GManager::tryLoadData(DS_Dictionary* dict, std::string const& filename) {
    return dict->loadRootSubDictFromCompressedFile(filename.c_str());
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
GManager::GManager() {
    m_setup = false;
    m_saved = false;
    m_quickSave = false;
}
#endif

