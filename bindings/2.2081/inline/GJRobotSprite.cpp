#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void GJRobotSprite::hideGlow() {
    m_glowSprite->setVisible(false);
}

bool GJRobotSprite::init(int frame) {
    return GJRobotSprite::init(frame, "Robot");
}

void GJRobotSprite::showGlow() {
    m_glowSprite->setVisible(true);
}

void GJRobotSprite::updateColor01(cocos2d::ccColor3B color) {
    m_color = color;
    this->updateColors();
}

void GJRobotSprite::updateColor02(cocos2d::ccColor3B color) {
    m_secondColor = color;
    this->updateColors();
}

void GJRobotSprite::updateGlowColor(cocos2d::ccColor3B color, bool simple) {
    auto children = m_glowSprite->getChildren();
    for (int i = 0; i < children->count(); i++) {
        static_cast<cocos2d::CCSprite*>(children->objectAtIndex(i))->setColor(color);
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

