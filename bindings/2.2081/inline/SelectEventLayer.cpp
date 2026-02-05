#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
SelectEventLayer::SelectEventLayer() {
    m_eventLinkPopup = nullptr;
    m_eventsChanged = false;
    m_unk3b4 = 0;
    m_toggleCount = 0;
    m_maxPage = 0;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SelectEventLayer::~SelectEventLayer() {
    CCNode::removeAllChildrenWithCleanup(true);
}

SelectEventLayer* SelectEventLayer::create(SetupEventLinkPopup* popup, gd::set<int>& eventIDs) {
    auto ret = new SelectEventLayer();
    if (ret->init(popup, eventIDs)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCPoint SelectEventLayer::nextPosition() {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto count = (m_toggleCount - 1) % 12;
    cocos2d::CCPoint pos = winSize * .5f + cocos2d::CCPoint { count < 6 ? -140.f : 40.f, 90.f };
    pos.y -= (count % 6) * 34;
    return pos;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

