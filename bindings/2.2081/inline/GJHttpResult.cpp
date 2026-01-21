#include <Geode/Geode.hpp>

GJHttpResult::GJHttpResult() {
    m_success = false;
    m_httpType = (GJHttpType)0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GJHttpResult* GJHttpResult::create(bool success, gd::string response, gd::string tag, GJHttpType type) {
    auto ret = new GJHttpResult();
    if (ret->init(success, response, tag, type)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool GJHttpResult::init(bool success, gd::string response, gd::string tag, GJHttpType type) {
    if (!cocos2d::CCNode::init()) return false;
    m_success = success;
    m_response = response;
    m_requestTag = tag;
    m_httpType = type;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

