#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_WINDOWS)
CreateGuidelinesLayer::CreateGuidelinesLayer() {
    m_delegate = nullptr;
    m_elapsed = 0.f;
    m_recording = false;
    m_unk2b5 = false;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
CreateGuidelinesLayer* CreateGuidelinesLayer::create(CustomSongDelegate* delegate, AudioGuidelinesType type) {
    auto ret = new CreateGuidelinesLayer();
    if (ret->init(delegate, type)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void CreateGuidelinesLayer::ccTouchMoved(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void CreateGuidelinesLayer::keyUp(cocos2d::enumKeyCodes key, double timestamp) {}

void CreateGuidelinesLayer::doClearGuidelines() {
    m_infoLabel->setString("Guidelines cleared.");
    if (m_delegate) {
        auto settings = m_delegate->getLevelSettings();
        settings->m_guidelineString = "";
        settings->m_guidelinesUpdated = true;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

