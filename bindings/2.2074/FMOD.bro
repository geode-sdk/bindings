[[link(win, android, mac)]]
class FMOD::SoundGroup {
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT getNumSounds(int*);
    FMOD_RESULT getMaxAudible(int*);
    FMOD_RESULT getNumPlaying(int*);
    FMOD_RESULT setMaxAudible(int);
    FMOD_RESULT getSystemObject(FMOD::System**);
    FMOD_RESULT getMuteFadeSpeed(float*);
    FMOD_RESULT setMuteFadeSpeed(float);
    FMOD_RESULT getMaxAudibleBehavior(FMOD_SOUNDGROUP_BEHAVIOR*);
    FMOD_RESULT setMaxAudibleBehavior(FMOD_SOUNDGROUP_BEHAVIOR);
    FMOD_RESULT stop();
    FMOD_RESULT getName(char*, int);
    FMOD_RESULT release();
    FMOD_RESULT getSound(int, FMOD::Sound**);
    FMOD_RESULT getVolume(float*);
    FMOD_RESULT setVolume(float);
}

[[link(win, android, mac)]]
class FMOD {
    FMOD_RESULT getGlobals(FMOD::Global**);
}

[[link(win, android, mac)]]
class FMOD::ChannelGroup {
    FMOD_RESULT getChannel(int, FMOD::Channel**);
    FMOD_RESULT getNumGroups(int*);
    FMOD_RESULT getNumChannels(int*);
    FMOD_RESULT getParentGroup(FMOD::ChannelGroup**);
    FMOD_RESULT getName(char*, int);
    FMOD_RESULT release();
    FMOD_RESULT addGroup(FMOD::ChannelGroup*, bool, FMOD::DSPConnection**);
    FMOD_RESULT getGroup(int, FMOD::ChannelGroup**);
}

[[link(win, android, mac)]]
class FMOD::DSPConnection {
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT getMixMatrix(float*, int*, int*, int);
    FMOD_RESULT setMixMatrix(float*, int, int, int);
    FMOD_RESULT getMix(float*);
    FMOD_RESULT setMix(float);
    FMOD_RESULT getType(FMOD_DSPCONNECTION_TYPE*);
    FMOD_RESULT getInput(FMOD::DSP**);
    FMOD_RESULT getOutput(FMOD::DSP**);
}

