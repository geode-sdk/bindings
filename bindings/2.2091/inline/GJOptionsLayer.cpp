#include <Geode/binding/GJOptionsLayer.hpp>

#if !defined(GEODE_IS_WINDOWS) && !defined(GEODE_IS_IOS)
GJOptionsLayer::GJOptionsLayer() {
    m_gap = 48.f;
    m_page = 0;
    m_togglesPerPage = 10;
    m_toggleCount = 0;
    m_maxPage = 0;
    m_maxLabelScale = .5f;
    m_maxLabelWidth = 130.f;
    m_offset = 0.f;
}
#endif

void GJOptionsLayer::didToggle(int toggle) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GJOptionsLayer* GJOptionsLayer::create(int background) {
    auto ret = new GJOptionsLayer();
    if (ret->init(background, 280.f)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

const char* GJOptionsLayer::infoKey(int index) {
    return cocos2d::CCString::createWithFormat("info_%i", index)->getCString();
}

const char* GJOptionsLayer::layerKey(int page) {
    return cocos2d::CCString::createWithFormat("layer_%i", page)->getCString();
}

const char* GJOptionsLayer::objectKey(int page) {
    return cocos2d::CCString::createWithFormat("object_%i", page)->getCString();
}

void GJOptionsLayer::offsetToNextPage() {
    m_toggleCount += m_togglesPerPage - m_toggleCount % m_togglesPerPage;
}

const char* GJOptionsLayer::pageKey(int page) {
    return cocos2d::CCString::createWithFormat("page_%i", page)->getCString();
}
#endif

#if defined(GEODE_IS_WINDOWS)
void GJOptionsLayer::setupOptions() {}

void GJOptionsLayer::addToggle(char const* title, int id, bool initial, char const* description) {
    addToggleInternal(title, id, initial, description);
}
#endif

#if defined(GEODE_IS_IOS)
CCMenuItemToggler* GJOptionsLayer::getToggleButton(int id) {
    auto it = m_toggleButtons.find(id);
    return it != m_toggleButtons.end() ? it->second : nullptr;
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
void GJOptionsLayer::didToggleGV(std::string variable) {}
#endif

