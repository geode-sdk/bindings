#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::CCDictElement::CCDictElement(char const* p0, cocos2d::CCObject* p1) {
    m_iKey = 0;
    auto pStart = p0;
    int len = strlen(p0);
    if (len > MAX_KEY_LEN) pStart = p0 + len - MAX_KEY_LEN;
    strncpy(m_szKey, pStart, std::min(len, MAX_KEY_LEN));
    m_pObject = p1;
    memset(&hh, 0, sizeof(hh));
}

cocos2d::CCDictElement::CCDictElement(intptr_t p0, cocos2d::CCObject* p1) {
    m_szKey[0] = '\0';
    m_iKey = p0;
    m_pObject = p1;
    memset(&hh, 0, sizeof(hh));
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCDictElement::~CCDictElement() {}
#endif