[[link(win, android, mac)]]
class FMOD::ChannelControl {
    FMOD_RESULT get3DLevel(float*);
    FMOD_RESULT getNumDSPs(int*);
    FMOD_RESULT set3DLevel(float);
    FMOD_RESULT get3DSpread(float*);
    FMOD_RESULT getDSPClock(uint64_t*, uint64_t*);
    FMOD_RESULT getDSPIndex(FMOD::DSP*, int*);
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT set3DSpread(float);
    FMOD_RESULT setCallback(FMOD_RESULT (*)(FMOD_CHANNELCONTROL*, FMOD_CHANNELCONTROL_TYPE, FMOD_CHANNELCONTROL_CALLBACK_TYPE, void*, void*));
    FMOD_RESULT setDSPIndex(FMOD::DSP*, int);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT addFadePoint(uint64_t, float);
    FMOD_RESULT getMixMatrix(float*, int*, int*, int);
    FMOD_RESULT setMixMatrix(float*, int, int, int);
    FMOD_RESULT getAudibility(float*);
    FMOD_RESULT getFadePoints(uint32_t*, uint64_t*, float*);
    FMOD_RESULT getVolumeRamp(bool*);
    FMOD_RESULT setVolumeRamp(bool);
    FMOD_RESULT get3DOcclusion(float*, float*);
    FMOD_RESULT getLowPassGain(float*);
    FMOD_RESULT set3DOcclusion(float, float);
    FMOD_RESULT setLowPassGain(float);
    FMOD_RESULT get3DAttributes(FMOD_VECTOR*, FMOD_VECTOR*);
    FMOD_RESULT getSystemObject(FMOD::System**);
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, FMOD_VECTOR const*);
    FMOD_RESULT removeFadePoints(uint64_t, uint64_t);
    FMOD_RESULT setFadePointRamp(uint64_t, float);
    FMOD_RESULT get3DConeSettings(float*, float*, float*);
    FMOD_RESULT get3DDopplerLevel(float*);
    FMOD_RESULT set3DConeSettings(float, float, float);
    FMOD_RESULT set3DDopplerLevel(float);
    FMOD_RESULT setMixLevelsInput(float*, int);
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*);
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int);
    FMOD_RESULT setMixLevelsOutput(float, float, float, float, float, float, float, float);
    FMOD_RESULT get3DDistanceFilter(bool*, float*, float*);
    FMOD_RESULT get3DMinMaxDistance(float*, float*);
    FMOD_RESULT getReverbProperties(int, float*);
    FMOD_RESULT set3DDistanceFilter(bool, float, float);
    FMOD_RESULT set3DMinMaxDistance(float, float);
    FMOD_RESULT setReverbProperties(int, float);
    FMOD_RESULT get3DConeOrientation(FMOD_VECTOR*);
    FMOD_RESULT set3DConeOrientation(FMOD_VECTOR*);
    FMOD_RESULT stop();
    FMOD_RESULT addDSP(int, FMOD::DSP*);
    FMOD_RESULT getDSP(int, FMOD::DSP**);
    FMOD_RESULT setPan(float);
    FMOD_RESULT getMode(uint32_t*);
    FMOD_RESULT getMute(bool*);
    FMOD_RESULT setMode(uint32_t);
    FMOD_RESULT setMute(bool);
    FMOD_RESULT getDelay(uint64_t*, uint64_t*, bool*);
    FMOD_RESULT getPitch(float*);
    FMOD_RESULT setDelay(uint64_t, uint64_t, bool);
    FMOD_RESULT setPitch(float);
    FMOD_RESULT getPaused(bool*);
    FMOD_RESULT getVolume(float*);
    FMOD_RESULT isPlaying(bool*);
    FMOD_RESULT removeDSP(FMOD::DSP*);
    FMOD_RESULT setPaused(bool);
    FMOD_RESULT setVolume(float);
}

[[link(win, android, mac)]]
class FMOD::DSP {
    FMOD_RESULT getCPUUsage(uint32_t*, uint32_t*);
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT setCallback(FMOD_RESULT (*)(FMOD_DSP*, FMOD_DSP_CALLBACK_TYPE, void*));
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT getNumInputs(int*);
    FMOD_RESULT getWetDryMix(float*, float*, float*);
    FMOD_RESULT setWetDryMix(float, float, float);
    FMOD_RESULT disconnectAll(bool, bool);
    FMOD_RESULT getNumOutputs(int*);
    FMOD_RESULT disconnectFrom(FMOD::DSP*, FMOD::DSPConnection*);
    FMOD_RESULT getMeteringInfo(FMOD_DSP_METERING_INFO*, FMOD_DSP_METERING_INFO*);
    FMOD_RESULT getParameterInt(int, int*, char*, int);
    FMOD_RESULT getSystemObject(FMOD::System**);
    FMOD_RESULT setParameterInt(int, int);
    FMOD_RESULT getChannelFormat(uint32_t*, int*, FMOD_SPEAKERMODE*);
    FMOD_RESULT getNumParameters(int*);
    FMOD_RESULT getParameterBool(int, bool*, char*, int);
    FMOD_RESULT getParameterData(int, void**, uint32_t*, char*, int);
    FMOD_RESULT getParameterInfo(int, FMOD_DSP_PARAMETER_DESC**);
    FMOD_RESULT setChannelFormat(uint32_t, int, FMOD_SPEAKERMODE);
    FMOD_RESULT setParameterBool(int, bool);
    FMOD_RESULT setParameterData(int, void*, uint32_t);
    FMOD_RESULT showConfigDialog(void*, bool);
    FMOD_RESULT getParameterFloat(int, float*, char*, int);
    FMOD_RESULT setParameterFloat(int, float);
    FMOD_RESULT getMeteringEnabled(bool*, bool*);
    FMOD_RESULT setMeteringEnabled(bool, bool);
    FMOD_RESULT getDataParameterIndex(int, int*);
    FMOD_RESULT getOutputChannelFormat(uint32_t, int, FMOD_SPEAKERMODE, uint32_t*, int*, FMOD_SPEAKERMODE*);
    FMOD_RESULT reset();
    FMOD_RESULT getIdle(bool*);
    FMOD_RESULT getInfo(char*, uint32_t*, int*, int*, int*);
    FMOD_RESULT getType(FMOD_DSP_TYPE*);
    FMOD_RESULT release();
    FMOD_RESULT addInput(FMOD::DSP*, FMOD::DSPConnection**, FMOD_DSPCONNECTION_TYPE);
    FMOD_RESULT getInput(int, FMOD::DSP**, FMOD::DSPConnection**);
    FMOD_RESULT getActive(bool*);
    FMOD_RESULT getBypass(bool*);
    FMOD_RESULT getOutput(int, FMOD::DSP**, FMOD::DSPConnection**);
    FMOD_RESULT setActive(bool);
    FMOD_RESULT setBypass(bool);
}

