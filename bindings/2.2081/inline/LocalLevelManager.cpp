#include <Geode/Bindings.hpp>
#include <Geode/utils/cocos.hpp>

LocalLevelManager* LocalLevelManager::get() {
    return LocalLevelManager::sharedState();
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::CCArray* LocalLevelManager::getAllLevelsWithName(gd::string name) {
    auto ret = cocos2d::CCArray::create();
    for (int i = 0; i < m_localLevels->count(); i++) {
        auto level = static_cast<GJGameLevel*>(m_localLevels->objectAtIndex(i));
        if (level->m_levelName == name) ret->addObject(level);
    }
    return ret;
}

cocos2d::CCArray* LocalLevelManager::getCreatedLevels(int folder) {
    if (folder < 1) return m_localLevels;
    auto ret = cocos2d::CCArray::create();
    for (auto level : geode::cocos::CCArrayExt<GJGameLevel, false>(m_localLevels)) {
        if (!level) return ret;
        if (level->m_levelFolder == folder) ret->addObject(level);
    }
    return ret;
}

cocos2d::CCArray* LocalLevelManager::getCreatedLists(int folder) {
    if (folder < 1) return m_localLists;
    auto ret = cocos2d::CCArray::create();
    for (auto list : geode::cocos::CCArrayExt<GJLevelList, false>(m_localLists)) {
        if (!list) return ret;
        if (list->m_folder == folder) ret->addObject(list);
    }
    return ret;
}

cocos2d::CCDictionary* LocalLevelManager::getLevelsInNameGroups() {
    auto dict = cocos2d::CCDictionary::create();
    for (int i = 0; i < m_localLevels->count(); i++) {
        auto level = static_cast<GJGameLevel*>(m_localLevels->objectAtIndex(i));
        auto key = level->m_levelName;
        auto arr = static_cast<cocos2d::CCArray*>(dict->objectForKey(key));
        if (!arr) {
            arr = cocos2d::CCArray::create();
            dict->setObject(arr, key);
        }
        arr->addObject(level);
    }
    return dict;
}

void LocalLevelManager::markLevelsAsUnmodified() {
    for (int i = 0; i < m_localLevels->count(); i++) {
        static_cast<GJGameLevel*>(m_localLevels->objectAtIndex(i))->m_hasBeenModified = false;
    }
}

void LocalLevelManager::moveLevelToTop(GJGameLevel* level) {
    if (level && m_localLevels->containsObject(level)) {
        level->retain();
        m_localLevels->removeObject(level);
        m_localLevels->insertObject(level, 0);
        level->release();
        this->updateLevelOrder();
    }
}

void LocalLevelManager::reorderLevels() {
    if (m_localLevels->count() != 0) {
        qsort(m_localLevels->data->arr, m_localLevels->data->num, sizeof(GJGameLevel*), [](void const* a, void const* b) {
            auto la = *static_cast<GJGameLevel* const*>(a);
            auto lb = *static_cast<GJGameLevel* const*>(b);
            return lb->m_levelIndex - la->m_levelIndex;
        });
    }
}

void LocalLevelManager::reorderLists() {
    if (m_localLists->count() != 0) {
        qsort(m_localLists->data->arr, m_localLists->data->num, sizeof(GJLevelList*), [](void const* a, void const* b) {
            auto la = *static_cast<GJLevelList* const*>(a);
            auto lb = *static_cast<GJLevelList* const*>(b);
            return lb->m_listOrder - la->m_listOrder;
        });
    }
}

int LocalLevelManager::updateListOrder() {
    int i = 0;
    for (; i < m_localLists->count(); i++) {
        static_cast<GJLevelList*>(m_localLists->objectAtIndex(m_localLists->count() - 1 - i))->m_listOrder = i;
    }
    return i;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

