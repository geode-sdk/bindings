#include <Geode/Bindings.hpp>

CharacterColorPage::CharacterColorPage() {
    m_colorMode = 0;
    m_playerObjects = nullptr;
    m_modeButtons = nullptr;
    m_colorButtons = nullptr;
    m_cursors = nullptr;
    m_delegate = nullptr;
    m_glowToggler = nullptr;
    m_glowLabel = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void CharacterColorPage::FLAlert_Clicked(FLAlertLayer* layer, bool btn2) {}

void CharacterColorPage::toggleGlowItems(bool visible) {
    m_glowToggler->setEnabled(visible);
    m_glowToggler->setVisible(visible);
    m_glowLabel->setVisible(visible);
}
#endif

#if defined(GEODE_IS_WINDOWS)
CharacterColorPage::~CharacterColorPage() {
    CC_SAFE_RELEASE(m_playerObjects);
    CC_SAFE_RELEASE(m_modeButtons);
    CC_SAFE_RELEASE(m_colorButtons);
    CC_SAFE_RELEASE(m_cursors);
}

CharacterColorPage* CharacterColorPage::create() {
    auto ret = new CharacterColorPage();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool CharacterColorPage::checkColor(int id, UnlockType type) {
    auto result = GameManager::sharedState()->isColorUnlocked(id, type);
    if (!result && m_delegate) {
        m_delegate->showUnlockPopup(id, type);
    }
    return result;
}

cocos2d::CCPoint CharacterColorPage::offsetForIndex(int index) {
    float x;
    float y;
    if (index > 53 && index < 136) y = -.8f;
    else if (index > 135) y = .4f;
    else y = 0.f;
    switch (index) {
        case 4: case 5: case 6: case 7: case 13: case 14: case 15: case 16: case 22: case 23:
        case 24: case 25: case 31: case 32: case 33: case 34: case 40: case 41: case 42: case 43:
        case 49: case 50: case 51: case 52: case 58: case 59: case 60: case 61: case 67: case 68:
        case 69: case 70: case 76: case 77: case 78: case 79: case 85: case 86: case 87: case 88:
        case 94: case 95: case 96: case 97: case 103: case 104: case 105: case 106: case 112: case 113:
        case 114: case 115: case 136: case 137: case 138: case 139: case 140: case 141: case 142:
            x = 1.f;
            break;
        default:
            x = 0.f;
            break;
    }
    return { x, y };
}
#endif

#if defined(GEODE_IS_IOS)
#endif