[[link(win, android, mac)]]
class FMOD::DSPI {
    FMOD_RESULT validate(FMOD::DSP*, FMOD::DSPI**, FMOD::SystemLockScope*);
}

[[link(win, android, mac)]]
class FMOD::Sound {
    FMOD_RESULT getNumTags(int*, int*);
    FMOD_RESULT getDefaults(float*, int*);
    FMOD_RESULT getSubSound(int, FMOD::Sound**);
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT setDefaults(float, int);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT addSyncPoint(uint32_t, uint32_t, char const*, FMOD_SYNCPOINT**);
    FMOD_RESULT getLoopCount(int*);
    FMOD_RESULT getOpenState(FMOD_OPENSTATE*, uint32_t*, bool*, bool*);
    FMOD_RESULT getSyncPoint(int, FMOD_SYNCPOINT**);
    FMOD_RESULT setLoopCount(int);
    FMOD_RESULT getLoopPoints(uint32_t*, uint32_t, uint32_t*, uint32_t);
    FMOD_RESULT getMusicSpeed(float*);
    FMOD_RESULT getSoundGroup(FMOD::SoundGroup**);
    FMOD_RESULT setLoopPoints(uint32_t, uint32_t, uint32_t, uint32_t);
    FMOD_RESULT setMusicSpeed(float);
    FMOD_RESULT setSoundGroup(FMOD::SoundGroup*);
    FMOD_RESULT deleteSyncPoint(FMOD_SYNCPOINT*);
    FMOD_RESULT getNumSubSounds(int*);
    FMOD_RESULT getSystemObject(FMOD::System**);
    FMOD_RESULT getNumSyncPoints(int*);
    FMOD_RESULT getSyncPointInfo(FMOD_SYNCPOINT*, char*, int, uint32_t*, uint32_t);
    FMOD_RESULT get3DConeSettings(float*, float*, float*);
    FMOD_RESULT getSubSoundParent(FMOD::Sound**);
    FMOD_RESULT set3DConeSettings(float, float, float);
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*);
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int);
    FMOD_RESULT get3DMinMaxDistance(float*, float*);
    FMOD_RESULT getMusicNumChannels(int*);
    FMOD_RESULT set3DMinMaxDistance(float, float);
    FMOD_RESULT getMusicChannelVolume(int, float*);
    FMOD_RESULT setMusicChannelVolume(int, float);
    FMOD_RESULT lock(uint32_t, uint32_t, void**, void**, uint32_t*, uint32_t*);
    FMOD_RESULT getTag(char const*, int, FMOD_TAG*);
    FMOD_RESULT unlock(void*, void*, uint32_t, uint32_t);
    FMOD_RESULT getMode(uint32_t*);
    FMOD_RESULT getName(char*, int);
    FMOD_RESULT release();
    FMOD_RESULT setMode(uint32_t);
    FMOD_RESULT readData(void*, uint32_t, uint32_t*);
    FMOD_RESULT seekData(uint32_t);
    FMOD_RESULT getFormat(FMOD_SOUND_TYPE*, FMOD_SOUND_FORMAT*, int*, int*);
    FMOD_RESULT getLength(uint32_t*, uint32_t);
}

