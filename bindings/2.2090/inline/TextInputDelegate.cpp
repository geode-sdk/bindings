#include <Geode/Bindings.hpp>

void TextInputDelegate::textChanged(CCTextInputNode* node) {}

void TextInputDelegate::textInputOpened(CCTextInputNode* node) {}

void TextInputDelegate::textInputClosed(CCTextInputNode* node) {}

void TextInputDelegate::textInputShouldOffset(CCTextInputNode* node, float yOffset) {}

void TextInputDelegate::textInputReturn(CCTextInputNode* node) {}

bool TextInputDelegate::allowTextInput(CCTextInputNode* node) { return true; }

void TextInputDelegate::enterPressed(CCTextInputNode* node) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

