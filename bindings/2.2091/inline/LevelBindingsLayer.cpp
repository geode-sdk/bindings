#include <Geode/binding/LevelBindingsLayer.hpp>
#include <Geode/binding/KeybindSet.hpp>
#include <Geode/binding/LevelControlConfig.hpp>

bool LevelBindingsLayer::crossCheckGlobalConflicts() { return true; }
bool LevelBindingsLayer::showControllerChords() { return true; }

#if defined(GEODE_IS_WINDOWS)
bool LevelBindingsLayer::init(KeybindSet* keybindSet, bool controller) {
    m_keybindSet = keybindSet;
    m_controller = controller;
    m_keybindSource = keybindSet;
    m_ownsKeybindSource = false;
    if (keybindSet->m_actionToChords.empty()) {
        LevelControlConfig::bindGlobalBinds(keybindSet, controller);
        m_seededFromGlobal = true;
    }
    keybindSet->m_dirty = false;
    return KeybindingsLayer::init(nullptr);
}
#endif