[[link(win, android, mac)]]
class FMOD::SoundI {
    FMOD_RESULT getUserDataInternal(void**);
    FMOD_RESULT setUserDataInternal(void*);
}

[[link(win, android, mac)]]
class FMOD::System {
    FMOD_RESULT getChannel(int, FMOD::Channel**);
    FMOD_RESULT getVersion(uint32_t*);
    FMOD_RESULT loadPlugin(char const*, uint32_t*, uint32_t);
    FMOD_RESULT recordStop(int);
    FMOD_RESULT createSound(char const*, uint32_t, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**);
    FMOD_RESULT getCPUUsage(FMOD_CPU_USAGE*);
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT isRecording(int, bool*);
    FMOD_RESULT mixerResume();
    FMOD_RESULT recordStart(int, FMOD::Sound*, bool);
    FMOD_RESULT registerDSP(FMOD_DSP_DESCRIPTION const*, uint32_t*);
    FMOD_RESULT setCallback(FMOD_RESULT (*)(FMOD_SYSTEM*, uint32_t, void*, void*, void*), uint32_t);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT createStream(char const*, uint32_t, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**);
    FMOD_RESULT getFileUsage(long long*, long long*, long long*);
    FMOD_RESULT loadGeometry(void const*, int, FMOD::Geometry**);
    FMOD_RESULT mixerSuspend();
    FMOD_RESULT unloadPlugin(uint32_t);
    FMOD_RESULT get3DSettings(float*, float*, float*);
    FMOD_RESULT getDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*);
    FMOD_RESULT getNumDrivers(int*);
    FMOD_RESULT getNumPlugins(FMOD_PLUGINTYPE, int*);
    FMOD_RESULT getPluginInfo(uint32_t, FMOD_PLUGINTYPE*, char*, int, uint32_t*);
    FMOD_RESULT registerCodec(FMOD_CODEC_DESCRIPTION*, uint32_t*, uint32_t);
    FMOD_RESULT set3DSettings(float, float, float);
    FMOD_RESULT setFileSystem(FMOD_RESULT (*)(char const*, uint32_t*, void**, void*), FMOD_RESULT (*)(void*, void*), FMOD_RESULT (*)(void*, void*, uint32_t, uint32_t*, void*), FMOD_RESULT (*)(void*, uint32_t, void*), FMOD_RESULT (*)(FMOD_ASYNCREADINFO*, void*), FMOD_RESULT (*)(FMOD_ASYNCREADINFO*, void*), int);
    FMOD_RESULT setPluginPath(char const*);
    FMOD_RESULT createGeometry(int, int, FMOD::Geometry**);
    FMOD_RESULT createReverb3D(FMOD::Reverb3D**);
    FMOD_RESULT registerOutput(FMOD_OUTPUT_DESCRIPTION const*, uint32_t*);
    FMOD_RESULT createDSPByType(FMOD_DSP_TYPE, FMOD::DSP**);
    FMOD_RESULT getNestedPlugin(uint32_t, int, uint32_t*);
    FMOD_RESULT getNetworkProxy(char*, int);
    FMOD_RESULT getOutputHandle(void**);
    FMOD_RESULT getPluginHandle(FMOD_PLUGINTYPE, int, uint32_t*);
    FMOD_RESULT setNetworkProxy(char const*);
    FMOD_RESULT attachFileSystem(FMOD_RESULT (*)(char const*, uint32_t*, void**, void*), FMOD_RESULT (*)(void*, void*), FMOD_RESULT (*)(void*, void*, uint32_t, uint32_t*, void*), FMOD_RESULT (*)(void*, uint32_t, void*));
    FMOD_RESULT createSoundGroup(char const*, FMOD::SoundGroup**);
    FMOD_RESULT getDSPBufferSize(uint32_t*, int*);
    FMOD_RESULT getDSPInfoByType(FMOD_DSP_TYPE, FMOD_DSP_DESCRIPTION const**);
    FMOD_RESULT setDSPBufferSize(uint32_t, int);
    FMOD_RESULT createDSPByPlugin(uint32_t, FMOD::DSP**);
    FMOD_RESULT get3DNumListeners(int*);
    FMOD_RESULT getNetworkTimeout(int*);
    FMOD_RESULT getOutputByPlugin(uint32_t*);
    FMOD_RESULT getRecordPosition(int, uint32_t*);
    FMOD_RESULT getSoftwareFormat(int*, FMOD_SPEAKERMODE*, int*);
    FMOD_RESULT set3DNumListeners(int);
    FMOD_RESULT setNetworkTimeout(int);
    FMOD_RESULT setOutputByPlugin(uint32_t);
    FMOD_RESULT setSoftwareFormat(int, FMOD_SPEAKERMODE, int);
    FMOD_RESULT createChannelGroup(char const*, FMOD::ChannelGroup**);
    FMOD_RESULT getChannelsPlaying(int*, int*);
    FMOD_RESULT getDSPInfoByPlugin(uint32_t, FMOD_DSP_DESCRIPTION const**);
    FMOD_RESULT getSpeakerPosition(FMOD_SPEAKER, float*, float*, bool*);
    FMOD_RESULT setSpeakerPosition(FMOD_SPEAKER, float, float, bool);
    FMOD_RESULT getAdvancedSettings(FMOD_ADVANCEDSETTINGS*);
    FMOD_RESULT getDefaultMixMatrix(FMOD_SPEAKERMODE, FMOD_SPEAKERMODE, float*, int);
    FMOD_RESULT getGeometrySettings(float*);
    FMOD_RESULT getMasterSoundGroup(FMOD::SoundGroup**);
    FMOD_RESULT getNumNestedPlugins(uint32_t, int*);
    FMOD_RESULT getRecordDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*, uint32_t*);
    FMOD_RESULT getRecordNumDrivers(int*, int*);
    FMOD_RESULT getReverbProperties(int, FMOD_REVERB_PROPERTIES*);
    FMOD_RESULT getSoftwareChannels(int*);
    FMOD_RESULT getStreamBufferSize(uint32_t*, uint32_t*);
    FMOD_RESULT setAdvancedSettings(FMOD_ADVANCEDSETTINGS*);
    FMOD_RESULT setGeometrySettings(float);
    FMOD_RESULT setReverbProperties(int, FMOD_REVERB_PROPERTIES const*);
    FMOD_RESULT setSoftwareChannels(int);
    FMOD_RESULT setStreamBufferSize(uint32_t, uint32_t);
    FMOD_RESULT getGeometryOcclusion(FMOD_VECTOR const*, FMOD_VECTOR const*, float*, float*);
    FMOD_RESULT set3DRolloffCallback(float (*)(FMOD_CHANNELCONTROL*, float));
    FMOD_RESULT getMasterChannelGroup(FMOD::ChannelGroup**);
    FMOD_RESULT getSpeakerModeChannels(FMOD_SPEAKERMODE, int*);
    FMOD_RESULT get3DListenerAttributes(int, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*);
    FMOD_RESULT set3DListenerAttributes(int, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*);
    FMOD_RESULT attachChannelGroupToPort(FMOD_PORT_TYPE, uint64_t, FMOD::ChannelGroup*, bool);
    FMOD_RESULT detachChannelGroupFromPort(FMOD::ChannelGroup*);
    FMOD_RESULT init(int, uint32_t, void*);
    FMOD_RESULT close();
    FMOD_RESULT update();
    FMOD_RESULT lockDSP();
    FMOD_RESULT playDSP(FMOD::DSP*, FMOD::ChannelGroup*, bool, FMOD::Channel**);
    FMOD_RESULT release();
    FMOD_RESULT createDSP(FMOD_DSP_DESCRIPTION const*, FMOD::DSP**);
    FMOD_RESULT getDriver(int*);
    FMOD_RESULT getOutput(FMOD_OUTPUTTYPE*);
    FMOD_RESULT playSound(FMOD::Sound*, FMOD::ChannelGroup*, bool, FMOD::Channel**);
    FMOD_RESULT setDriver(int);
    FMOD_RESULT setOutput(FMOD_OUTPUTTYPE);
    FMOD_RESULT unlockDSP();
}

