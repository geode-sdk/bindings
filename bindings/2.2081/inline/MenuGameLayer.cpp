#include <Geode/Geode.hpp>

MenuGameLayer::MenuGameLayer() {
    m_videoOptionsOpen = false;
    m_deltaCount = 0.f;
    m_isDestroyingPlayer = false;
    m_initCount = 0;
    m_playerObject = nullptr;
    m_backgroundSprite = nullptr;
    m_groundLayer = nullptr;
    m_backgroundWrapPosition = 0.f;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
MenuGameLayer* MenuGameLayer::create() {
    auto ret = new MenuGameLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void MenuGameLayer::ccTouchMoved(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void MenuGameLayer::ccTouchEnded(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void MenuGameLayer::updateColors() {
    m_groundLayer->updateGround01Color(m_groundLayer->m_ground1Sprite->getColor());
    if (m_groundLayer->m_ground2Sprite) {
        m_groundLayer->updateGround02Color(m_groundLayer->m_ground2Sprite->getColor());
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

