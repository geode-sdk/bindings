#include <Geode/Bindings.hpp>

void EmotePickerDelegate::emotePickerClosed(EmotePickerPopup*) {}

void EmotePickerDelegate::emotePicked(EmotePickerPopup*, EmoteDef const*) {}

void EmotePickerDelegate::emotePickerKeyDown(EmotePickerPopup*, cocos2d::enumKeyCodes, double) {}