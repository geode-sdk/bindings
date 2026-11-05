#include <Geode/binding/GameLevelOptionsLayer.hpp>
#include <Geode/binding/GJGameLevel.hpp>
#include <Geode/binding/InfoAlertButton.hpp>
#include <Geode/utils/cocos.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool GameLevelOptionsLayer::init(GJGameLevel* level) {
    m_gap = 45.f;
    m_maxLabelScale = .4f;
    if (level) {
        m_level = level;
        level->retain();
    }
    if (!GJOptionsLayer::init(2, 280.f)) return false;
    this->preSetup();
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto alert = InfoAlertButton::create(
        "Level Options",
        "Adjust visual and gameplay settings for this level. These changes <cl>only</c> affect how <cg>you</c> experience the level and <cr>do not</c> impact <cy>other players</c>.",
        0.8f
    );
    m_buttonMenu->addChild(alert);
    alert->setPosition(m_buttonMenu->convertToNodeSpace({ m_gap * .5f + winSize.width * .5f - 18.f, m_gap * .5f + winSize.height * .5f - 18.f }));
    this->postSetup();
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

