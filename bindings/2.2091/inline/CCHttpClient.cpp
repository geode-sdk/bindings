#include <Geode/mapping/CCHttpClient.hpp>
#include <Geode/mapping/CCScheduler.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::extension::CCHttpClient::destroyInstance() {
    auto instance = *reinterpret_cast<CCHttpClient**>(geode::base::get() + 0x9f6000);
    CCDirector::sharedDirector()->getScheduler()->unscheduleSelector(schedule_selector(CCHttpClient::dispatchResponseCallbacks), instance);
    instance->release();
}
#endif

