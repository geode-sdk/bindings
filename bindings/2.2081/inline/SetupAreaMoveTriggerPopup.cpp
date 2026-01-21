#include <Geode/Geode.hpp>

SetupAreaMoveTriggerPopup::SetupAreaMoveTriggerPopup() {
    m_modeButtons = nullptr;
    m_targetButtons = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void SetupAreaMoveTriggerPopup::getModeValues(int mode, int& direction, bool& inbound, bool& twoDirections) {
    if (mode > 1 && mode < 6) direction = 1;
    else if (mode < 2) direction = 0;
    else direction = 2;
    inbound = (mode == 1 || mode == 3 || mode == 5 || mode == 7 || mode == 8);
    twoDirections = (mode == 2 || mode == 3 || mode == 6 || mode == 7);
}
#endif

#if defined(GEODE_IS_WINDOWS)
SetupAreaMoveTriggerPopup* SetupAreaMoveTriggerPopup::create(EnterEffectObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupAreaMoveTriggerPopup();
    if (ret->init(object, objects)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

