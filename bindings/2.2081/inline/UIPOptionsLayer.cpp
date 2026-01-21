#include <Geode/Geode.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS) || defined(GEODE_IS_ANDROID)
UIPOptionsLayer::UIPOptionsLayer() {
    m_touchID = -1;
    m_practiceNode = nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS)
UIPOptionsLayer* UIPOptionsLayer::create() {
    auto ret = new UIPOptionsLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCRect UIPOptionsLayer::getTouchRect() {
    return { m_practiceNode->getPosition() - cocos2d::CCPoint { 70.0f, 25.0f }, { 140.0f, 50.0f } };
}
#endif

#if defined(GEODE_IS_IOS)
#endif

