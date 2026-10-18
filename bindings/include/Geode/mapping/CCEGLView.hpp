#pragma once
#include <Geode/cocos/platform/CCPlatformConfig.h>

#if CC_TARGET_PLATFORM == CC_PLATFORM_WIN32
#include <Geode/cocos/platform/win32/CCEGLView.h>
#elif CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID
#include <Geode/cocos/platform/android/CCEGLView.h>
#elif CC_TARGET_PLATFORM == CC_PLATFORM_IOS
#include <Geode/cocos/platform/ios/CCEGLView.h>
#elif CC_TARGET_PLATFORM == CC_PLATFORM_MAC
#include <Geode/cocos/platform/mac/CCEGLView.h>
#endif
