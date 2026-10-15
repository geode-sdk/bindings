#include <Geode/Bindings.hpp>

LoadingCircle::LoadingCircle() {
    m_sprite = nullptr;
    m_parentLayer = nullptr;
    m_fade = false;
}

bool LoadingCircle::ccTouchBegan(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) { return true; }

void LoadingCircle::ccTouchMoved(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void LoadingCircle::ccTouchEnded(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void LoadingCircle::ccTouchCancelled(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void LoadingCircle::setFade(bool fade) {
    m_fade = fade;
}

void LoadingCircle::setParentLayer(cocos2d::CCLayer* layer) {
    m_parentLayer = layer;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

