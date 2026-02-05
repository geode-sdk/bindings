#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCAction* cocos2d::CCAction::create() {
    auto ret = new CCAction();
    ret->autorelease();
    return ret;
}

char const* cocos2d::CCAction::description() {
    return CCString::createWithFormat("<CCAction | Tag = %d>", m_nTag)->getCString();
}
#endif

