#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
int cocos2d::CCString::compare(char const* p0) const  {
    return strcmp(this->getCString(), p0);
}

unsigned int cocos2d::CCString::uintValue() const  {
    if (this->length()) return 0;
    return atoi(m_sString.c_str());
}
#endif

