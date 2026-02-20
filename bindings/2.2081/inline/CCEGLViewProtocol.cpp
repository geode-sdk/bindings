#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
const char* cocos2d::CCEGLViewProtocol::getViewName() {
    return m_szViewName;
}
#endif

