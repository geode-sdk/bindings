#include <Geode/Geode.hpp>

NCSInfoLayer::NCSInfoLayer() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
NCSInfoLayer* NCSInfoLayer::create(CustomSongLayer* layer) {
    auto ret = new NCSInfoLayer();
    if (ret->init(layer)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
void NCSInfoLayer::onClose(cocos2d::CCObject* sender) {
    this->setKeypadEnabled(false);
    this->removeFromParentAndCleanup(true);
}
#endif

