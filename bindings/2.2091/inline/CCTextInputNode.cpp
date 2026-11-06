#include <Geode/Geode.hpp>

CCTextInputNode::CCTextInputNode() {
    m_numberInput = false;
    m_keyboardOffset = 0.f;
    m_selected = false;
    m_keyboardShowing = false;
    m_fontValue1 = -0.5f;
    m_fontValue2 = 8.f;

    m_unkDelegate = nullptr;
    m_parseEmotes = 0;
    m_emoteContainer = nullptr;

    m_maxLabelWidth = 0.f;
    m_maxLabelScale = 0.f;
    m_placeholderScale = 0.f;
    m_cursor = nullptr;
    m_textField = nullptr;
    m_delegate = nullptr;
    m_maxLabelLength = 0;
    m_textLabel = nullptr;
    m_filterSwearWords = false;
    m_usePasswordChar = false;
    m_forceOffset = false;
    m_textArea = nullptr;

    m_allowNewlines = false;
    m_unicodeText = false;
    m_deselectOnOutsideTap = true;
    m_hitPadding = cocos2d::CCSize(0.f, 0.f);
    m_scrollableLayer = nullptr;
    m_cursorTargetX = -1.f;
    m_maxTextAreaHeight = 0.f;
    m_unkTextareaMember = 0;
    m_wheelRangeSet = false;
    m_wheelRangeMin = 0.f;
    m_wheelRangeMax = 0.f;
    m_maxDigits = 0;
    m_doneFromIME = false;
    m_editMenu = nullptr;
    m_holdMenuSpawn = cocos2d::CCPoint(0.f, 0.f);
    m_holdTimerArmed = false;
    m_holdTimerFired = false;

    m_valueType = (InputValueType)0;
    m_kerningAmount = 0;
}

CCTextInputNode* CCTextInputNode::create(float width, float height, char const* placeholder, char const* fontPath) {
    return CCTextInputNode::create(width, height, placeholder, 0x18, fontPath);
}

CCTextInputNode* CCTextInputNode::create(float width, float height, char const* placeholder, int fontSize, char const* fontPath) {
    return CCTextInputNode::create(width, height, placeholder, "Thonburi", fontSize, fontPath);
}

cocos2d::CCLabelBMFont* CCTextInputNode::getTextLabel() {
    return m_textLabel;
}

void CCTextInputNode::setDelegate(TextInputDelegate* delegate) {
    m_delegate = delegate;
}

void CCTextInputNode::setMaxLabelLength(int v) {
    m_maxLabelLength = v;
    this->refreshLabel();
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void CCTextInputNode::setLabelNormalColor(cocos2d::ccColor3B color) {
    m_textColor = color;
    this->refreshLabel();
}

void CCTextInputNode::updateBlinkLabel() {
    this->updateBlinkLabelToChar(this->m_textField->m_uCursorPos);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void CCTextInputNode::disarmHold() {
    m_holdTimerFired = false;
    if (m_holdTimerArmed) {
        m_holdTimerArmed = false;
        this->unschedule(schedule_selector(CCTextInputNode::holdTimerFired));
    }
}

void CCTextInputNode::closeEditMenu() {
    if (auto editMenu = m_editMenu) {
        m_editMenu = nullptr;
        editMenu->removeFromParentAndCleanup(true);
        editMenu->release();
    }
}

void CCTextInputNode::copyText() {
    if (this->canCopyText()) {
        std::string str = this->getString();
        geode::utils::clipboard::write(str);
    }
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_ANDROID32) || defined(GEODE_IS_ANDROID64)
CCTextInputNode::~CCTextInputNode() {
    this->disarmHold();
    this->closeEditMenu();
    if (m_selected) CCTextInputNode::onClickTrackNode(false);
    static_assert(GEODE_COMP_GD_VERSION == 22091, "Inline definition with static addresses not updated");

    #if defined(GEODE_IS_WINDOWS)
    auto activeInput = reinterpret_cast<CCTextInputNode**>(geode::base::get() + 0x909788);
    #elif defined(GEODE_IS_ANDROID32)
    auto activeInput = reinterpret_cast<CCTextInputNode**>(geode::base::get() + 0xd2b390);
    #elif defined(GEODE_IS_ANDROID64)
    auto activeInput = reinterpret_cast<CCTextInputNode**>(geode::base::get() + 0x155c120);
    #endif
    if (*activeInput == this) *activeInput = nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS)
void CCTextInputNode::forceOffset() { m_forceOffset = true; }

std::string CCTextInputNode::getString() {
    return m_textField->getString();
}

void CCTextInputNode::setAllowedChars(std::string filter) {
    m_allowedChars = filter;
    if (m_valueType != InputValueType::Default) return;
    bool hasDigit = false;
    bool hasMinus = false;
    bool hasDot = false;
    for (char c : filter) {
        if (c >= '0' && c <= '9') hasDigit = true;
        else if (c == '-') hasMinus = true;
        else if (c == '.') hasDot = true;
        else return;
    }
    if (!hasDigit) return;
    if (hasDot) {
        m_valueType = InputValueType::Float;
        if (m_decimalPlaces <= 0) m_decimalPlaces = 2;
    }
    else if (hasMinus) {
        m_valueType = InputValueType::Int;
    }
    else {
        m_valueType = InputValueType::Uint;
    }
}

void CCTextInputNode::setLabelPlaceholderColor(cocos2d::ccColor3B color) {
    m_placeholderColor = color;
    this->refreshLabel();
}

void CCTextInputNode::setLabelPlaceholderScale(float v) {
    m_placeholderScale = v;
    this->refreshLabel();
}

void CCTextInputNode::setMaxLabelScale(float v) {
    m_maxLabelScale = v;
    this->refreshLabel();
}

void CCTextInputNode::setMaxLabelWidth(float v) {
    m_maxLabelWidth = v;
    this->refreshLabel();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

