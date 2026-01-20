
#include <Geode/binding/SetupEventLinkPopup.hpp>
#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupEventLinkPopup::updateEventIDs(gd::set<int>& eventIDs) {
    auto objects = m_gameObject ? cocos2d::CCArray::createWithObject(m_gameObject) : m_gameObjects;
    CCObject* obj;
    CCARRAY_FOREACH(objects, obj) {
        static_cast<EventLinkTrigger*>(obj)->m_eventIDs = eventIDs;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

