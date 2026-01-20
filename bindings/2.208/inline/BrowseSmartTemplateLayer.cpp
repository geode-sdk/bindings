#include <Geode/Geode.hpp>

BrowseSmartTemplateLayer::BrowseSmartTemplateLayer() {
    m_template = nullptr;
    m_pages = nullptr;
    m_page = 0;
    m_nextPageBtn = nullptr;
    m_prevPageBtn = nullptr;
    m_dotsArray = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
BrowseSmartTemplateLayer* BrowseSmartTemplateLayer::create(GJSmartTemplate* smartTemplate, SmartBrowseFilter browseFilter) {
    auto ret = new BrowseSmartTemplateLayer();
    if (ret->init(smartTemplate, browseFilter)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void BrowseSmartTemplateLayer::createDots() {
    auto batchNode = cocos2d::CCSpriteBatchNode::create("smallDot.png");
    m_mainLayer->addChild(batchNode, 5);
    m_dotsArray = cocos2d::CCArray::create();
    m_dotsArray->retain();
    for (int i = 0; i < m_pages->count(); i++) {
        auto dot = cocos2d::CCSprite::create("smallDot.png");
        dot->setScale(.8f);
        batchNode->addChild(dot);
        m_dotsArray->addObject(dot);
    }
}

void BrowseSmartTemplateLayer::onClose(cocos2d::CCObject* sender) {
    cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->unregisterForcePrio(this);
    this->setKeypadEnabled(false);
    this->removeFromParentAndCleanup(true);
}

void BrowseSmartTemplateLayer::updateDots() {
    if (!m_dotsArray) this->createDots();
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto count = m_pages->count();
    for (int i = 0; i < count; i++) {
        if (i < m_dotsArray->count()) {
            auto dot = static_cast<cocos2d::CCSprite*>(m_dotsArray->objectAtIndex(i));
            dot->setPosition(winSize * .5f + cocos2d::CCPoint { (i - (count - 1) * .5f) * 16.f, -125.f });
            dot->setColor(i == m_page ? cocos2d::ccColor3B { 255, 255, 255 } : cocos2d::ccColor3B { 125, 125, 125 });
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

