#include <Geode/Bindings.hpp>

GJLevelList::GJLevelList() {
    m_listID = 0;
    m_listVersion = 0;
    m_downloads = 0;
    m_likes = 0;
    m_difficulty = -1;
    m_accountID = 0;
    m_folder = 0;
    m_listRevision = 0;
    m_listOrder = 0;
    m_original = 0;
    m_diamonds = 0;
    m_levelsToClaim = 0;
    m_isEditable = false;
    m_unlisted = false;
    m_friendsOnly = false;
    m_uploaded = false;
    m_favorite = false;
    m_featured = false;
    m_onlineLevelsLoaded = false;
    m_modified = false;
    m_levelsDict = nullptr;
    m_listType = GJLevelType::Default;
    m_M_ID = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJLevelList* GJLevelList::createWithCoder(DS_Dictionary* dict) {
    auto ret = GJLevelList::create();
    ret->dataLoaded(dict);
    return ret;
}

gd::string GJLevelList::frameForListDifficulty(int diff, DifficultyIconType type) {
    if (diff == 0) return type == DifficultyIconType::NoText ? "diffIcon_auto_btn_001.png" : "difficulty_auto_btn_001.png";

    if (diff > 10) diff = 0;
    switch (diff) {
        case 6: diff = 7; break;
        case 7: diff = 8; break;
        case 8: diff = 6; break;
    }

    if (type == DifficultyIconType::NoText) {
        return cocos2d::CCString::createWithFormat("diffIcon_%02d_btn_001.png", diff)->getCString();
    }
    else if (type == DifficultyIconType::DefaultText && diff > 5) {
        return cocos2d::CCString::createWithFormat("difficulty_%02d_btn2_001.png", diff)->getCString();
    }
    else {
        return cocos2d::CCString::createWithFormat("difficulty_%02d_btn_001.png", diff)->getCString();
    }
}

bool GJLevelList::canEncode() { return true; }

void GJLevelList::duplicateListLevels(GJLevelList* list) {
    auto levels = list->getListLevelsArray(nullptr);
    for (int i = 0; i < levels->count(); i++) {
        this->addLevelToList(static_cast<GJGameLevel*>(levels->objectAtIndex(i)));
    }
}

void GJLevelList::handleStatsConflict(GJLevelList* list) {
    m_listOrder = std::max(m_listOrder, list->m_listOrder);
}

int GJLevelList::orderForLevel(int id) {
    auto index = 0;
    for (auto levelID : m_levels) {
        if (levelID == id) return index;
        index++;
    }
    return index;
}

void GJLevelList::removeLevelFromList(int id) {
    for (auto it = m_levels.begin(); it != m_levels.end(); ++it) {
        if (*it == id) {
            m_levels.erase(it);
            this->updateLevelsString();
            break;
        }
    }
    m_levelsDict->removeObjectForKey(GameToolbox::intToString(id));
    m_modified = true;
}

void GJLevelList::reorderLevelStep(int id, bool up) {
    this->reorderLevel(id, this->orderForLevel(id) + (up ? -1 : 1));
}

int GJLevelList::totalLevels() {
    return m_levels.size();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

