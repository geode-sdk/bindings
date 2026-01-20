#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::CCPrettyPrinter::CCPrettyPrinter(int p0) {
    setIndentLevel(p0);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

