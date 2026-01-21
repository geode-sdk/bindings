#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCAnimationCache::CCAnimationCache() {
    m_pAnimations = nullptr;
}

void cocos2d::CCAnimationCache::removeAnimationByName(const char* p0) {
    if (p0) m_pAnimations->removeObjectForKey(p0);
}
#endif

