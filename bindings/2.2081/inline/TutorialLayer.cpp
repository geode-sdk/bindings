#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void TutorialLayer::removeTutorialTexture() {
    if (m_page == 0) return;
    cocos2d::CCTextureCache::sharedTextureCache()->removeTextureForKey(cocos2d::CCString::createWithFormat("tutorial_%02d", m_page)->getCString());
}
#endif

#if defined(GEODE_IS_IOS)
#endif

