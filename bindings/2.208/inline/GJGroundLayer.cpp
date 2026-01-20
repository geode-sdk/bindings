#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GJGroundLayer::deactivateGround() {
    this->stopAllActions();
    m_showGround = false;
}

float GJGroundLayer::getGroundY() {
    return 0.f;
}

void GJGroundLayer::hideShadows() {
    if (auto leftShadow = this->getChildByTag(0)) leftShadow->setVisible(false);
    if (auto rightShadow = this->getChildByTag(1)) rightShadow->setVisible(false);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void GJGroundLayer::draw() {}

void GJGroundLayer::positionGround(float y) {
    this->setPosition(0.f, y);
}

void GJGroundLayer::toggleVisible01(bool visible) {
    if (m_showGround1 == visible) return;
    m_showGround1 = visible;
    this->setVisible(visible && m_showGround2);
}

void GJGroundLayer::toggleVisible02(bool visible) {
    if (m_showGround2 == visible) return;
    m_showGround2 = visible;
    this->setVisible(visible && m_showGround1);
}

void GJGroundLayer::updateGround01Color(cocos2d::ccColor3B color) {
    if (auto children = m_ground1Sprite->getChildren()) {
        for (int i = 0; i < children->count(); i++) {
            static_cast<cocos2d::CCSprite*>(children->objectAtIndex(i))->setColor(color);
        }
    }
}

void GJGroundLayer::updateGround02Color(cocos2d::ccColor3B color) {
    if (!m_ground2Sprite) return;
    if (auto children = m_ground2Sprite->getChildren()) {
        for (int i = 0; i < children->count(); i++) {
            static_cast<cocos2d::CCSprite*>(children->objectAtIndex(i))->setColor(color);
        }
    }
}

void GJGroundLayer::updateGroundPos(cocos2d::CCPoint pos) {
    m_ground1Sprite->setPosition(pos);
    if (m_ground2Sprite) m_ground2Sprite->setPosition(pos);
}

void GJGroundLayer::updateGroundWidth(bool useThis) {
    auto parent = this->getParent();
    if (!parent) return;
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto scale = useThis ? this->getScaleX() : parent->getScale();
    m_groundWidth = winSize.width / scale + 10.f;
    int count = ceilf(m_groundWidth / m_textureWidth) + 1.f;
    if (m_cameraRotated) count++;
    this->loadGroundSprites(count, true);
    this->loadGroundSprites(count, false);
    m_lineSprite->setScaleX(m_lineType > 1 ? (((winSize.width + 10.f) / scale) / m_lineSprite->getTextureRect().size.width) : (1.f / scale));
    m_lineSprite->setPosition({ m_groundWidth * .5f - 5.f, m_lineSprite->getPosition().y } );
}

void GJGroundLayer::updateLineBlend(bool blend) {
    if (m_blendLine == blend) return;
    m_blendLine = blend;
    if (blend) m_lineSprite->setBlendFunc({ GL_SRC_ALPHA, GL_ONE });
    else m_lineSprite->setBlendFunc({ GL_ONE, GL_ONE_MINUS_SRC_ALPHA });
}
#endif

#if defined(GEODE_IS_IOS)
#endif

