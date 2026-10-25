#include <Geode/binding/KeybindCapturePopup.hpp>
#include <Geode/binding/CCMenuItemSpriteExtra.hpp>
#include <Geode/cocos/CCDirector.h>
#include <Geode/cocos/robtop/keyboard_dispatcher/CCKeyboardDispatcher.h>
#include <Geode/cocos/textures/CCTextureCache.h>

#if defined(GEODE_IS_WINDOWS)
KeybindCapturePopup::~KeybindCapturePopup() {
    cocos2d::CCDirector::sharedDirector()->getKeyboardDispatcher()->m_bCaptureMode = false;
    if (m_controllerMode) {
        cocos2d::CCTextureCache::sharedTextureCache()->removeTextureForKey("controller_outline.png");
    }
}

void KeybindCapturePopup::updateButtonStates() {
    bool canSet = m_chord != 0 && !m_isBlocked;
    if (m_setButton) m_setButton->setEnabled(canSet);
    this->fadeButtonSprite(m_setSprite, canSet);

    bool canRemove = !m_isNewBind;
    if (m_removeButton) m_removeButton->setEnabled(canRemove);
    this->fadeButtonSprite(m_removeSprite, canRemove);
}
#endif

