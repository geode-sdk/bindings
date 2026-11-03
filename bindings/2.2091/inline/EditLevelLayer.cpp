#include <Geode/binding/EditLevelLayer.hpp>
#include <Geode/binding/FLAlertLayer.hpp>
#include <Geode/binding/GJGameLevel.hpp>
#include <Geode/binding/GameLevelManager.hpp>
#include <Geode/binding/GameManager.hpp>
#include <Geode/binding/LocalLevelManager.hpp>
#include <Geode/binding/PlayLayer.hpp>
#include <Geode/binding/UploadActionPopup.hpp>
#include <Geode/mapping/CCTransitionFade.hpp>

EditLevelLayer::EditLevelLayer() {
    m_buttonMenu = nullptr;
    m_level = nullptr;
    m_textInputs = nullptr;
    m_folderLabel = nullptr;
    m_exiting = false;
    m_levelType = GJLevelType::Default;
    m_descriptionPopup = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void EditLevelLayer::onMoveToTop() {
    LocalLevelManager::sharedState()->moveLevelToTop(m_level);
}

void EditLevelLayer::onTest(cocos2d::CCObject* sender) {
    auto director = cocos2d::CCDirector::sharedDirector();
    if (director->getIsTransitioning()) return;

    if (!m_level->m_platformerSave.empty() &&
        (m_level->m_platformerSaveLevelVersion != m_level->m_levelVersion ||
         m_level->m_platformerSaveFormatVersion != 4)) {
        m_level->clearPlatformerSave();
    }

    if (!m_loadPlatformerSave && !m_level->m_platformerSave.empty()) {
        auto alert = FLAlertLayer::create(
            this,
            "Load Save",
            "There is a <cg>saved</c> <cy>checkpoint</c> for this level.\nDo you want to <cl>load</c> it?",
            "New Game",
            "Load Save",
            380.f
        );
        alert->addCloseButton();
        alert->m_unk290 = true;
        alert->setTag(11);
        alert->show();
        return;
    }

    this->closeTextInputs();
    GameManager::sharedState()->m_sceneEnum = 3;
    auto scene = PlayLayer::scene(m_level, false);
    if (m_loadPlatformerSave) {
        auto playLayer = static_cast<PlayLayer*>(scene->getChildren()->objectAtIndex(0));
        playLayer->loadPersistentCheckpoint(m_level->m_platformerSave);
        m_loadPlatformerSave = false;
    }
    director->replaceScene(cocos2d::CCTransitionFade::create(.5f, scene));
}

void EditLevelLayer::updateDescText(char const* text) {}
#endif

#if defined(GEODE_IS_WINDOWS)
EditLevelLayer::~EditLevelLayer() {
    CC_SAFE_RELEASE(m_textInputs);
    CC_SAFE_RELEASE(m_level);
    CC_SAFE_RELEASE(m_descriptionPopup);
    auto glm = GameLevelManager::sharedState();
    if (glm->m_uploadActionDelegate == this) glm->m_uploadActionDelegate = nullptr;
}

EditLevelLayer* EditLevelLayer::create(GJGameLevel* level) {
    auto ret = new EditLevelLayer();
    if (ret && ret->init(level)) {
        ret->autorelease();
        return ret;
    }
    CC_SAFE_DELETE(ret);
    return nullptr;
}

void EditLevelLayer::onClone() {
    auto director = cocos2d::CCDirector::sharedDirector();
    if (director->getIsTransitioning() || m_exiting) return;
    this->setKeypadEnabled(false);
    m_exiting = true;
    GameManager::sharedState()->m_sceneEnum = 2;
    auto level = GameLevelManager::sharedState()->createNewLevel();
    level->copyLevelInfo(m_level);
    this->verifyLevelName();
    level->m_originalLevel = m_level->m_originalLevel;
    director->replaceScene(cocos2d::CCTransitionFade::create(.5f, EditLevelLayer::scene(level)));
}

void EditLevelLayer::onDelete() {
    m_buttonMenu->setEnabled(false);
    GameLevelManager::sharedState()->deleteLevel(m_level);
    this->onBack(nullptr);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

