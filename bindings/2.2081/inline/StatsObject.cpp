#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool StatsObject::init(char const* key, int value) {
    m_key = cocos2d::CCString::create(key)->getCString();
    m_value = value;
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

