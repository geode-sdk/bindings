#include <Geode/binding/ParentalOptionsLayer.hpp>

ParentalOptionsLayer::ParentalOptionsLayer() {
    m_page = -1;
    m_toggleCount = 0;
    m_maxPage = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
const char* ParentalOptionsLayer::infoKey(int index) {
    return cocos2d::CCString::createWithFormat("info_%i", index)->getCString();
}

const char* ParentalOptionsLayer::layerKey(int page) {
    return cocos2d::CCString::createWithFormat("layer_%i", page)->getCString();
}

const char* ParentalOptionsLayer::objectKey(int page) {
    return cocos2d::CCString::createWithFormat("object_%i", page)->getCString();
}

const char* ParentalOptionsLayer::pageKey(int page) {
    return cocos2d::CCString::createWithFormat("page_%i", page)->getCString();
}
#endif

#if defined(GEODE_IS_WINDOWS)
ParentalOptionsLayer::~ParentalOptionsLayer() {
    CC_SAFE_RELEASE(m_variables);
    CC_SAFE_RELEASE(m_values);
    CC_SAFE_RELEASE(m_safeModeNodes);
    CC_SAFE_RELEASE(m_toggleNodes);
}

void ParentalOptionsLayer::incrementCountForPage(int page) {
    m_values->setObject(cocos2d::CCString::createWithFormat("%i", this->countForPage(page) + 1), this->pageKey(page));
}

cocos2d::CCPoint ParentalOptionsLayer::nextPosition(int page) {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto count = this->countForPage(page);
    cocos2d::CCPoint pos = winSize * .5f + cocos2d::CCPoint { count % 2 == 0 ? -135.f : 35.f, 50.f };
    if (count > 1) pos.y -= (int)(count * .5f) * 48;
    return pos;
}

#endif

#if defined(GEODE_IS_IOS)
#endif

