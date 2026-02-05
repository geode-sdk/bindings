#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void GJPathSprite::addRankLabel(int path) {
    auto rankLabel = cocos2d::CCLabelBMFont::create(GameToolbox::intToString(path).c_str(), "bigFont.fnt");
    rankLabel->setScale(0.55f);
    this->addChild(rankLabel, 1);
    rankLabel->setPosition(this->convertToNodeSpace({ 0.f, 0.f }) + cocos2d::CCPoint { 0.f, 1.f });
}

bool GJPathSprite::init(int path) {
    if (!cocos2d::CCSprite::initWithSpriteFrameName(cocos2d::CCString::createWithFormat("pathIcon_%02d_001.png", path)->getCString())) return false;
    m_pathNumber = path;
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

