#include <Geode/binding/GJKeybindManager.hpp>
#include <Geode/cocos/robtop/xml/DS_Dictionary.h>
#include <cstring>

#if defined(GEODE_IS_WINDOWS)
void GJKeybindManager::applyImportBlob(std::string const& blob, int version) {
    this->parseBindsBlob(blob, true, nullptr, nullptr);
    this->applyNewDefaults(version);
}

void GJKeybindManager::bindKey(cocos2d::enumKeyCodes key, bool ctrl, bool alt, bool shift, int action) {
    this->bindChord(encodeChord(key, ctrl, alt, shift), action);
}

void GJKeybindManager::dataLoaded(DS_Dictionary* dict) {
    if (!dict) return;
    auto version = dict->getIntegerForKey("GJKB_Version");
    if (version < 1) return;
    auto blob = dict->getStringForKey("GJKB_Binds");
    if (blob.empty()) {
        this->loadDefaults();
        return;
    }
    int applied = 0;
    this->parseBindsBlob(blob, true, &applied, nullptr);
    if (applied == 0) this->loadDefaults();
    else this->applyNewDefaults(version);
}

int GJKeybindManager::encodeChord(cocos2d::enumKeyCodes key, bool ctrl, bool alt, bool shift) {
    int chord = key & 0xffff;
    if (isControllerChord(chord)) return chord;
    if (ctrl) chord |= 0x10000;
    if (alt) chord |= 0x20000;
    if (shift) chord |= 0x40000;
    return chord;
}

void GJKeybindManager::encodeDataTo(DS_Dictionary* dict) {
    if (!dict) return;
    dict->setIntegerForKey("GJKB_Version", 2);
    dict->setStringForKey("GJKB_Binds", this->buildBindsBlob());
}

void GJKeybindManager::firstSetup() {
    this->clearMovementOverride();
    m_chordToActions.clear();
    m_actionToChords.clear();
}

std::vector<int> GJKeybindManager::globalChordsForAction(int action) {
    if (m_movementOverrideActive) {
        auto it = m_savedMovementBinds.find(action);
        if (it != m_savedMovementBinds.end()) return std::vector<int>(it->second.begin(), it->second.end());
    }
    return this->chordsForAction(action);
}

int GJKeybindManager::groupForAction(int action) {
    return action > 0 ? action / 10000 : 0;
}

bool GJKeybindManager::groupsConflict(int groupA, int groupB) {
    return groupA == 0 || groupB == 0 || groupA == groupB;
}

bool GJKeybindManager::init() {
    this->loadDefaults();
    return true;
}

bool GJKeybindManager::isControllerChord(int chord) {
    return static_cast<unsigned int>((chord & 0xffff) - 1001) < 44;
}

bool GJKeybindManager::isExclusive(int action) {
    auto exclusiveActions = reinterpret_cast<std::unordered_set<int>*>(geode::base::get() + 0x90c010);
    return exclusiveActions->count(action) != 0;
}

bool GJKeybindManager::isKnownAction(int action) {
    return std::strcmp(actionToString(action), "Unknown") != 0;
}

bool GJKeybindManager::isMovementAction(int action) {
    return action >= 10001 && action <= 10006;
}
#endif

