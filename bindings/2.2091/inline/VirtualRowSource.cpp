#include <Geode/binding/VirtualRowSource.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#ifdef GEODE_IS_MACOS
int VirtualRowSource::virtualRowCount() { return 0; }

float VirtualRowSource::virtualRowHeight(int) { return 0.f; }

void VirtualRowSource::mountVirtualRow(int, cocos2d::CCNode*, cocos2d::CCMenu*) {}

void VirtualRowSource::unmountVirtualRow(int, cocos2d::CCNode*) {}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif
