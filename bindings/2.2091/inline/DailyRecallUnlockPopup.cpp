#include <Geode/binding/DailyRecallUnlockPopup.hpp>

#if defined(GEODE_IS_WINDOWS)
DailyRecallUnlockPopup::DailyRecallUnlockPopup() {}

DailyRecallUnlockPopup* DailyRecallUnlockPopup::create(FLAlertLayerProtocol* protocol, GJGameLevel* level) {
    auto ret = new DailyRecallUnlockPopup();
    if (ret->init(protocol, level)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif