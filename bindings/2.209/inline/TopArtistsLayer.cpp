#include <Geode/Bindings.hpp>

TopArtistsLayer::TopArtistsLayer() {
    m_topArtists = nullptr;
    m_listLayer = nullptr;
    m_loadingCircle = nullptr;
    m_page = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool TopArtistsLayer::isCorrect(char const* key) {
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
TopArtistsLayer::~TopArtistsLayer() {
    auto glm = GameLevelManager::sharedState();
    if (glm->m_onlineListDelegate == this) glm->m_onlineListDelegate = nullptr;
}

TopArtistsLayer* TopArtistsLayer::create() {
    auto ret = new TopArtistsLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void TopArtistsLayer::updateLevelsLabel() {
    auto end = m_pageEndIdx + m_pageStartIdx;
    auto count = m_itemCount;
    if (end > count) end = count;
    m_pageInfoLabel->setString(cocos2d::CCString::createWithFormat("%i to %i of %i", m_pageStartIdx + 1, end, count)->getCString());
    m_pageInfoLabel->limitLabelWidth(100.f, .5f, .0f);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

