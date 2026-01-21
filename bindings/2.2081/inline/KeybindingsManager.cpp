#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool KeybindingsManager::init() { return true; }

void KeybindingsManager::dataLoaded(DS_Dictionary* dict) {
    auto keyToCommandDict = dict->getDictForKey("KBM_001", false);
    if (m_keyToCommandDict != keyToCommandDict) {
        CC_SAFE_RETAIN(keyToCommandDict);
        CC_SAFE_RELEASE(m_keyToCommandDict);
        m_keyToCommandDict = keyToCommandDict;
    }
    auto commandToKeyDict = dict->getDictForKey("KBM_002", false);
    if (m_commandToKeyDict != commandToKeyDict) {
        CC_SAFE_RETAIN(commandToKeyDict);
        CC_SAFE_RELEASE(m_commandToKeyDict);
        m_commandToKeyDict = commandToKeyDict;
    }
}

void KeybindingsManager::encodeDataTo(DS_Dictionary* dict) {
    dict->setObjectForKey("KBM_001", m_keyToCommandDict);
    dict->setObjectForKey("KBM_002", m_commandToKeyDict);
}

void KeybindingsManager::firstSetup() {
    auto keyToCommandDict = cocos2d::CCDictionary::create();
    if (m_keyToCommandDict != keyToCommandDict) {
        CC_SAFE_RETAIN(keyToCommandDict);
        CC_SAFE_RELEASE(m_keyToCommandDict);
        m_keyToCommandDict = keyToCommandDict;
    }
    auto commandToKeyDict = cocos2d::CCDictionary::create();
    if (m_commandToKeyDict != commandToKeyDict) {
        CC_SAFE_RETAIN(commandToKeyDict);
        CC_SAFE_RELEASE(m_commandToKeyDict);
        m_commandToKeyDict = commandToKeyDict;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

