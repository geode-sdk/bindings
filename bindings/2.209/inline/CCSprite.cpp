#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCSprite* cocos2d::CCSprite::create(char const* pszFileName, cocos2d::CCRect const& rect) {
    auto ret = new CCSprite();
    if (ret->initWithFile(pszFileName, rect)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

