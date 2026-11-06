#include <Geode/binding/EmotePickerPopup.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
EmotePickerPopup* EmotePickerPopup::create(CCTextInputNode* input, cocos2d::CCPoint position, int maxEmotes, int maxLength) {
    auto ret = new EmotePickerPopup();
    if (ret->init(input, position, maxEmotes, maxLength)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

EmotePickerPopup* EmotePickerPopup::toggle(EmotePickerPopup* existingPopup, EmotePickerDelegate* delegate, cocos2d::CCNode* node, CCTextInputNode* input, int maxEmotes, int maxLength) {
    if (existingPopup) {
        existingPopup->onClose(nullptr);
        return nullptr;
    }
    if (!node || !input) return nullptr;
    auto position = EmotePickerPopup::buttonAnchor(node);
    auto picker = EmotePickerPopup::create(input, position, maxEmotes, maxLength);
    return EmotePickerPopup::openAt(picker, delegate, node);
}

EmotePickerPopup* EmotePickerPopup::createPicker(cocos2d::CCPoint position) {
    auto ret = new EmotePickerPopup();
    if (ret->init(nullptr, position, 0, 0)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

EmotePickerPopup* EmotePickerPopup::togglePicker(EmotePickerPopup* existingPopup, EmotePickerDelegate* delegate, cocos2d::CCNode* node) {
    if (existingPopup) {
        existingPopup->onClose(nullptr);
        return nullptr;
    }
    if (!node) return nullptr;
    auto position = EmotePickerPopup::buttonAnchor(node);
    auto picker = EmotePickerPopup::createPicker(position);
    return EmotePickerPopup::openAt(picker, delegate, node);
}
#endif

#if defined(GEODE_IS_IOS)
#endif
