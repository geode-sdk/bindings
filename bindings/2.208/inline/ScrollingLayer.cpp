#include <Geode/Geode.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS) || defined(GEODE_IS_ANDROID)
ScrollingLayer::ScrollingLayer() {
    m_scrollFactor = 0.f;
    m_touchID = -1;
    m_contentLayer = nullptr;
    m_parentLayer = nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS)
ScrollingLayer* ScrollingLayer::create(cocos2d::CCSize size, cocos2d::CCPoint position, float factor) {
    auto ret = new ScrollingLayer();
    if (ret->init(size, position, factor)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool ScrollingLayer::init(cocos2d::CCSize size, cocos2d::CCPoint position, float factor) {
    if (!cocos2d::CCLayerColor::initWithColor({ 0, 0, 0, 0 })) return false;
    m_scrollFactor = factor;
    this->addChild(cocos2d::CCLayerColor::create({ 0, 0, 0, 50 }), -2);
    m_contentLayer = cocos2d::CCLayer::create();
    this->addChild(m_contentLayer, -1);
    m_size = size;
    return true;
}

void ScrollingLayer::setStartOffset(cocos2d::CCPoint offset) {
    m_startOffset = offset;
    m_contentLayer->setPosition(offset);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

