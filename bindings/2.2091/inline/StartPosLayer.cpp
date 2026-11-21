#include <Geode/binding/StartPosLayer.hpp>
#include <Geode/binding/StartPosObject.hpp>

StartPosLayer::StartPosLayer() {
    m_startPosObject = nullptr;
    m_startMode = 0;
    m_startSpeed = Speed::Normal;
    m_modeButtons = nullptr;
    m_speedButtons = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
StartPosLayer::~StartPosLayer() {
    CC_SAFE_RELEASE(m_startPosObject);
    CC_SAFE_RELEASE(m_modeButtons);
    CC_SAFE_RELEASE(m_speedButtons);
}

StartPosLayer* StartPosLayer::create(StartPosObject* startPos) {
    auto ret = new StartPosLayer();
    if (ret->init(startPos)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif
