#include <Geode/Bindings.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_ANDROID)
LevelListLayer::LevelListLayer() {
    m_buttonMenu = nullptr;
    m_levelList = nullptr;
    m_likeButton = nullptr;
    m_exiting = false;
    m_titleInput = nullptr;
    m_editMode = 0;
    m_objects = nullptr;
    m_diffSprite = nullptr;
    m_featureSprite = nullptr;
    m_exited = false;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void LevelListLayer::updateEditMode() {
    if (!m_list) return;
    auto listView = static_cast<CustomListView*>(m_list->m_listView);
    listView->m_cellMode = m_editMode;
    listView->reloadAll();
}
#endif

#if defined(GEODE_IS_WINDOWS)
LevelListLayer::~LevelListLayer() {
    GameManager::sharedState()->m_sceneEnum = 13;
    CC_SAFE_RELEASE(m_levelList);
    CC_SAFE_RELEASE(m_objects);
    auto glm = GameLevelManager::sharedState();
    if (glm->m_levelListDeleteDelegate == this) glm->m_levelListDeleteDelegate = nullptr;
}

LevelListLayer* LevelListLayer::create(GJLevelList* list) {
    auto ret = new LevelListLayer();
    if (ret->init(list)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void LevelListLayer::onDelete() {
    m_buttonMenu->setEnabled(false);
    GameLevelManager::sharedState()->deleteLevelList(m_levelList);
    this->onBack(nullptr);
    m_exiting = true;
}

void LevelListLayer::ownerDelete() {
    auto glm = GameLevelManager::sharedState();
    glm->m_levelListDeleteDelegate = this;
    glm->deleteServerLevelList(m_levelList->m_listID);
    m_circle->setVisible(true);
}

void LevelListLayer::verifyListName() {
    if (!m_levelList->m_listName.empty()) return;
    m_levelList->m_listName = m_levelList->m_unkString.empty() ? "Unknown" : m_levelList->m_unkString;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

