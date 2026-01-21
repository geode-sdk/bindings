#include <Geode/Geode.hpp>

GJFriendRequest::GJFriendRequest() {
    m_requestID = 0;
    m_accountID = 0;
    m_unusedToAccountID = 0;
    m_isRead = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJFriendRequest* GJFriendRequest::create() {
    auto ret = new GJFriendRequest();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

