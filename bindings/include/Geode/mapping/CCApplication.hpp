#pragma once
#include <Geode/cocos/platform/CCPlatformConfig.h>

#if CC_TARGET_PLATFORM == CC_PLATFORM_WIN32
#include <Geode/cocos/platform/win32/CCApplication.h>
#elif CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID
#include <Geode/cocos/platform/android/CCApplication.h>
#elif CC_TARGET_PLATFORM == CC_PLATFORM_IOS
#include <Geode/cocos/platform/ios/CCApplication.h>
#elif CC_TARGET_PLATFORM == CC_PLATFORM_MAC
#include <Geode/cocos/platform/mac/CCApplication.h>
#endif
