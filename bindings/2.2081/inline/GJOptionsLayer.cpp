#include <Geode/Geode.hpp>

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

void GJOptionsLayer::didToggle(int toggle) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GJOptionsLayer* GJOptionsLayer::create(int background) {
    auto ret = new GJOptionsLayer();
    if (ret->init(background)) {
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

cocos2d::CCPoint GJOptionsLayer::nextPosition(int page) {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto count = this->countForPage(page);
    cocos2d::CCPoint pos = winSize * .5f + cocos2d::CCPoint { count % 2 == 0 ? -160.f : 80.f, m_offset + 80.f };
    if (count > 1) pos.y -= floorf(count / 2.f) * m_gap;
    return pos;
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MAC) || defined(GEODE_IS_ANDROID)
void GJOptionsLayer::didToggleGV(gd::string variable) {}
#endif

