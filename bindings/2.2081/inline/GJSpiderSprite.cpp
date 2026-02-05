#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool GJSpiderSprite::init(int frame) {
    return GJRobotSprite::init(frame, "Spider");
}
#endif

#if defined(GEODE_IS_IOS)
#endif

