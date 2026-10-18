#include <Geode/Bindings.hpp>

void UserListDelegate::getUserListFinished(cocos2d::CCArray* scores, UserListType type) {}

void UserListDelegate::getUserListFailed(UserListType type, GJErrorCode errorType) {}

void UserListDelegate::userListChanged(cocos2d::CCArray* scores, UserListType type) {}

void UserListDelegate::forceReloadList(UserListType type) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

