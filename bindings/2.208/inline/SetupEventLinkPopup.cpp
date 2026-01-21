#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupEventLinkPopup::updateEventIDs(gd::set<int>& eventIDs) {
    auto objects = m_gameObject ? cocos2d::CCArray::createWithObject(m_gameObject) : m_gameObjects;
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(objects)) {
        static_cast<EventLinkTrigger*>(obj)->m_eventIDs = eventIDs;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

