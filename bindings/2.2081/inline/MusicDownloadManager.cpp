#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void MusicDownloadManager::addDLToActive(char const* tag) {
    addDLToActive(tag, cocos2d::CCNode::create());
}

SongInfoObject* MusicDownloadManager::getMusicObject(int id) {
    return m_musicObjects ? static_cast<SongInfoObject*>(m_musicObjects->objectForKey(id)) : nullptr;
}

char const* MusicDownloadManager::getSFXDownloadKey(int id) {
    return cocos2d::CCString::createWithFormat("sfx_%i", id)->getCString();
}

char const* MusicDownloadManager::getSongDownloadKey(int id) {
    return cocos2d::CCString::createWithFormat("d_%i", id)->getCString();
}

char const* MusicDownloadManager::getSongInfoKey(int id) {
    return cocos2d::CCString::createWithFormat("i_%i", id)->getCString();
}

int MusicDownloadManager::getSongPriority() {
    return ++m_songPriority;
}

void MusicDownloadManager::handleItDelayed(bool success, gd::string response, gd::string tag, GJHttpType type) {
    auto result = GJHttpResult::create(true, response, tag, type);
    result->retain();
    m_pActionManager->addAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(.1f),
        cocos2d::CCCallFuncND::create(this, callfuncND_selector(GJMultiplayerManager::handleItND), result),
        nullptr
    ), this, false);
}

void MusicDownloadManager::handleItND(cocos2d::CCNode* node, void* data) {
    auto result = static_cast<GJHttpResult*>(data);
    this->handleIt(result->m_success, result->m_response, result->m_requestTag, result->m_httpType);
    result->release();
}

bool MusicDownloadManager::isDLActive(char const* tag) {
    return this->getDLObject(tag) != nullptr;
}

bool MusicDownloadManager::isMusicLibraryLoaded() {
    return m_musicObjects && m_musicObjects->count() != 0;
}

bool MusicDownloadManager::isResourceSFX(int id) {
    return m_resourceSfxUnorderedSet.count(id) != 0;
}

bool MusicDownloadManager::isResourceSong(int id) {
    return m_resourceSongUnorderedSet.count(id) != 0;
}

bool MusicDownloadManager::isSFXLibraryLoaded() {
    return m_sfxObjects && m_sfxObjects->count() != 0;
}

