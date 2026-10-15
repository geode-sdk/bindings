#include <Geode/Bindings.hpp>

GameOptionsLayer::GameOptionsLayer() {
    m_practiceDialogIndex = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GameOptionsLayer* GameOptionsLayer::create(GJBaseGameLayer* baseGameLayer) {
    auto ret = new GameOptionsLayer();
    if (ret->init(baseGameLayer)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool GameOptionsLayer::init(GJBaseGameLayer* baseGameLayer) {
    m_baseGameLayer = baseGameLayer;
    m_gap = 40.f;
    m_maxLabelScale = .4f;
    if (!GJOptionsLayer::init(2)) return false;
    this->preSetup();
    this->postSetup();
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

