#include <Geode/Bindings.hpp>

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
    this->closeTextInputs();
    GameManager::sharedState()->m_sceneEnum = 3;
    cocos2d::CCDirector::sharedDirector()->replaceScene(cocos2d::CCTransitionFade::create(.5f, PlayLayer::scene(m_level, false, false)));
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

