#include <Geode/Bindings.hpp>

void MessageListDelegate::loadMessagesFinished(cocos2d::CCArray* messages, char const* key) {}

void MessageListDelegate::loadMessagesFailed(char const* key, GJErrorCode errorType) {}

void MessageListDelegate::forceReloadMessages(bool sent) {}

void MessageListDelegate::setupPageInfo(gd::string info, char const* key) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

