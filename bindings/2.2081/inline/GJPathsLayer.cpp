#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GJPathsLayer::darkenButtons(bool darken) {
    m_closeSprite->setColor(darken ? cocos2d::ccColor3B { 75, 75, 75 } : cocos2d::ccColor3B { 255, 255, 255 });
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

