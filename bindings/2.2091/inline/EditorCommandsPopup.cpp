#include <Geode/binding/EditorCommandsPopup.hpp>
#include <Geode/binding/EditorUI.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
EditorCommandsPopup::EditorCommandsPopup() {}

EditorCommandsPopup* EditorCommandsPopup::create(EditorUI* editorUI) {
    auto ret = new EditorCommandsPopup();
    if (ret->init(editorUI)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool EditorCommandsPopup::init(EditorUI* editorUI) {
    this->setWindowSizeBounds(100.f, 60.f, 160.f, 405.f);
    return this->initWindow(editorUI, 160.f, 270.f, 1, 1);
}
#endif

#if defined(GEODE_IS_IOS)
#endif
