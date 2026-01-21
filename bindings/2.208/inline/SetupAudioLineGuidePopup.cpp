#include <Geode/Geode.hpp>

SetupAudioLineGuidePopup::SetupAudioLineGuidePopup() {
    m_speedSprite = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetupAudioLineGuidePopup* SetupAudioLineGuidePopup::create(AudioLineGuideGameObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetupAudioLineGuidePopup();
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

