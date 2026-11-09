#include <Geode/binding/DialogLayer.hpp>
#include <Geode/binding/TextArea.hpp>

#if !defined(GEODE_IS_IOS)
DialogLayer::DialogLayer() {
    m_animateTime = 0.f;
    m_mainLayer = nullptr;
    m_characterLabel = nullptr;
    m_textArea = nullptr;
    m_characterSprite = nullptr;
    m_dialogObjects = nullptr;
    m_touchID = -1;
    m_navButtonSprite = nullptr;
    m_animating = false;
    m_skippable = false;
    m_delegate = nullptr;
    m_handleTap = false;
    m_animationType = DialogAnimationType::FromCenter;
    m_noRemove = false;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void DialogLayer::animateInDialog() {
    this->animateIn(m_animationType);
}
#endif

#if defined(GEODE_IS_WINDOWS)
DialogLayer::~DialogLayer() {
    cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->unregisterForcePrio(this);
    CC_SAFE_RELEASE(m_dialogObjects);
}

DialogLayer* DialogLayer::create(DialogObject* object, int background) {
    return DialogLayer::createDialogLayer(object, nullptr, background);
}

DialogLayer* DialogLayer::createWithObjects(cocos2d::CCArray* objects, int background) {
    return DialogLayer::createDialogLayer(nullptr, objects, background);
}

void DialogLayer::ccTouchMoved(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void DialogLayer::finishCurrentAnimation() {
    m_animating = false;
    if (m_textArea) {
        m_textArea->m_delegate = nullptr;
        m_textArea->stopAllCharacterActions();
        m_textArea->showAll();
    }
    m_navButtonSprite->stopAllActions();
    m_navButtonSprite->setOpacity(255);
    this->updateNavButtonFrame();
}

void DialogLayer::updateChatPlacement(DialogChatPlacement placement) {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
        switch (placement) {
            case DialogChatPlacement::Center:
                    m_mainLayer->setPosition({winSize.width * 0.5F, winSize.height * 0.5F});
                    break;
            case DialogChatPlacement::Top:
                    m_mainLayer->setPosition({winSize.width * 0.5F, (winSize.height - 50.F) - 20.F});
                    break;
            case DialogChatPlacement::Bottom:
                    m_mainLayer->setPosition({winSize.width * 0.5F, 70.F});
                    break;
        }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

