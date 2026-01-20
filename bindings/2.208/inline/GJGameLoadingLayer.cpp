#include <Geode/Geode.hpp>

GJGameLoadingLayer::GJGameLoadingLayer() {
    m_level = nullptr;
    m_editor = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJGameLoadingLayer* GJGameLoadingLayer::create(GJGameLevel* level, bool editor) {
    auto ret = new GJGameLoadingLayer();
    if (ret->init(level, editor)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void GJGameLoadingLayer::gameLayerDidUnload() {
    this->runAction(cocos2d::CCSequence::create(
        cocos2d::CCDelayTime::create(.01f),
        cocos2d::CCCallFunc::create(this, callfunc_selector(GJGameLoadingLayer::loadLevel)),
        nullptr
    ));
}

bool GJGameLoadingLayer::init(GJGameLevel* level, bool editor) {
    if (!cocos2d::CCLayer::init()) return false;

    if (level) {
        m_level = level;
        level->retain();
    }
    m_editor = editor;

    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto loadingLabel = cocos2d::CCLabelBMFont::create("Loading...", "bigFont.fnt");
    loadingLabel->setScale(.7f);
    this->addChild(loadingLabel, 1);
    loadingLabel->setAnchorPoint({ 1.f, 0.f });
    loadingLabel->setPosition({ winSize.width - 20.f, 20.f });

    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

