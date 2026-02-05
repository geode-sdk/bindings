#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool SFXTriggerGameObject::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
SFXTriggerGameObject* SFXTriggerGameObject::create(char const* frame) {
    auto ret = new SFXTriggerGameObject();
    if (ret->init(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

int SFXTriggerGameObject::getSFXRefID() {
    return m_sfxUniqueID > 0 ? m_sfxUniqueID : m_uniqueID;
}

int SFXTriggerGameObject::getUniqueSFXID() {
    return m_unique ? this->getSFXRefID() : 0;
}
#endif

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
SFXTriggerGameObject::SFXTriggerGameObject() {
    m_soundID = 0;
    m_pitch = 0.f;
    m_speed = 0;
    m_pitchIndex = 0;
    m_fadeIn = 0;
    m_end = 0;
    m_fadeOut = 0;
    m_reverb = false;
    m_fastFourierTransform = false;
    m_loop = false;
    m_stopLoop = false;
    m_dontReset = false;
    m_unique = false;
    m_override = false;
    m_sfxUniqueID = 0;
    m_minDistNear = 0;
    m_minDistMedium = 0;
    m_minDistFar = 0;
    m_proximityMode = 0;
    m_cameraDistance = false;
    m_preload = false;
    m_ignoreVolumeTest = false;
    m_minInterval = 0.f;
    m_sfxGroup = 0;
    m_stop = false;
    m_changeSpeed = false;
    m_changeVolume = false;
    m_groupID = 0;
    m_unk788 = 0;
    m_reverbPreset = FMODReverbPreset::Generic;
    m_reverbEnabled = false;
    m_soundDuration = 0.f;
    m_applyDisabled = false;
    m_speedVariance = 0;
    m_pitchVariance = 0;
    m_volumeVariance = 0.f;
    m_pitchSteps = false;
    m_volume = 1.f;
    m_start = 0;
    m_volumeNear = 1.f;
    m_volumeMedium = .5f;
    m_volumeFar = 0.f;
}
#endif

