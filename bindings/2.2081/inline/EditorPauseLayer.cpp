#include <Geode/Geode.hpp>

EditorPauseLayer::EditorPauseLayer() {
    m_saved = false;
    m_guidelinesOffButton = nullptr;
    m_guidelinesOnButton = nullptr;
    m_editorLayer = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void EditorPauseLayer::doResetUnused() {
    m_editorLayer->resetUnusedColorChannels();
}

void EditorPauseLayer::onCreateTemplate(cocos2d::CCObject* sender) {
    auto objects = cocos2d::CCArray::create();
    auto lel = GameManager::sharedState()->m_levelEditorLayer;
    if (auto selectedObject = lel->m_editorUI->m_selectedObject) {
        objects->addObject(selectedObject);
    }
    else if (auto selectedObjects = lel->m_editorUI->getSelectedObjects()) {
        objects->addObjectsFromArray(selectedObjects);
    }
}

void EditorPauseLayer::toggleEditorBackground(cocos2d::CCObject* sender) {
    auto gameManager = GameManager::sharedState();
    gameManager->toggleGameVariable("0078");
    m_editorLayer->toggleBackground(!gameManager->getGameVariable("0078"));
}

void EditorPauseLayer::toggleEffectDuration(cocos2d::CCObject* sender) {
    GameManager::sharedState()->toggleGameVariable("0058");
}

void EditorPauseLayer::toggleEffectLines(cocos2d::CCObject* sender) {
    GameManager::sharedState()->toggleGameVariable("0043");
}

void EditorPauseLayer::toggleFollowPlayer(cocos2d::CCObject* sender) {
    GameManager::sharedState()->toggleGameVariable("0001");
}

void EditorPauseLayer::toggleGridOnTop(cocos2d::CCObject* sender) {
    auto gameManager = GameManager::sharedState();
    gameManager->toggleGameVariable("0039");
    m_editorLayer->m_drawGridLayer->getParent()->reorderChild(m_editorLayer->m_drawGridLayer, gameManager->getGameVariable("0039") ? 1399 : -1599);
}

void EditorPauseLayer::togglePlaytestMusic(cocos2d::CCObject* sender) {
    GameManager::sharedState()->toggleGameVariable("0002");
}

void EditorPauseLayer::toggleRecordOrder(cocos2d::CCObject* sender) {
    GameManager::sharedState()->toggleGameVariable("0104");
}
#endif

#if defined(GEODE_IS_WINDOWS)
EditorPauseLayer* EditorPauseLayer::create(LevelEditorLayer* layer) {
    auto ret = new EditorPauseLayer();
    if (ret && ret->init(layer)) {
        ret->autorelease();
        return ret;
    }
    CC_SAFE_DELETE(ret);
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

