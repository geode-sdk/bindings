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

cocos2d::CCIMEDispatcher::CCIMEDispatcher() {
    m_pImpl = new Impl();
    m_pImpl->m_DelegateWithIme = nullptr;
}

void cocos2d::CCIMEDispatcher::dispatchDeleteForward() {
    if (m_pImpl && m_pImpl->m_DelegateWithIme) {
        m_pImpl->m_DelegateWithIme->deleteForward();
    }
}

void cocos2d::CCIMEDispatcher::dispatchKeyboardWillHide() {
    CCIMEKeyboardNotificationInfo info;
    return this->dispatchKeyboardWillHide(info);
}

const char* cocos2d::CCIMEDispatcher::getContentText() {
    const char* ret = nullptr;
    if (m_pImpl && m_pImpl->m_DelegateWithIme) {
        ret = m_pImpl->m_DelegateWithIme->getContentText();
    }
    return ret ? ret : "";
}

bool cocos2d::CCIMEDispatcher::hasDelegate() {
    return m_pImpl->m_DelegateWithIme != nullptr;
}
#endif

