#include <Geode/binding/FriendPickerDelegate.hpp>

void FriendPickerDelegate::friendPicked(GJUserScore*) {}

bool FriendPickerDelegate::isRecipientSelected(int) { return false; }

void FriendPickerDelegate::clearRecipients() {}

void FriendPickerDelegate::friendPickerClosed() {}

void FriendPickerDelegate::friendPickerAdd() {}