[[link(win, android, mac)]]
class FMOD::Channel {
    FMOD_RESULT getPosition(uint32_t*, uint32_t);
    FMOD_RESULT getPriority(int*);
    FMOD_RESULT setPosition(uint32_t, uint32_t);
    FMOD_RESULT setPriority(int);
    FMOD_RESULT getFrequency(float*);
    FMOD_RESULT getLoopCount(int*);
    FMOD_RESULT setFrequency(float);
    FMOD_RESULT setLoopCount(int);
    FMOD_RESULT getLoopPoints(uint32_t*, uint32_t, uint32_t*, uint32_t);
    FMOD_RESULT setLoopPoints(uint32_t, uint32_t, uint32_t, uint32_t);
    FMOD_RESULT getChannelGroup(FMOD::ChannelGroup**);
    FMOD_RESULT getCurrentSound(FMOD::Sound**);
    FMOD_RESULT setChannelGroup(FMOD::ChannelGroup*);
    FMOD_RESULT getIndex(int*);
    FMOD_RESULT isVirtual(bool*);
}

[[link(win, android, mac)]]
class FMOD::SystemI {
    FMOD_RESULT createDiskFile(char const*, FMOD_CREATESOUNDEXINFO*, FMOD::File**, bool*);
    FMOD_RESULT createMemoryFile(FMOD::File**);
    FMOD_RESULT createClientProfile();
    FMOD_RESULT setInternalCallback(int, FMOD_RESULT (*)(FMOD_SYSTEM*, uint32_t, void*, void*, void*), void*);
    FMOD_RESULT validate(FMOD::System*, FMOD::SystemI**, FMOD::SystemLockScope*);
}

