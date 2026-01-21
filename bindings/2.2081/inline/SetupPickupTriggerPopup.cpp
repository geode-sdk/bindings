#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void SetupPickupTriggerPopup::updateState() {
    auto pickupTriggerMode = this->getValue(88);
    this->toggleGroup(1, pickupTriggerMode == 0.0f);
    this->toggleGroup(2, pickupTriggerMode != 0.0f);
}
#endif

