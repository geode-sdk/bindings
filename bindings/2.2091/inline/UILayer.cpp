#include <Geode/binding/UILayer.hpp>
#include <Geode/binding/CCMenuItemSpriteExtra.hpp>
#include <Geode/binding/GJBaseGameLayer.hpp>
#include <Geode/binding/GameManager.hpp>
#include <Geode/binding/GJUINode.hpp>
#include <Geode/binding/LevelControlConfig.hpp>
#include <Geode/binding/PlayLayer.hpp>
#include <Geode/binding/UIButtonConfig.hpp>

#if !defined(GEODE_IS_IOS)
UILayer::UILayer() {
    m_pUnknown1 = nullptr;
    m_checkpointMenu = nullptr;
    m_pauseBtn = nullptr;
    m_bUnknown2 = false;
    m_bUnknown3 = false;
    m_p1Jumping = false;
    m_p2Jumping = false;
    m_checkpointBtnDown = false;
    m_p1TouchId = -1;
    m_p2TouchId = -1;
    m_clkTimer = 0.f;
    m_inPlatformer = false;
    m_gameLayer = nullptr;
    m_initialized = false;
    m_uiNodes = nullptr;
    m_dualMode = false;
    m_dpadType = false;
    m_editorMode = false;
    m_editorPlaytest = false;
    m_controllerButtons = nullptr;
    m_levelControls = nullptr;
    m_didAnnounceLevelControls = false;
}
#endif

UILayer* UILayer::get() {
    if (auto gjbgl = GJBaseGameLayer::get()) return gjbgl->m_uiLayer;
    return nullptr;
}

#if defined(GEODE_IS_WINDOWS)
bool UILayer::isJumpButtonPressed(bool player1) {
    return player1 ? (m_p1TouchId != -1 || m_p1Jumping) : (m_p2TouchId != -1 || m_p2Jumping);
}
#endif

void UILayer::handleKeypress(cocos2d::enumKeyCodes key, bool down, double timestamp) {
    if (key == cocos2d::KEY_Escape && down) this->handleAction(static_cast<int>(GJActionID::Pause), true, timestamp);
}

void UILayer::keyUp(cocos2d::enumKeyCodes key, double timestamp) {}

#if defined(GEODE_IS_WINDOWS)
UILayer* UILayer::create(GJBaseGameLayer* layer) {
    auto ret = new UILayer();
    if (ret->init(layer)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void UILayer::draw() {}

void UILayer::disableMenu() {
    m_pauseBtn->setEnabled(false);
}

void UILayer::doPause() {
    m_p1TouchId = -1;
    m_p2TouchId = -1;
    this->resetUINodeState();
    if (auto playLayer = GameManager::sharedState()->m_playLayer) {
        playLayer->pauseGame(false);
        playLayer->m_gameState.m_pauseCounter++;
    }
}

void UILayer::editorPlaytest(bool visible) {
    this->resetAllButtons();
    this->toggleMenuVisibility(visible);
    this->setVisible(visible);
    m_editorPlaytest = visible;
    if (visible) this->resolveLevelControls();
    this->applyLevelBindings();
}

void UILayer::enableEditorMode() {
    m_editorMode = true;
    m_pauseBtn->setVisible(false);
    this->disableMenu();
    this->editorPlaytest(false);
}

void UILayer::enableMenu() {
    m_pauseBtn->setEnabled(true);
}

bool UILayer::isJumpButtonPressed() {
    return this->isJumpButtonPressed(true) || this->isJumpButtonPressed(false);
}

void UILayer::reapplyLevelControls() {
    this->refreshDpad();
    this->applyLevelBindings();
    this->resetAllButtons();
}

static UIButtonConfig& getDpadConfig(int index, bool dualMode) {
    if (dualMode) index++;
    auto gameManager = GameManager::sharedState();
    switch (index) {
        case 1: return gameManager->m_dpad2;
        case 2: return gameManager->m_dpad3;
        case 3: return gameManager->m_dpad4;
        case 4: return gameManager->m_dpad5;
        default: return gameManager->m_dpad1;
    }
}

void UILayer::refreshDpad() {
    if (!m_inPlatformer) return;
    this->resolveLevelControls();

    bool useSlots = false;
    if (m_levelControls && !m_levelControls->m_touchSlots.empty()) {
        m_dpadType = m_levelControls->m_jumpL != 0;
        useSlots = true;
    }
    else {
        m_dpadType = GameManager::sharedState()->getGameVariable("0113");
    }

    GameManager::sharedState()->prepareDPadSettings();
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    int count = m_dualMode ? 4 : 1;
    for (int i = 0; i < count; i++) {
        auto node = static_cast<GJUINode*>(m_uiNodes->objectAtIndex(i));
        if (useSlots && i < static_cast<int>(m_levelControls->m_touchSlots.size())) {
            auto config = m_levelControls->resolveSlot(m_levelControls->m_touchSlots[i], winSize);
            node->loadFromConfig(config);
        }
        else {
            node->loadFromConfig(getDpadConfig(i, m_dualMode));
        }
    }
}

void UILayer::resetAllButtons() {
    m_p1Jumping = false;
    m_p2Jumping = false;
    m_checkpointBtnDown = false;
    m_p1TouchId = -1;
    m_p2TouchId = -1;
    this->resetUINodeState();
}

void UILayer::updateDualMode(bool dual) {
    if (m_dualMode == dual) return;
    m_dualMode = dual;
    this->togglePlatformerMode(m_inPlatformer);
}
#endif