[[link(win, android, mac)]]
class FMOD::ChannelI {
    FMOD_RESULT validate(FMOD::Channel*, FMOD::ChannelI**, FMOD::SystemLockScope*);
}

[[link(win, android, mac)]]
class FMOD::Geometry {
    FMOD_RESULT addPolygon(float, float, bool, int, FMOD_VECTOR const*, int*);
    FMOD_RESULT getPosition(FMOD_VECTOR*);
    FMOD_RESULT getRotation(FMOD_VECTOR*, FMOD_VECTOR*);
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT setPosition(FMOD_VECTOR const*);
    FMOD_RESULT setRotation(FMOD_VECTOR const*, FMOD_VECTOR const*);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT getMaxPolygons(int*, int*);
    FMOD_RESULT getNumPolygons(int*);
    FMOD_RESULT getPolygonVertex(int, int, FMOD_VECTOR*);
    FMOD_RESULT setPolygonVertex(int, int, FMOD_VECTOR const*);
    FMOD_RESULT getPolygonAttributes(int, float*, float*, bool*);
    FMOD_RESULT setPolygonAttributes(int, float, float, bool);
    FMOD_RESULT getPolygonNumVertices(int, int*);
    FMOD_RESULT save(void*, int*);
    FMOD_RESULT release();
    FMOD_RESULT getScale(FMOD_VECTOR*);
    FMOD_RESULT setScale(FMOD_VECTOR const*);
    FMOD_RESULT getActive(bool*);
    FMOD_RESULT setActive(bool);
}

[[link(win, android, mac)]]
class FMOD::Reverb3D {
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT getProperties(FMOD_REVERB_PROPERTIES*);
    FMOD_RESULT setProperties(FMOD_REVERB_PROPERTIES const*);
    FMOD_RESULT get3DAttributes(FMOD_VECTOR*, float*, float*);
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, float, float);
    FMOD_RESULT release();
    FMOD_RESULT getActive(bool*);
    FMOD_RESULT setActive(bool);
}

[[link(win, android, mac)]]
class FMOD::GeometryI {
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT setUserData(void*);
}
