#include <Geode/Geode.hpp>

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
}

ParentalOptionsLayer* ParentalOptionsLayer::create() {
    auto ret = new ParentalOptionsLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void ParentalOptionsLayer::incrementCountForPage(int page) {
    m_values->setObject(cocos2d::CCString::createWithFormat("%i", this->countForPage(page) + 1), this->pageKey(page));
}

cocos2d::CCPoint ParentalOptionsLayer::nextPosition(int page) {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto count = this->countForPage(page);
    cocos2d::CCPoint pos = winSize * .5f + cocos2d::CCPoint { count % 2 == 0 ? -135.f : 35.f, 60.f };
    if (count > 1) pos.y -= (int)(count * .5f) * 48;
    return pos;
}

void ParentalOptionsLayer::onInfo(cocos2d::CCObject* sender) {
    FLAlertLayer::create(
        nullptr,
        "Info",
        m_values->valueForKey(this->infoKey(sender->getTag()))->getCString(),
        "OK",
        nullptr,
        300.f
    )->show();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

