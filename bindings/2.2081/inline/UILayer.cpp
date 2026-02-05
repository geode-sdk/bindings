#include <Geode/Bindings.hpp>

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
    m_controllerButtons = nullptr;
}
#endif

UILayer* UILayer::get() {
    if (auto gjbgl = GJBaseGameLayer::get()) return gjbgl->m_uiLayer;
    return nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool UILayer::isJumpButtonPressed(bool player1) {
    return player1 ? (m_p2TouchId != -1 || m_p1Jumping) : (m_p1TouchId != -1 || m_p2Jumping);
}
#endif

#if defined(GEODE_IS_WINDOWS)
UILayer::~UILayer() {
    CC_SAFE_RELEASE(m_uiNodes);
    CC_SAFE_RELEASE(m_controllerButtons);
}

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
    cocos2d::CCEGLView::sharedOpenGLView()->toggleGameplayActive(false);
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

void UILayer::refreshDpad() {}

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

#if defined(GEODE_IS_IOS)
#endif

