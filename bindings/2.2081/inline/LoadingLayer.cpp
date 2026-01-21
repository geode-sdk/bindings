#include <Geode/Geode.hpp>

LoadingLayer::LoadingLayer() {
    m_unknown = false;
    m_unknown2 = false;
    m_loadStep = 0;
    m_caption = nullptr;
    m_textArea = nullptr;
    m_sliderBar = nullptr;
    m_sliderGrooveXPos = 0.f;
    m_sliderGrooveHeight = 0.f;
    m_fromRefresh = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
LoadingLayer::~LoadingLayer() {
    CCNode::removeAllChildrenWithCleanup(true);
}

LoadingLayer* LoadingLayer::create(bool refresh) {
    auto ret = new LoadingLayer();
    if (ret->init(refresh)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void LoadingLayer::loadingFinished() {
    cocos2d::CCDirector::sharedDirector()->replaceScene(MenuLayer::scene(m_fromRefresh));
}
#endif

#if defined(GEODE_IS_IOS)
#endif

