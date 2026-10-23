#include <Geode/binding/KeybindSource.hpp>

KeybindSource::~KeybindSource() {}

std::vector<int> KeybindSource::chordsForAction(int action) { return {}; }

std::vector<int> KeybindSource::actionsForChord(int chord) { return {}; }

void KeybindSource::bindChord(int chord, int action) {}

void KeybindSource::unbindChord(int chord, int action) {}

bool KeybindSource::isLevelSet() { return false; }

