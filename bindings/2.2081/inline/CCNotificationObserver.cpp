#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::CCNotificationObserver::CCNotificationObserver(cocos2d::CCObject* p0, cocos2d::SEL_CallFuncO p1, char const* p2, cocos2d::CCObject* p3) {
    m_target = p0;
    m_selector = p1;
    m_object = p3;
    m_name = new char[strlen(p2) + 1];
    memset(m_name, 0, strlen(p2) + 1);
    std::string orig = p2;
    orig.copy(m_name, strlen(p2));
    m_nHandler = 0;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

