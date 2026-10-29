#include <Geode/binding/FindObjectPopup.hpp>

#if !defined(GEODE_IS_IOS)
FindObjectPopup::FindObjectPopup() {
    m_groupID = 0;
}
#endif

#if defined(GEODE_IS_WINDOWS)
FindObjectPopup* FindObjectPopup::create(EditorUI* ui) {
    auto ret = new FindObjectPopup();
    if (ret->init(ui)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

