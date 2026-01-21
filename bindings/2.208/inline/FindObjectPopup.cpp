#include <Geode/Geode.hpp>

FindObjectPopup::FindObjectPopup() {
    m_unknownBool = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void FindObjectPopup::onFindObjectID(cocos2d::CCObject* sender) {
    m_unknownBool = !m_unknownBool;
}
#endif

#if defined(GEODE_IS_WINDOWS)
FindObjectPopup* FindObjectPopup::create() {
    auto ret = new FindObjectPopup();
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

