#include <Geode/Geode.hpp>

SelectFontLayer::SelectFontLayer() {
    m_font = -1;
    m_editorLayer = nullptr;
    m_fontLabel = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SelectFontLayer::~SelectFontLayer() {
    CCNode::removeAllChildrenWithCleanup(true);
}

SelectFontLayer* SelectFontLayer::create(LevelEditorLayer* editorLayer) {
    auto ret = new SelectFontLayer();
    if (ret->init(editorLayer)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

