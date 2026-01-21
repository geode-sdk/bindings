#include <Geode/Geode.hpp>

EditorOptionsLayer::EditorOptionsLayer() {
    m_buttonsPerRow = 0;
    m_buttonRows = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
EditorOptionsLayer* EditorOptionsLayer::create() {
    auto ret = new EditorOptionsLayer();
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

