#include <Geode/binding/FLAlertLayer.hpp>

FLAlertLayer* FLAlertLayer::create(char const* title, const std::string& desc, char const* btn) {
    return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0);
}

FLAlertLayer* FLAlertLayer::create(FLAlertLayerProtocol* delegate, char const* title, std::string desc, char const* btn1, char const* btn2) {
    return FLAlertLayer::create(delegate, title, desc, btn1, btn2, 300.0);
}

void FLAlertLayer::rebuildContent() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
FLAlertLayer::FLAlertLayer() {
    m_buttonMenu = nullptr;
    m_controlConnected = -1;
    m_mainLayer = nullptr;
    m_ZOrder = 0;
    m_noElasticity = false;
    m_reverseKeyBack = false;
    m_scene = nullptr;
    m_alertProtocol = nullptr;
    m_scrollingLayer = nullptr;
    m_button2 = nullptr;
    m_button1 = nullptr;
    m_joystickConnected = -1;
    m_containsBorder = 0;
    m_forcePrioRegistered = false;
}
#endif

