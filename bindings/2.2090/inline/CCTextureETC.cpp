#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCTextureETC::~CCTextureETC() {}

bool cocos2d::CCTextureETC::loadTexture(const char* file) {
    return false;
}
#endif

