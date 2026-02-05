#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::CCZone::CCZone(cocos2d::CCObject* object) {
    m_pCopyObject = object;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

