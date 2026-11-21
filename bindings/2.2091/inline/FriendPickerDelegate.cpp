#include <Geode/binding/FriendPickerDelegate.hpp>

void FriendPickerDelegate::friendPicked(GJUserScore*) {}

bool FriendPickerDelegate::isRecipientSelected(int) { return false; }

void FriendPickerDelegate::clearRecipients() {}

void FriendPickerDelegate::friendPickerClosed() {}

void FriendPickerDelegate::friendPickerAdd() {}

#ifdef GEODE_IS_MACOS
int FriendPickerDelegate::selectedRecipientCount() { return 0; }

cocos2d::CCArray* FriendPickerDelegate::selectedRecipients() { return nullptr; }

int FriendPickerDelegate::pickerRowState(int) { return 0; }

int FriendPickerDelegate::pickerCountBase() { return 0; }
#endif
