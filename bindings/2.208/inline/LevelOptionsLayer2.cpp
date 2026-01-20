#include <Geode/Geode.hpp>

LevelOptionsLayer2::LevelOptionsLayer2() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
LevelOptionsLayer2* LevelOptionsLayer2::create(LevelSettingsObject* object) {
    auto ret = new LevelOptionsLayer2();
    if (ret->init(object)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool LevelOptionsLayer2::init(LevelSettingsObject* object) {
    if (!LevelOptionsLayer::init(object)) return false;
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto titleLabel = cocos2d::CCLabelBMFont::create("Legacy Options", "goldFont.fnt");
    titleLabel->setScale(.7f);
    titleLabel->setPosition(winSize * .5f + cocos2d::CCPoint { 0.f, m_height * .5f - 20.f });
    m_mainLayer->addChild(titleLabel);
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

