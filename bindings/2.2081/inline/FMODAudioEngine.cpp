#include <Geode/Bindings.hpp>

FMODAudioEngine* FMODAudioEngine::get() {
    return FMODAudioEngine::sharedEngine();
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
FMOD::Channel* FMODAudioEngine::channelForUniqueID(int id) {
    return this->channelForChannelID(this->channelIDForUniqueID(id));
}

int FMODAudioEngine::getNextChannelID() {
    return (*reinterpret_cast<int*>(geode::base::get() + GEODE_WINDOWS(0x6ba0e4) GEODE_IOS(0x84be08)))++;
}

gd::map<std::pair<int, int>, FMODSoundTween>& FMODAudioEngine::getTweenContainer(AudioTargetType type) {
    switch (type) {
        case AudioTargetType::SFXGroup:
            return m_audioState.m_tweensForEffectGroups;
        case AudioTargetType::MusicChannel:
            return m_audioState.m_tweensForMusicChannels;
        default:
            return m_audioState.m_tweensForEffectChannels;
    }
}

bool FMODAudioEngine::isChannelStopping(int channel) {
    return m_stoppedChannels.count(channel) != 0;
}

bool FMODAudioEngine::isEffectLoaded(gd::string path) {
    return m_fmodSounds.count(path) != 0;
}

bool FMODAudioEngine::isSoundReady(FMOD::Sound* sound) {
    FMOD_OPENSTATE state;
    m_lastResult = sound->getOpenState(&state, nullptr, nullptr, nullptr);
    return state == FMOD_OPENSTATE_READY || state == FMOD_OPENSTATE_ERROR || state == FMOD_OPENSTATE_PLAYING;
}

void FMODAudioEngine::pauseEffect(unsigned int effect) {}

void FMODAudioEngine::pauseMusic(int musicChannel) {
    auto* channel = this->getActiveMusicChannel(musicChannel);
    if (channel)
        channel->setPaused(true);
}

void FMODAudioEngine::printResult(FMOD_RESULT result) {}

void FMODAudioEngine::resumeEffect(unsigned int effect) {}

void FMODAudioEngine::stopChannelTween(int id, AudioTargetType target, AudioModType mod) {
    this->getTweenContainer(target).erase({ id, (int)mod });
}

void FMODAudioEngine::stopChannelTweens(int id, AudioTargetType target) {
    this->stopChannelTween(id, target, AudioModType::Volume);
    this->stopChannelTween(id, target, AudioModType::Pitch);
}

void FMODAudioEngine::testFunction(int unknown) {}

void FMODAudioEngine::unloadEffect(gd::string path) {}
#endif

#if defined(GEODE_IS_WINDOWS)
FMODAudioEngine::~FMODAudioEngine() {
    m_system->close();
    if (m_system) m_system->release();
}

FMODAudioEngine* FMODAudioEngine::sharedEngine() {
    auto** instancePtr = reinterpret_cast<FMODAudioEngine**>(geode::base::get() + 0x6c2e88);
    if (!*instancePtr) {
        *instancePtr = new FMODAudioEngine();
        (*instancePtr)->init();
    }
    return *instancePtr;
}

void FMODAudioEngine::activateQueuedMusic(int channel) {
    if (m_audioState.m_queuedMusicForChannels2.count(channel) != 0) {
        this->triggerQueuedMusic(m_audioState.m_queuedMusicForChannels2[channel]);
        m_audioState.m_queuedMusicForChannels2.erase(channel);
    }
    else if (m_audioState.m_queuedMusicForChannels1.count(channel) != 0) {
        m_audioState.m_queuedMusicForChannels1[channel].m_noPrepare = true;
    }
}

void FMODAudioEngine::channelLinkSound(int id, FMODSound* sound) {
    sound->m_playCount++;
    sound->m_playIndex = (*reinterpret_cast<int*>(geode::base::get() + 0x6c2e74))++;
    m_channelIDToSoundPath[id] = sound->m_filePath;
}

int FMODAudioEngine::countActiveEffects() {
    return m_channelIDToChannel.size() - countActiveMusic();
}

int FMODAudioEngine::countActiveMusic() {
    int count = 0;
    for (auto& music : m_fmodMusic) {
        if (music.second.m_channelID > 0) {
            ++count;
        }
    }
    return count;
}

void FMODAudioEngine::disableMetering() {
    this->m_metering = false;
}

void FMODAudioEngine::enableMetering() {
    this->m_metering = true;
    this->m_pulse1 = 0.1f;
    this->m_pulse2 = 0.1f;
    this->m_pulse3 = 0.0f;
}

void FMODAudioEngine::fadeInBackgroundMusic(float value) {
    m_backgroundMusicChannel->setVolume(value);
    m_backgroundMusicFade = value;
    m_musicFadeStart = -1.f;
}

gd::string FMODAudioEngine::getActiveMusic(int id) {
    if (m_fmodMusic.count(id) == 0) return "";
    return m_fmodMusic[id].m_filePath;
}

FMOD::Channel* FMODAudioEngine::getActiveMusicChannel(int musicID) {
    if (m_fmodMusic.count(musicID) == 0) return nullptr;
    return this->channelForChannelID(m_fmodMusic[musicID].m_channelID);
}

float FMODAudioEngine::getBackgroundMusicVolume() {
    return m_musicVolume;
}

float FMODAudioEngine::getEffectsVolume() {
    return m_sfxVolume;
}

float FMODAudioEngine::getMeteringValue() {
    return m_pulse1;
}

int FMODAudioEngine::getMusicChannelID(int musicID) {
    if (m_fmodMusic.count(musicID) == 0) return 0;
    return m_fmodMusic[musicID].m_channelID;
}

float FMODAudioEngine::getMusicTime(int channel) {
    return this->getMusicTimeMS(channel) / 1000.f;
}

bool FMODAudioEngine::isAnyPersistentPlaying() {
    for (auto& [id, music] : m_fmodMusic) {
        if (music.m_dontReset) return true;
    }
    return false;
}

void FMODAudioEngine::loadMusic(gd::string path) {
    this->loadMusic(path, 1.f, 0.f, 1.f, false, 0, 0, false);
}

void FMODAudioEngine::pauseAllAudio() {
    if (m_allAudioPaused) return;
    m_allAudioPaused = true;
    m_backgroundMusicChannel->setPaused(true);
    m_globalChannel->setPaused(true);
}

void FMODAudioEngine::pauseAllEffects() {
    m_globalChannel->setPaused(true);
}

void FMODAudioEngine::pauseAllMusic(bool force) {
    for (auto& [id, music] : m_fmodMusic) {
        if (force || !music.m_dontReset) {
            if (auto ch = this->channelForChannelID(music.m_channelID))
                ch->setPaused(true);
        }
    }
}

int FMODAudioEngine::playEffectAsync(gd::string path) {
    return this->playEffectAdvanced(path, 1.f, 0.f, 1.f, 0.f, false, false, 0, 0, 0, 0, false, 0, false, true, 0, 0, 0.f, 0);
}

void FMODAudioEngine::releaseRemovedSounds() {
    for (int i = 0; i < m_removedSounds.size();) {
        auto sound = m_removedSounds[i];
        FMOD_OPENSTATE state;
        m_lastResult = sound->getOpenState(&state, nullptr, nullptr, nullptr);
        if (state == FMOD_OPENSTATE_READY || state == FMOD_OPENSTATE_ERROR) {
            sound->release();
            m_removedSounds.erase(m_removedSounds.begin() + i);
        }
        else i++;
    }
}

void FMODAudioEngine::resumeAllAudio() {
    if (!m_allAudioPaused) return;
    m_allAudioPaused = false;
    m_backgroundMusicChannel->setPaused(false);
    m_globalChannel->setPaused(false);
}

void FMODAudioEngine::resumeAllEffects() {
    m_globalChannel->setPaused(false);
}

void FMODAudioEngine::resumeAudio() {
    this->start();
}

void FMODAudioEngine::resumeMusic(int musicChannel) {
    auto* channel = this->getActiveMusicChannel(musicChannel);
    if (channel)
        channel->setPaused(false);
}

void FMODAudioEngine::setBackgroundMusicVolume(float volume) {
    m_musicVolume = volume;
    m_musicFadeStart = 0.f;
    if (m_backgroundMusicChannel) m_backgroundMusicChannel->setVolume(volume);
}

void FMODAudioEngine::setEffectsVolume(float volume) {
    m_sfxVolume = volume;
    if (m_globalChannel) m_globalChannel->setVolume(volume);
}

void FMODAudioEngine::stop() {
    if (m_stopped) return;
    m_stopped = true;
    m_system->mixerSuspend();
    m_system->update();
    this->pauseSchedulerAndActions();
}

void FMODAudioEngine::stopChannel(int id) {
    this->stopChannel(id, AudioTargetType::SFXChannel, false, 0.f);
}

void FMODAudioEngine::stopMusic(int id) {
    this->stopAndRemoveMusic(id);
}

void FMODAudioEngine::stopMusicNotInSet(gd::unordered_set<int>& musicIDs) {
    std::unordered_set<int> totalIDs;
    for (auto& [id, _] : m_fmodMusic) {
        totalIDs.insert(id);
    }
    for (auto& id : totalIDs) {
        if (musicIDs.count(id) == 0) {
            this->stopMusic(id);
        }
    }
}

void FMODAudioEngine::updateBackgroundFade() {
    if (m_musicFadeStart == 0.f) return;
    if (m_musicFadeStart < 0.f) m_musicFadeStart = m_audioState.m_elapsed;
    auto backgroundFade = m_backgroundMusicFade;
    auto fade = m_audioState.m_elapsed - m_musicFadeStart;
    if (backgroundFade <= 0.f || fade / backgroundFade > 1.f) backgroundFade = 1.f;
    else if (fade / backgroundFade >= 0.f) backgroundFade = fade / backgroundFade;
    else backgroundFade = 0.f;
    backgroundFade *= m_musicVolume;
    m_backgroundMusicChannel->setVolume(backgroundFade);
    if (m_backgroundMusicFade <= fade) m_musicFadeStart = 0.f;
}

void FMODAudioEngine::updateMetering() {
    FMOD_DSP_METERING_INFO info{};
    m_mainDSP->getMeteringInfo(nullptr, &info);
    auto peak = info.numchannels == 2 ? (info.peaklevel[0] + info.peaklevel[1]) / 2.f : info.peaklevel[0];
    auto volume = m_musicVolume;
    if (volume > 0.f) peak /= volume;
    peak += .1f;
    m_pulse1 = peak;
    auto counter = m_pulseCounter;
    if (counter < 3 || peak < m_pulse2 * 1.1f || (peak < m_pulse3 * .95f && peak > m_pulse3 * .2f)) {
        peak = m_pulse2 * .93f;
    }
    else {
        m_pulse3 = peak;
        peak *= 1.1f;
        counter = 0;
    }
    m_pulse1 = peak;
    if (peak <= .1f) m_pulse3 = 0.f;
    m_pulse2 = peak;
    m_pulseCounter = counter + 1;
}

FMOD_OPENSTATE FMODAudioEngine::waitUntilSoundReady(FMOD::Sound* sound) {
    if (!sound) return FMOD_OPENSTATE_ERROR;
    FMOD_OPENSTATE state;
    m_lastResult = sound->getOpenState(&state, nullptr, nullptr, nullptr);
    while (state != FMOD_OPENSTATE_READY && state != FMOD_OPENSTATE_ERROR && state != FMOD_OPENSTATE_PLAYING) {
        m_lastResult = sound->getOpenState(&state, nullptr, nullptr, nullptr);
    }
    return state;
}
#endif

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_ANDROID)
FMODAudioEngine::FMODAudioEngine() {
    m_musicVolume = 1.f;
    m_sfxVolume = 1.f;
    m_backgroundMusicFade = .0f;
    m_musicFadeStart = .0f;
    m_pulse1 = .0f;
    m_pulse2 = .0f;
    m_pulse3 = .0f;
    m_pulseCounter = 0;
    m_metering = false;
    m_backgroundMusicChannel = nullptr;
    m_system = nullptr;
    m_mainDSP = nullptr;
    m_globalChannelDSP = nullptr;
    m_globalChannel = nullptr;
    m_reverbChannel = nullptr;
    m_lastResult = FMOD_RESULT::FMOD_OK;
    m_sampleRate = 0;
    m_reducedQuality = false;
    m_allAudioPaused = false;
    m_musicOffset = 0;
    m_stopped = false;
    m_reverbPreset = FMODReverbPreset::Generic;
    m_showAudioVisualizer = false;
    m_musicVisualizerTime = .0f;
    m_musicVisualizerPeak = .0f;
    m_musicVisualizerVolume = .0f;
    m_sfxVisualizerTime = .0f;
    m_sfxVisualizerPeak = .0f;
    m_sfxVisualizerVolume = .0f;
}
#endif

