#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GJDropDownLayer* GJDropDownLayer::create(const char* title) {
    return create(title, 220.0f, false);
}

GJDropDownLayer* GJDropDownLayer::create(const char* title, float height, bool noBack) {
    auto ret = new GJDropDownLayer();
    if (ret->init(title, height, noBack)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS)
bool GJDropDownLayer::ccTouchBegan(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) { return true; }

void GJDropDownLayer::ccTouchMoved(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void GJDropDownLayer::ccTouchEnded(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void GJDropDownLayer::ccTouchCancelled(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void GJDropDownLayer::customSetup() {}

void GJDropDownLayer::enterAnimFinished() {}

bool GJDropDownLayer::init(char const* title) {
    return init(title, 220.0f, false);
}
#endif

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
GJDropDownLayer::GJDropDownLayer() {
    m_buttonMenu = nullptr;
    m_listLayer = nullptr;
    m_mainLayer = nullptr;
    m_closeOnHide = false;
    m_delegate = nullptr;
    m_fastMenu = false;
}
#endif

