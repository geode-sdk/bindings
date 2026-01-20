#include <Geode/Geode.hpp>

MoreVideoOptionsLayer::MoreVideoOptionsLayer() {
    m_page = 0;
    m_toggleCount = 0;
    m_pageCount = 0;
    m_fpsInput = nullptr;
    m_fpsNodes = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
const char* MoreVideoOptionsLayer::infoKey(int index) {
    return cocos2d::CCString::createWithFormat("info_%i", index)->getCString();
}

const char* MoreVideoOptionsLayer::layerKey(int page) {
    return cocos2d::CCString::createWithFormat("layer_%i", page)->getCString();
}

const char* MoreVideoOptionsLayer::objectKey(int page) {
    return cocos2d::CCString::createWithFormat("object_%i", page)->getCString();
}

const char* MoreVideoOptionsLayer::pageKey(int page) {
    return cocos2d::CCString::createWithFormat("page_%i", page)->getCString();
}
#endif

#if defined(GEODE_IS_WINDOWS)
MoreVideoOptionsLayer::~MoreVideoOptionsLayer() {
    CC_SAFE_RELEASE(m_values);
    CC_SAFE_RELEASE(m_variables);
}

MoreVideoOptionsLayer* MoreVideoOptionsLayer::create() {
    auto ret = new MoreVideoOptionsLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void MoreVideoOptionsLayer::incrementCountForPage(int page) {
    m_values->setObject(cocos2d::CCString::createWithFormat("%i", this->countForPage(page) + 1), this->pageKey(page));
}

cocos2d::CCPoint MoreVideoOptionsLayer::nextPosition(int page) {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto count = this->countForPage(page);
    cocos2d::CCPoint pos = winSize * .5f + cocos2d::CCPoint { count % 2 == 0 ? -135.f : 35.f, 60.f };
    if (count > 1) pos.y -= (int)(count * .5f) * 48;
    return pos;
}
#endif

#if defined(GEODE_IS_IOS)
void MoreVideoOptionsLayer::onApplyFPS(cocos2d::CCObject* sender) {
    auto fps = std::max(cocos2d::CCString::createWithFormat("%.03f", atof(m_fpsInput->getString().c_str()))->floatValue(), 60.f);
    if (fps == floorf(fps)) {
        m_fpsInput->setString(cocos2d::CCString::createWithFormat("%i", (int)fps)->getCString());
    }
    else {
        m_fpsInput->setString(cocos2d::CCString::createWithFormat("%.03f", fps)->getCString());
    }
    auto gameManager = GameManager::sharedState();
    gameManager->m_customFPSTarget = fps;
    gameManager->updateCustomFPS();
}
#endif

