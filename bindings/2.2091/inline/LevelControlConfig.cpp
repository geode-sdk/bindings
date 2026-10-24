#include <Geode/binding/LevelControlConfig.hpp>
#include <Geode/binding/LevelTools.hpp>

#if defined(GEODE_IS_WINDOWS)
LevelControlConfig::~LevelControlConfig() {}

std::string LevelControlConfig::encodeB64() const {
    return LevelTools::base64EncodeString(this->encode());
}

bool LevelControlConfig::init() {
    return true;
}

void LevelControlConfig::keepClasses(int classes) {
    if ((classes & 1) == 0) {
        m_keyboardBinds.m_actionToChords.clear();
        m_keyboardBinds.m_dirty = true;
    }
    if ((classes & 2) == 0) {
        m_touchSlots.clear();
    }
    if ((classes & 4) == 0) {
        m_controllerBinds.m_actionToChords.clear();
        m_controllerBinds.m_dirty = true;
    }
}

int LevelControlConfig::presentClasses() const {
    int classes = 0;
    if (!m_keyboardBinds.m_actionToChords.empty()) classes |= 1;
    if (!m_touchSlots.empty()) classes |= 2;
    if (!m_controllerBinds.m_actionToChords.empty()) classes |= 4;
    return classes;
}

void LevelControlConfig::seedDefaults() {
    this->seedBase();
    m_keyboardBinds.m_actionToChords.clear();
    m_keyboardBinds.m_dirty = true;
    LevelControlConfig::bindDefaultKeyboard(&m_keyboardBinds);
    m_controllerBinds.m_actionToChords.clear();
    m_controllerBinds.m_dirty = true;
    LevelControlConfig::bindDefaultController(&m_controllerBinds);
    m_touchSlots.clear();
}
#endif
