#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void UploadActionPopup::closePopup() {
    this->setKeypadEnabled(false);
    this->removeFromParentAndCleanup(true);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

