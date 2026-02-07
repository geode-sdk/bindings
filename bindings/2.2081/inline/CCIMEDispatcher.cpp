#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
class cocos2d::CCIMEDispatcher::Impl {
public:
    std::list<CCIMEDelegate*> m_DelegateList;
    CCIMEDelegate* m_DelegateWithIme;
};

bool cocos2d::CCIMEDispatcher::hasDelegate() {
    return m_pImpl->m_DelegateWithIme != nullptr;
}
#endif

