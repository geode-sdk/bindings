#include <Geode/Geode.hpp>

GJMGLayer::GJMGLayer() {
    m_ground1Sprite = nullptr;
    m_ground2Sprite = nullptr;
    m_textureWidth = 0.f;
    m_unk1b0 = nullptr;
    m_showGround = false;
    m_groundWidth = 0.f;
    m_showGround1 = true;
    m_showGround2 = true;
    m_unk1c4 = 0.f;
    m_cameraRotated = false;
    m_blendMG1 = false;
    m_blendMG2 = false;
    m_mg1BatchNode = nullptr;
    m_mg2BatchNode = nullptr;
    m_groundScale = 0.f;
    m_ground2Offset = 0.f;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
float GJMGLayer::defaultYOffsetForBG2(int index) {
    switch (index) {
        case 1: return 25.f;
        case 2: case 3: return 30.f;
        default: return 0.f;
    }
}

void GJMGLayer::deactivateGround() {
    this->stopAllActions();
    m_showGround = false;
}

void GJMGLayer::toggleVisible01(bool visible) {
    if (m_showGround1 == visible) return;
    m_showGround1 = visible;
    this->setVisible(visible && m_showGround2);
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJMGLayer* GJMGLayer::create(int index) {
    auto ret = new GJMGLayer();
    if (ret->init(index)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void GJMGLayer::draw() {}

float GJMGLayer::scaleGround(float scale) {
    m_groundScale = scale;
    this->setScaleX(scale);
    if (this->getScaleY() < 0.f) this->setScaleY(-scale);
    else this->setScaleY(scale);
    auto groundWidth = m_groundWidth;
    this->updateGroundWidth(true);
    return m_groundWidth - groundWidth;
}

void GJMGLayer::toggleVisible02(bool visible) {
    if (m_showGround2 == visible) return;
    m_showGround2 = visible;
    this->setVisible(visible && m_showGround1);
}

void GJMGLayer::updateGroundColor(cocos2d::ccColor3B color, bool ground1) {
    auto groundSprite = ground1 ? m_ground1Sprite : m_ground2Sprite;
    if (!groundSprite) return;
    if (auto children = groundSprite->getChildren()) {
        for (int i = 0; i < children->count(); i++) {
            static_cast<cocos2d::CCSprite*>(children->objectAtIndex(i))->setColor(color);
        }
    }
}

void GJMGLayer::updateGroundOpacity(unsigned char opacity, bool ground1) {
    auto groundSprite = ground1 ? m_ground1Sprite : m_ground2Sprite;
    if (!groundSprite) return;
    if (auto children = groundSprite->getChildren()) {
        for (int i = 0; i < children->count(); i++) {
            static_cast<cocos2d::CCSprite*>(children->objectAtIndex(i))->setOpacity(opacity);
        }
    }
}

void GJMGLayer::updateGroundPos(cocos2d::CCPoint pos) {
    m_ground1Sprite->setPosition(pos);
    if (m_ground2Sprite) m_ground2Sprite->setPosition(pos);
}

void GJMGLayer::updateGroundWidth(bool useThis) {
    auto parent = this->getParent();
    if (!parent) return;
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto scale = useThis ? this->getScaleX() : parent->getScale();
    m_groundWidth = winSize.width / scale + 10.f;
    int count = ceilf(m_groundWidth / m_textureWidth) + 1.f;
    if (m_cameraRotated) count++;
    this->loadGroundSprites(count, true);
    this->loadGroundSprites(count, false);
}

void GJMGLayer::updateMG01Blend(bool blend) {
    if (m_blendMG1 == blend) return;
    m_blendMG1 = blend;
    if (blend) m_mg1BatchNode->setBlendFunc({ GL_SRC_ALPHA, GL_ONE });
    else m_mg1BatchNode->setBlendFunc({ GL_ONE, GL_ONE_MINUS_SRC_ALPHA });
}

void GJMGLayer::updateMG02Blend(bool blend) {
    if (m_blendMG2 == blend) return;
    m_blendMG2 = blend;
    if (blend) m_mg2BatchNode->setBlendFunc({ GL_SRC_ALPHA, GL_ONE });
    else m_mg2BatchNode->setBlendFunc({ GL_ONE, GL_ONE_MINUS_SRC_ALPHA });
}
#endif

#if defined(GEODE_IS_IOS)
#endif

