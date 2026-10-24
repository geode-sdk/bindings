#include <Geode/binding/KeybindSource.hpp>
#include <Geode/cocos/cocoa/CCObject.h>

KeybindSource::KeybindSource() {}

KeybindSource::~KeybindSource() {
    // same fix like xml_node
    if (geode::DestructorLock::isLocked(this)) {
        geode::DestructorLock::removeLock(this);
    }
}

std::vector<int> KeybindSource::chordsForAction(int action) { return {}; }

std::vector<int> KeybindSource::actionsForChord(int chord) { return {}; }

void KeybindSource::bindChord(int chord, int action) {}

void KeybindSource::unbindChord(int chord, int action) {}

bool KeybindSource::isLevelSet() { return false; }

