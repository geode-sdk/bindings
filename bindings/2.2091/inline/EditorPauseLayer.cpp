#include <Geode/binding/EditorPauseLayer.hpp>
#include <Geode/binding/GameManager.hpp>
#include <Geode/binding/KeybindingsLayer.hpp>
#include <Geode/binding/LevelEditorLayer.hpp>
#include <Geode/binding/EditorUI.hpp>

EditorPauseLayer::EditorPauseLayer() {
    m_saved = false;
    m_guidelinesOffButton = nullptr;
    m_guidelinesOnButton = nullptr;
    m_editorLayer = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS) || defined(GEODE_IS_MACOS)
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
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void EditorPauseLayer::toggleEditorBackground(cocos2d::CCObject* sender) {
    auto gameManager = GameManager::sharedState();
    gameManager->toggleGameVariable(GameVar::HideBackground);
    m_editorLayer->toggleBackground(!gameManager->getGameVariable(GameVar::HideBackground));
}

void EditorPauseLayer::toggleEffectDuration(cocos2d::CCObject* sender) {
    GameManager::sharedState()->toggleGameVariable(GameVar::DurationLines);
}

void EditorPauseLayer::toggleEffectLines(cocos2d::CCObject* sender) {
    GameManager::sharedState()->toggleGameVariable(GameVar::EffectLines);
}

void EditorPauseLayer::toggleFollowPlayer(cocos2d::CCObject* sender) {
    GameManager::sharedState()->toggleGameVariable(GameVar::FollowPlayer);
}

void EditorPauseLayer::toggleGridOnTop(cocos2d::CCObject* sender) {
    auto gameManager = GameManager::sharedState();
    gameManager->toggleGameVariable(GameVar::GridOnTop);
    m_editorLayer->m_drawGridLayer->getParent()->reorderChild(m_editorLayer->m_drawGridLayer, gameManager->getGameVariable(GameVar::GridOnTop) ? 1399 : -1599);
}

void EditorPauseLayer::togglePlaytestMusic(cocos2d::CCObject* sender) {
    GameManager::sharedState()->toggleGameVariable(GameVar::PlaytestMusic);
}

void EditorPauseLayer::toggleRecordOrder(cocos2d::CCObject* sender) {
    GameManager::sharedState()->toggleGameVariable(GameVar::RecordOrder);
}

void EditorPauseLayer::saveLevel() {
    LocalLevelManager::sharedState()->waitForSave(30.0);
    if(auto layer = m_editorLayer) {
        layer->saveLevel();
    }
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

void EditorPauseLayer::onKeybindings(cocos2d::CCObject* sender) {
    KeybindingsLayer::create(nullptr)->show();
}

void EditorPauseLayer::togglePreviewAnim(cocos2d::CCObject* sender) {
    GameManager::sharedState()->toggleGameVariable(GameVar::PreviewAnimations);
    m_editorLayer->updatePreviewAnim();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

