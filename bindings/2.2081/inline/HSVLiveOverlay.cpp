#include <Geode/Geode.hpp>

HSVLiveOverlay::HSVLiveOverlay() {
    m_object = nullptr;
    m_objects = nullptr;
    m_controls = nullptr;
    m_unkArray = nullptr;
    m_delegate = nullptr;
    m_activeTab = -1;
    m_widget = nullptr;
    m_unkBool1 = false;
    m_unkBool2 = false;
    m_unkBool3 = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void HSVLiveOverlay::toggleControls(bool visible) {
    for (int i = 0; i < m_controls->count(); i++) {
        static_cast<cocos2d::CCNode*>(m_controls->objectAtIndex(i))->setVisible(visible);
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
HSVLiveOverlay::~HSVLiveOverlay() {
    CCNode::removeAllChildrenWithCleanup(true);
    CC_SAFE_RELEASE(m_unkArray);
    CC_SAFE_RELEASE(m_controls);
    CC_SAFE_RELEASE(m_object);
    CC_SAFE_RELEASE(m_objects);
}

HSVLiveOverlay* HSVLiveOverlay::create(GameObject* object, cocos2d::CCArray* objects) {
    auto ret = new HSVLiveOverlay();
    if (ret->init(object, objects)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

