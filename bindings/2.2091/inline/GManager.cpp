#include <Geode/binding/GManager.hpp>
#include <thread>

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

void GManager::saveGMTo(std::string filename, bool async) {
    auto dict = new DS_Dictionary();
    this->encodeDataTo(dict);
    this->didEncodeForSave();

    auto save = [this, dict](std::string path) mutable {
        // raii guard confirmed because m_isSaving gets reset to false
        // even if this func throws (even though it realistically won't)
        struct Guard {
            GManager* self;
            ~Guard() { self->m_isSaving.store(false, std::memory_order_release); }
        } guard{this};

        auto success = dict->saveRootSubDictToCompressedFile(path.c_str(), true);
        delete dict;
        dict = nullptr;
        this->saveFinished(success);
    };

    if (async) {
        std::thread(std::move(save), std::move(filename)).detach();
    } else {
        save(std::move(filename));
    }
}

bool GManager::tryLoadData(DS_Dictionary* dict, std::string const& filename) {
    return dict->loadRootSubDictFromCompressedFile(filename.c_str(), true);
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
GManager::GManager() {
    m_setup = false;
    m_saved = false;
    m_quickSave = false;
}
#endif

