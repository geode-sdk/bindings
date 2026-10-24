#include <Geode/binding/KeybindingsSettingsPopup.hpp>

#if defined(GEODE_IS_WINDOWS)
KeybindingsSettingsPopup::KeybindingsSettingsPopup() {
    m_layer = nullptr;
    m_pendingAction = 0;
    m_importVersion = 0;
}

KeybindingsSettingsPopup::~KeybindingsSettingsPopup() {}

KeybindingsSettingsPopup* KeybindingsSettingsPopup::create(KeybindingsLayer* layer, std::vector<KeybindSettingsEntry> const& entries) {
    auto ret = new KeybindingsSettingsPopup();
    if (ret->init(layer, entries)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif
