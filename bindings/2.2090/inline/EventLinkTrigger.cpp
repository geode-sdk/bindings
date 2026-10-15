#include <Geode/Bindings.hpp>

EventLinkTrigger::EventLinkTrigger() {
    m_resetRemap = false;
    m_extraID = 0;
    m_extraID2 = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
EventLinkTrigger* EventLinkTrigger::create() {
    auto ret = new EventLinkTrigger();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

