#include <Geode/Bindings.hpp>

SimplePlayer::SimplePlayer() {
    m_firstLayer = nullptr;
    m_secondLayer = nullptr;
    m_birdDome = nullptr;
    m_outlineSprite = nullptr;
    m_detailSprite = nullptr;
    m_robotSprite = nullptr;
    m_spiderSprite = nullptr;
    m_unknown = 0;
    m_hasGlowOutline = false;
    m_iconRequestID = 0;
    m_hasCustomGlowColor = false;
    m_iconLoaded = false;
}

void SimplePlayer::disableGlowOutline() {
    disableCustomGlowColor();
    m_hasGlowOutline = false;
    updateColors();
}

void SimplePlayer::setGlowOutline(cocos2d::ccColor3B color) {
    enableCustomGlowColor(color);
    m_hasGlowOutline = true;
    updateColors();
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void SimplePlayer::hideAll() {
    m_firstLayer->setVisible(false);
    m_secondLayer->setVisible(false);
    if (m_birdDome) m_birdDome->setVisible(false);
    if (m_outlineSprite) m_outlineSprite->setVisible(false);
    if (m_detailSprite) m_detailSprite->setVisible(false);
    if (m_robotSprite) m_robotSprite->setVisible(false);
    if (m_spiderSprite) m_spiderSprite->setVisible(false);
}

void SimplePlayer::setColors(cocos2d::ccColor3B const& color1, cocos2d::ccColor3B const& color2) {
    m_firstLayer->setColor(color1);
    m_secondLayer->setColor(color2);
    updateColors();
}
#endif

#if defined(GEODE_IS_WINDOWS)
void SimplePlayer::createRobotSprite(int frame) {
    if (m_robotSprite) return;
    auto robotSprite = GJRobotSprite::create(frame);
    m_robotSprite = robotSprite;
    addChild(robotSprite);
    m_robotSprite->setVisible(false);
}

void SimplePlayer::disableCustomGlowColor() {
    m_hasCustomGlowColor = false;
}

void SimplePlayer::enableCustomGlowColor(cocos2d::ccColor3B const& color) {
    m_hasCustomGlowColor = true;
    m_glowColor = color;
}

void SimplePlayer::hideSecondary() {
    m_secondLayer->setVisible(false);
    m_birdDome->setVisible(false);
    m_detailSprite->setVisible(false);
    m_outlineSprite->setVisible(false);
    if (m_robotSprite) {
        m_robotSprite->hideSecondary();
        m_robotSprite->hideGlow();
    }
    if (m_spiderSprite) {
        m_spiderSprite->hideSecondary();
        m_spiderSprite->hideGlow();
    }
}

void SimplePlayer::setSecondColor(cocos2d::ccColor3B const& color) {
    m_secondLayer->setColor(color);
    updateColors();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

