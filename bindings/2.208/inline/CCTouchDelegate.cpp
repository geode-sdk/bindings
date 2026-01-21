#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_IOS)
void cocos2d::CCTouchDelegate::setPreviousPriority(int p0) {}

int cocos2d::CCTouchDelegate::getPreviousPriority() { return 0; }
#endif