void MusicDownloadManager::storeMusicObject(SongInfoObject* object) {
    m_musicObjects->setObject(object, object->m_songID);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void MusicDownloadManager::clearSong(int songID) {
    const char* key = cocos2d::CCString::createWithFormat("%i", songID)->getCString();
    m_songObjects->removeObjectForKey(key);
}

void MusicDownloadManager::deleteSFX(int id) {
    remove(this->pathForSFX(id).c_str());
}

void MusicDownloadManager::deleteSong(int id) {
    remove(this->pathForSong(id).c_str());
}

void MusicDownloadManager::downloadSFXFinished(int id) {
    for (int i = 0; i < m_musicDownloadDelegates->count(); i++) {
        static_cast<MusicDelegateHandler*>(m_musicDownloadDelegates->objectAtIndex(i))->m_delegate->downloadSFXFinished(id);
    }
}

void MusicDownloadManager::downloadSongFinished(int id) {
    for (int i = 0; i < m_musicDownloadDelegates->count(); i++) {
        static_cast<MusicDelegateHandler*>(m_musicDownloadDelegates->objectAtIndex(i))->m_delegate->downloadSongFinished(id);
    }
}

void MusicDownloadManager::encodeDataTo(DS_Dictionary* dict) {
    dict->setDictForKey("MDLM_001", m_songObjects);
    dict->setDictForKey("MDLM_003", m_MDLM003);
    dict->setIntegerForKey("MDLM_002", m_songPriority);
}

void MusicDownloadManager::firstSetup() {
    if (!m_songObjects) {
        auto songObjects = cocos2d::CCDictionary::create();
        CC_SAFE_RETAIN(songObjects);
        CC_SAFE_RELEASE(m_songObjects);
        m_songObjects = songObjects;
    }
    m_songPriority = 0;
}

void MusicDownloadManager::generateResourceAssetList() {
    auto sfxStart = reinterpret_cast<int*>(geode::base::get() + 0x623b10);
    m_resourceSfxUnorderedSet.clear();
    m_resourceSfxUnorderedSet.insert(sfxStart, sfxStart + 260);

    auto songStart = reinterpret_cast<int*>(geode::base::get() + 0x624050);
    m_resourceSongUnorderedSet.clear();
    m_resourceSongUnorderedSet.insert(songStart, songStart + 8);
    m_resourceSongUnorderedSet.insert(10006555);
}

cocos2d::CCArray* MusicDownloadManager::getAllMusicArtists(OptionsObjectDelegate* delegate) {
    auto ret = cocos2d::CCArray::createWithCapacity(m_musicArtists->count());
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    if (m_musicArtists) {
        HASH_ITER(hh, m_musicArtists->m_pElements, element, temp) {
            auto object = static_cast<MusicArtistObject*>(element->getObject());
            ret->addObject(OptionsObject::create(object->m_artistID, false, object->m_artistName, delegate));
        }
    }
    if (ret->count() > 1) {
        qsort(ret->data->arr, ret->data->num, sizeof(OptionsObject*), [](void const* a, void const* b) {
            auto objA = *static_cast<OptionsObject* const*>(a);
            auto objB = *static_cast<OptionsObject* const*>(b);
            return objA->m_name.compare(objB->m_name);
        });
    }
    return ret;
}

cocos2d::CCArray* MusicDownloadManager::getAllMusicObjects(GJSongType type) {
    auto ret = cocos2d::CCArray::createWithCapacity(m_musicObjects->count());
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    if (m_musicObjects) {
        if (type == GJSongType::Music) {
            HASH_ITER(hh, m_musicObjects->m_pElements, element, temp) {
                ret->addObject(element->getObject());
            }
        }
        else {
            HASH_ITER(hh, m_musicObjects->m_pElements, element, temp) {
                auto musicObject = static_cast<SongInfoObject*>(element->getObject());
                if (musicObject->m_nongType == (int)type) {
                    ret->addObject(musicObject);
                }
            }
        }
    }
    return ret;
}

cocos2d::CCArray* MusicDownloadManager::getAllMusicTags(OptionsObjectDelegate* delegate) {
    auto ret = cocos2d::CCArray::createWithCapacity(m_musicTags.size());
    for (auto& tag : m_musicTags) {
        ret->addObject(OptionsObject::create(tag.first, false, tag.second, delegate));
    }
    if (ret->count() > 1) {
        qsort(ret->data->arr, ret->data->num, sizeof(OptionsObject*), [](void const* a, void const* b) {
            auto objA = *static_cast<OptionsObject* const*>(a);
            auto objB = *static_cast<OptionsObject* const*>(b);
            return objA->m_name.compare(objB->m_name);
        });
    }
    return ret;
}

cocos2d::CCArray* MusicDownloadManager::getAllSFXObjects(bool onlySFX) {
    auto ret = cocos2d::CCArray::create();
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    if (m_sfxObjects) {
        if (onlySFX) {
            HASH_ITER(hh, m_sfxObjects->m_pElements, element, temp) {
                auto sfxObject = static_cast<SFXInfoObject*>(element->getObject());
                if (!sfxObject->m_folder) {
                    ret->addObject(sfxObject);
                }
            }
        }
        else {
            HASH_ITER(hh, m_sfxObjects->m_pElements, element, temp) {
                ret->addObject(element->getObject());
            }
        }
    }
    return ret;
}

cocos2d::CCArray* MusicDownloadManager::getAllSongs() {
    auto ret = cocos2d::CCArray::create();
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    if (m_songObjects) {
        HASH_ITER(hh, m_songObjects->m_pElements, element, temp) {
            ret->addObject(element->getObject());
        }
    }
    return ret;
}

int MusicDownloadManager::getDownloadProgress(int id) {
    if (auto dlObject = static_cast<cocos2d::extension::CCHttpRequest*>(this->getDLObject(this->getSongDownloadKey(id)))) {
        return dlObject->getDownloadProgress();
    }
    return -1;
}

MusicArtistObject* MusicDownloadManager::getMusicArtistForID(int id) {
    return m_musicArtists ? static_cast<MusicArtistObject*>(m_musicArtists->objectForKey(id)) : nullptr;
}

int MusicDownloadManager::getSFXDownloadProgress(int id) {
    if (auto dlObject = static_cast<cocos2d::extension::CCHttpRequest*>(this->getDLObject(this->getSFXDownloadKey(id)))) {
        return dlObject->getDownloadProgress();
    }
    return -1;
}

SFXFolderObject* MusicDownloadManager::getSFXFolderObjectForID(int id) {
    if (auto sfxObject = sharedState()->getSFXObject(id)) {
        if (sfxObject->m_folder) return static_cast<SFXFolderObject*>(sfxObject);
        if (auto folderObject = static_cast<SFXFolderObject*>(sharedState()->getSFXObject(sfxObject->m_folderID))) {
            if (folderObject->m_folder) return folderObject;
        }
    }
    return nullptr;
}

SFXInfoObject* MusicDownloadManager::getSFXObject(int id) {
    return m_sfxObjects ? static_cast<SFXInfoObject*>(m_sfxObjects->objectForKey(id)) : nullptr;
}

void MusicDownloadManager::incrementPriorityForSong(int id) {
    if (auto songObject = this->getSongInfoObject(id)) {
        songObject->m_priority = this->getSongPriority();
    }
}

void MusicDownloadManager::limitDownloadedSongs() {
    auto gameManager = GameManager::sharedState();
    auto menuSongID = gameManager->m_customMenuSongID;
    auto practiceSongID = gameManager->m_customPracticeSongID;
    auto downloadedSongs = this->getDownloadedSongs();
    while (downloadedSongs->count() > 50) {
        auto songObject = static_cast<SongInfoObject*>(downloadedSongs->lastObject());
        if (songObject->m_songID != menuSongID && songObject->m_songID != practiceSongID) {
            this->deleteSong(songObject->m_songID);
        }
        downloadedSongs->removeLastObject();
    }
}

gd::string MusicDownloadManager::nameForTagID(int id) {
    return m_musicTags.count(id) ? m_musicTags[id] : "";
}

void MusicDownloadManager::stopDownload(int id) {
    auto key = this->getSongDownloadKey(id);
    if (auto dlObject = static_cast<cocos2d::extension::CCHttpRequest*>(this->getDLObject(key))) {
        dlObject->setShouldCancel(true);
    }
    this->removeDLFromActive(key);
}

void MusicDownloadManager::storeSFXInfoObject(SFXInfoObject* object) {
    m_sfxObjects->setObject(object, object->m_sfxID);
    if (object->m_folderID > 0) {
        if (auto folderObject = static_cast<SFXFolderObject*>(m_sfxObjects->objectForKey(object->m_folderID))) {
            if (folderObject->m_folder) folderObject->m_sfxObjects->addObject(object);
        }
    }
}

void MusicDownloadManager::tryLoadLibraries() {
    if (m_triedToLoadLibraries) return;
    m_triedToLoadLibraries = true;
    if (!this->isSFXLibraryLoaded()) this->parseSFXLibrary();
    if (!this->isMusicLibraryLoaded()) this->parseMusicLibrary();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

