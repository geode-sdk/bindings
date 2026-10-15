[[link(win, android, mac)]]
class FMOD::Channel {
    FMOD_RESULT getChannelGroup(FMOD::ChannelGroup**) = ios 0x5782e8;
    FMOD_RESULT getCurrentSound(FMOD::Sound**) = ios 0x57867c;
    FMOD_RESULT getFrequency(float*) = ios 0x5784ac;
    FMOD_RESULT getIndex(int*) = ios 0x578760;
    FMOD_RESULT getLoopCount(int*) = ios 0x57891c;
    FMOD_RESULT getLoopPoints(unsigned int*, unsigned int, unsigned int*, unsigned int) = ios 0x578b94;
    FMOD_RESULT getPosition(unsigned int*, unsigned int) = ios 0x5780dc;
    FMOD_RESULT getPriority(int*) = ios 0x577ed0;
    FMOD_RESULT isVirtual(bool*) = ios 0x578590;
    FMOD_RESULT setChannelGroup(FMOD::ChannelGroup*);
    FMOD_RESULT setFrequency(float) = ios 0x5783cc;
    FMOD_RESULT setLoopCount(int);
    FMOD_RESULT setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int);
    FMOD_RESULT setPosition(unsigned int, unsigned int);
    FMOD_RESULT setPriority(int);
}

[[link(win, android, mac)]]
class FMOD::ChannelControl {
    FMOD_RESULT addDSP(int, FMOD::DSP*);
    FMOD_RESULT addFadePoint(unsigned long long, float);
    FMOD_RESULT get3DAttributes(FMOD_VECTOR*, FMOD_VECTOR*);
    FMOD_RESULT get3DConeOrientation(FMOD_VECTOR*);
    FMOD_RESULT get3DConeSettings(float*, float*, float*);
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*);
    FMOD_RESULT get3DDistanceFilter(bool*, float*, float*);
    FMOD_RESULT get3DDopplerLevel(float*) = ios 0x629bcc;
    FMOD_RESULT get3DLevel(float*);
    FMOD_RESULT get3DMinMaxDistance(float*, float*);
    FMOD_RESULT get3DOcclusion(float*, float*);
    FMOD_RESULT get3DSpread(float*);
    FMOD_RESULT getAudibility(float*);
    FMOD_RESULT getDelay(unsigned long long*, unsigned long long*, bool*);
    FMOD_RESULT getDSP(int, FMOD::DSP**);
    FMOD_RESULT getDSPClock(unsigned long long*, unsigned long long*) = ios 0x6278c0;
    FMOD_RESULT getDSPIndex(FMOD::DSP*, int*);
    FMOD_RESULT getFadePoints(unsigned int*, unsigned long long*, float*) = ios 0x6280d0;
    FMOD_RESULT getLowPassGain(float*);
    FMOD_RESULT getMixMatrix(float*, int*, int*, int);
    FMOD_RESULT getMode(unsigned int*);
    FMOD_RESULT getMute(bool*) = ios 0x6267f0;
    FMOD_RESULT getNumDSPs(int*);
    FMOD_RESULT getPaused(bool*);
    FMOD_RESULT getPitch(float*);
    FMOD_RESULT getReverbProperties(int, float*);
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x625d80;
    FMOD_RESULT getUserData(void**) = ios 0x62a05c;
    FMOD_RESULT getVolume(float*);
    FMOD_RESULT getVolumeRamp(bool*);
    FMOD_RESULT isPlaying(bool*) = ios 0x626f9c;
    FMOD_RESULT removeDSP(FMOD::DSP*);
    FMOD_RESULT removeFadePoints(unsigned long long, unsigned long long) = ios 0x627f94;
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, FMOD_VECTOR const*);
    FMOD_RESULT set3DConeOrientation(FMOD_VECTOR*);
    FMOD_RESULT set3DConeSettings(float, float, float) = ios 0x628df4;
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int);
    FMOD_RESULT set3DDistanceFilter(bool, float, float) = ios 0x629cac;
    FMOD_RESULT set3DDopplerLevel(float);
    FMOD_RESULT set3DLevel(float);
    FMOD_RESULT set3DMinMaxDistance(float, float);
    FMOD_RESULT set3DOcclusion(float, float);
    FMOD_RESULT set3DSpread(float);
    FMOD_RESULT setCallback(FMOD_CHANNELCONTROL_CALLBACK) = ios 0x626eb8;
    FMOD_RESULT setDelay(unsigned long long, unsigned long long, bool) = ios 0x627a18;
    FMOD_RESULT setDSPIndex(FMOD::DSP*, int);
    FMOD_RESULT setFadePointRamp(unsigned long long, float);
    FMOD_RESULT setLowPassGain(float);
    FMOD_RESULT setMixLevelsInput(float*, int);
    FMOD_RESULT setMixLevelsOutput(float, float, float, float, float, float, float, float) = ios 0x627170;
    FMOD_RESULT setMixMatrix(float*, int, int, int) = ios 0x627584;
    FMOD_RESULT setMode(unsigned int);
    FMOD_RESULT setMute(bool);
    FMOD_RESULT setPan(float) = ios 0x627088;
    FMOD_RESULT setPaused(bool);
    FMOD_RESULT setPitch(float);
    FMOD_RESULT setReverbProperties(int, float) = ios 0x6268d0;
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT setVolume(float) = ios 0x6260dc;
    FMOD_RESULT setVolumeRamp(bool);
    FMOD_RESULT stop() = ios 0x625e50;
}

[[link(win, android, mac)]]
class FMOD::ChannelGroup {
    FMOD_RESULT addGroup(FMOD::ChannelGroup*, bool, FMOD::DSPConnection**) = ios 0x57c008;
    FMOD_RESULT getChannel(int, FMOD::Channel**);
    FMOD_RESULT getGroup(int, FMOD::ChannelGroup**);
    FMOD_RESULT getName(char*, int);
    FMOD_RESULT getNumChannels(int*);
    FMOD_RESULT getNumGroups(int*);
    FMOD_RESULT getParentGroup(FMOD::ChannelGroup**);
    FMOD_RESULT release() = ios 0x57bf44;
}

[[link(win, android, mac)]]
class FMOD::DSP {
    FMOD_RESULT addInput(FMOD::DSP*, FMOD::DSPConnection**, FMOD_DSPCONNECTION_TYPE) = ios 0x5a78b0;
    FMOD_RESULT disconnectAll(bool, bool);
    FMOD_RESULT disconnectFrom(FMOD::DSP*, FMOD::DSPConnection*) = ios 0x5a7a1c;
    FMOD_RESULT getActive(bool*) = ios 0x5a81e4;
    FMOD_RESULT getBypass(bool*) = ios 0x5a83b0;
    FMOD_RESULT getChannelFormat(unsigned int*, int*, FMOD_SPEAKERMODE*);
    FMOD_RESULT getCPUUsage(unsigned int*, unsigned int*);
    FMOD_RESULT getDataParameterIndex(int, int*);
    FMOD_RESULT getIdle(bool*);
    FMOD_RESULT getInfo(char*, unsigned int*, int*, int*, int*);
    FMOD_RESULT getInput(int, FMOD::DSP**, FMOD::DSPConnection**);
    FMOD_RESULT getMeteringEnabled(bool*, bool*);
    FMOD_RESULT getMeteringInfo(FMOD_DSP_METERING_INFO*, FMOD_DSP_METERING_INFO*);
    FMOD_RESULT getNumInputs(int*) = ios 0x5a7c70;
    FMOD_RESULT getNumOutputs(int*) = ios 0x5a7d50;
    FMOD_RESULT getNumParameters(int*) = ios 0x5a9918;
    FMOD_RESULT getOutput(int, FMOD::DSP**, FMOD::DSPConnection**);
    FMOD_RESULT getOutputChannelFormat(unsigned int, int, FMOD_SPEAKERMODE, unsigned int*, int*, FMOD_SPEAKERMODE*) = ios 0x5a8a40;
    FMOD_RESULT getParameterBool(int, bool*, char*, int);
    FMOD_RESULT getParameterData(int, void**, unsigned int*, char*, int);
    FMOD_RESULT getParameterFloat(int, float*, char*, int);
    FMOD_RESULT getParameterInfo(int, FMOD_DSP_PARAMETER_DESC**);
    FMOD_RESULT getParameterInt(int, int*, char*, int);
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x5a77e8;
    FMOD_RESULT getType(FMOD_DSP_TYPE*);
    FMOD_RESULT getUserData(void**) = ios 0x5aa164;
    FMOD_RESULT getWetDryMix(float*, float*, float*);
    FMOD_RESULT release() = ios 0x5a771c;
    FMOD_RESULT reset();
    FMOD_RESULT setActive(bool) = ios 0x5a8108;
    FMOD_RESULT setBypass(bool);
    FMOD_RESULT setCallback(FMOD_DSP_CALLBACK) = ios 0x5a8d60;
    FMOD_RESULT setChannelFormat(unsigned int, int, FMOD_SPEAKERMODE);
    FMOD_RESULT setMeteringEnabled(bool, bool);
    FMOD_RESULT setParameterBool(int, bool);
    FMOD_RESULT setParameterData(int, void*, unsigned int);
    FMOD_RESULT setParameterFloat(int, float) = ios 0x2e627c;
    FMOD_RESULT setParameterInt(int, int);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT setWetDryMix(float, float, float) = ios 0x5a84a4;
    FMOD_RESULT showConfigDialog(void*, bool);
}

[[link(win, android, mac)]]
class FMOD::DSPConnection {
    FMOD_RESULT getInput(FMOD::DSP**);
    FMOD_RESULT getMix(float*);
    FMOD_RESULT getMixMatrix(float*, int*, int*, int);
    FMOD_RESULT getOutput(FMOD::DSP**) = ios 0x5ad5e4;
    FMOD_RESULT getType(FMOD_DSPCONNECTION_TYPE*);
    FMOD_RESULT getUserData(void**) = ios 0x5add60;
    FMOD_RESULT setMix(float) = ios 0x5ad6bc;
    FMOD_RESULT setMixMatrix(float*, int, int, int) = ios 0x5ad880;
    FMOD_RESULT setUserData(void*);
}

[[link(win, android, mac)]]
class FMOD::Geometry {
    FMOD_RESULT addPolygon(float, float, bool, int, FMOD_VECTOR const*, int*) = ios 0x5d0668;
    FMOD_RESULT getActive(bool*) = ios 0x5d093c;
    FMOD_RESULT getMaxPolygons(int*, int*) = ios 0x5d0718;
    FMOD_RESULT getNumPolygons(int*) = ios 0x5d06dc;
    FMOD_RESULT getPolygonAttributes(int, float*, float*, bool*) = ios 0x5d08a4;
    FMOD_RESULT getPolygonNumVertices(int, int*) = ios 0x5d075c;
    FMOD_RESULT getPolygonVertex(int, int, FMOD_VECTOR*) = ios 0x5d07f4;
    FMOD_RESULT getPosition(FMOD_VECTOR*) = ios 0x5d0a3c;
    FMOD_RESULT getRotation(FMOD_VECTOR*, FMOD_VECTOR*) = ios 0x5d09bc;
    FMOD_RESULT getScale(FMOD_VECTOR*) = ios 0x5d0ab4;
    FMOD_RESULT getUserData(void**) = ios 0x5d0b70;
    FMOD_RESULT release() = ios 0x5d063c;
    FMOD_RESULT save(void*, int*) = ios 0x5d0af0;
    FMOD_RESULT setActive(bool) = ios 0x5d0900;
    FMOD_RESULT setPolygonAttributes(int, float, float, bool) = ios 0x5d0848;
    FMOD_RESULT setPolygonVertex(int, int, FMOD_VECTOR const*) = ios 0x5d07a0;
    FMOD_RESULT setPosition(FMOD_VECTOR const*) = ios 0x5d0a00;
    FMOD_RESULT setRotation(FMOD_VECTOR const*, FMOD_VECTOR const*) = ios 0x5d0978;
    FMOD_RESULT setScale(FMOD_VECTOR const*) = ios 0x5d0a78;
    FMOD_RESULT setUserData(void*) = ios 0x5d0b34;
}

[[link(win, android, mac)]]
class FMOD::Reverb3D {
    FMOD_RESULT get3DAttributes(FMOD_VECTOR*, float*, float*) = ios 0x5dfa60;
    FMOD_RESULT getActive(bool*);
    FMOD_RESULT getProperties(FMOD_REVERB_PROPERTIES*);
    FMOD_RESULT getUserData(void**) = ios 0x5dff84;
    FMOD_RESULT release() = ios 0x5df8dc;
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, float, float) = ios 0x5df990;
    FMOD_RESULT setActive(bool);
    FMOD_RESULT setProperties(FMOD_REVERB_PROPERTIES const*);
    FMOD_RESULT setUserData(void*);
}

[[link(win, android, mac)]]
class FMOD::Sound {
    FMOD_RESULT addSyncPoint(unsigned int, unsigned int, char const*, FMOD_SYNCPOINT**) = ios 0x5e38a4;
    FMOD_RESULT deleteSyncPoint(FMOD_SYNCPOINT*);
    FMOD_RESULT get3DConeSettings(float*, float*, float*) = ios 0x5e1f20;
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*);
    FMOD_RESULT get3DMinMaxDistance(float*, float*);
    FMOD_RESULT getDefaults(float*, int*) = ios 0x5e195c;
    FMOD_RESULT getFormat(FMOD_SOUND_TYPE*, FMOD_SOUND_FORMAT*, int*, int*) = ios 0x5e2804;
    FMOD_RESULT getLength(unsigned int*, unsigned int);
    FMOD_RESULT getLoopCount(int*);
    FMOD_RESULT getLoopPoints(unsigned int*, unsigned int, unsigned int*, unsigned int);
    FMOD_RESULT getMode(unsigned int*);
    FMOD_RESULT getMusicChannelVolume(int, float*);
    FMOD_RESULT getMusicNumChannels(int*);
    FMOD_RESULT getMusicSpeed(float*);
    FMOD_RESULT getName(char*, int);
    FMOD_RESULT getNumSubSounds(int*);
    FMOD_RESULT getNumSyncPoints(int*);
    FMOD_RESULT getNumTags(int*, int*);
    FMOD_RESULT getOpenState(FMOD_OPENSTATE*, unsigned int*, bool*, bool*);
    FMOD_RESULT getSoundGroup(FMOD::SoundGroup**);
    FMOD_RESULT getSubSound(int, FMOD::Sound**) = ios 0x5e2390;
    FMOD_RESULT getSubSoundParent(FMOD::Sound**) = ios 0x5e24fc;
    FMOD_RESULT getSyncPoint(int, FMOD_SYNCPOINT**);
    FMOD_RESULT getSyncPointInfo(FMOD_SYNCPOINT*, char*, int, unsigned int*, unsigned int) = ios 0x5e36a8;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x5e12c4;
    FMOD_RESULT getTag(char const*, int, FMOD_TAG*);
    FMOD_RESULT getUserData(void**) = ios 0x5e4a64;
    FMOD_RESULT lock(unsigned int, unsigned int, void**, void**, unsigned int*, unsigned int*) = ios 0x5e1394;
    FMOD_RESULT readData(void*, unsigned int, unsigned int*);
    FMOD_RESULT release() = ios 0x5e11d4;
    FMOD_RESULT seekData(unsigned int);
    FMOD_RESULT set3DConeSettings(float, float, float) = ios 0x5e1d68;
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int);
    FMOD_RESULT set3DMinMaxDistance(float, float) = ios 0x5e1aa8;
    FMOD_RESULT setDefaults(float, int) = ios 0x5e17f4;
    FMOD_RESULT setLoopCount(int);
    FMOD_RESULT setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int);
    FMOD_RESULT setMode(unsigned int);
    FMOD_RESULT setMusicChannelVolume(int, float) = ios 0x5e445c;
    FMOD_RESULT setMusicSpeed(float) = ios 0x5e4744;
    FMOD_RESULT setSoundGroup(FMOD::SoundGroup*) = ios 0x5e3200;
    FMOD_RESULT setUserData(void*) = ios 0x5e4994;
    FMOD_RESULT unlock(void*, void*, unsigned int, unsigned int);
}

[[link(win, android, mac)]]
class FMOD::SoundGroup {
    FMOD_RESULT getMaxAudible(int*);
    FMOD_RESULT getMaxAudibleBehavior(FMOD_SOUNDGROUP_BEHAVIOR*);
    FMOD_RESULT getMuteFadeSpeed(float*);
    FMOD_RESULT getName(char*, int);
    FMOD_RESULT getNumPlaying(int*);
    FMOD_RESULT getNumSounds(int*);
    FMOD_RESULT getSound(int, FMOD::Sound**);
    FMOD_RESULT getSystemObject(FMOD::System**);
    FMOD_RESULT getUserData(void**) = ios 0x5e61f8;
    FMOD_RESULT getVolume(float*) = ios 0x5e5b84;
    FMOD_RESULT release();
    FMOD_RESULT setMaxAudible(int);
    FMOD_RESULT setMaxAudibleBehavior(FMOD_SOUNDGROUP_BEHAVIOR);
    FMOD_RESULT setMuteFadeSpeed(float);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT setVolume(float);
    FMOD_RESULT stop() = ios 0x5e5c5c;
}

[[link(win, android, mac)]]
class FMOD::System {
    FMOD_RESULT attachChannelGroupToPort(FMOD_PORT_TYPE, unsigned long long, FMOD::ChannelGroup*, bool) = ios 0x5ef824;
    FMOD_RESULT attachFileSystem(FMOD_FILE_OPEN_CALLBACK, FMOD_FILE_CLOSE_CALLBACK, FMOD_FILE_READ_CALLBACK, FMOD_FILE_SEEK_CALLBACK) = ios 0x5eb8e0;
    FMOD_RESULT close() = ios 0x5ed058;
    FMOD_RESULT createChannelGroup(char const*, FMOD::ChannelGroup**);
    FMOD_RESULT createDSP(FMOD_DSP_DESCRIPTION const*, FMOD::DSP**);
    FMOD_RESULT createDSPByPlugin(unsigned int, FMOD::DSP**);
    FMOD_RESULT createDSPByType(FMOD_DSP_TYPE, FMOD::DSP**);
    FMOD_RESULT createGeometry(int, int, FMOD::Geometry**);
    FMOD_RESULT createReverb3D(FMOD::Reverb3D**);
    FMOD_RESULT createSound(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**);
    FMOD_RESULT createSoundGroup(char const*, FMOD::SoundGroup**);
    FMOD_RESULT createStream(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**);
    FMOD_RESULT detachChannelGroupFromPort(FMOD::ChannelGroup*);
    FMOD_RESULT get3DListenerAttributes(int, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*);
    FMOD_RESULT get3DNumListeners(int*) = ios 0x5edb14;
    FMOD_RESULT get3DSettings(float*, float*, float*);
    FMOD_RESULT getAdvancedSettings(FMOD_ADVANCEDSETTINGS*);
    FMOD_RESULT getChannel(int, FMOD::Channel**);
    FMOD_RESULT getChannelsPlaying(int*, int*);
    FMOD_RESULT getCPUUsage(FMOD_CPU_USAGE*) = ios 0x5ee670;
    FMOD_RESULT getDefaultMixMatrix(FMOD_SPEAKERMODE, FMOD_SPEAKERMODE, float*, int) = ios 0x5ee2b4;
    FMOD_RESULT getDriver(int*);
    FMOD_RESULT getDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*) = ios 0x5eab0c;
    FMOD_RESULT getDSPBufferSize(unsigned int*, int*);
    FMOD_RESULT getDSPInfoByPlugin(unsigned int, FMOD_DSP_DESCRIPTION const**);
    FMOD_RESULT getDSPInfoByType(FMOD_DSP_TYPE, FMOD_DSP_DESCRIPTION const**);
    FMOD_RESULT getFileUsage(long long*, long long*, long long*);
    FMOD_RESULT getGeometryOcclusion(FMOD_VECTOR const*, FMOD_VECTOR const*, float*, float*);
    FMOD_RESULT getGeometrySettings(float*);
    FMOD_RESULT getMasterChannelGroup(FMOD::ChannelGroup**) = ios 0x5ef684;
    FMOD_RESULT getMasterSoundGroup(FMOD::SoundGroup**) = ios 0x5ef74c;
    FMOD_RESULT getNestedPlugin(unsigned int, int, unsigned int*);
    FMOD_RESULT getNetworkProxy(char*, int);
    FMOD_RESULT getNetworkTimeout(int*);
    FMOD_RESULT getNumDrivers(int*) = ios 0x5eaa34;
    FMOD_RESULT getNumNestedPlugins(unsigned int, int*);
    FMOD_RESULT getNumPlugins(FMOD_PLUGINTYPE, int*);
    FMOD_RESULT getOutput(FMOD_OUTPUTTYPE*);
    FMOD_RESULT getOutputByPlugin(unsigned int*);
    FMOD_RESULT getOutputHandle(void**) = ios 0x5ee480;
    FMOD_RESULT getPluginHandle(FMOD_PLUGINTYPE, int, unsigned int*);
    FMOD_RESULT getPluginInfo(unsigned int, FMOD_PLUGINTYPE*, char*, int, unsigned int*);
    FMOD_RESULT getRecordDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*, unsigned int*) = ios 0x5eff48;
    FMOD_RESULT getRecordNumDrivers(int*, int*);
    FMOD_RESULT getRecordPosition(int, unsigned int*);
    FMOD_RESULT getReverbProperties(int, FMOD_REVERB_PROPERTIES*);
    FMOD_RESULT getSoftwareChannels(int*);
    FMOD_RESULT getSoftwareFormat(int*, FMOD_SPEAKERMODE*, int*) = ios 0x5eb264;
    FMOD_RESULT getSpeakerModeChannels(FMOD_SPEAKERMODE, int*) = ios 0x5ee1d8;
    FMOD_RESULT getSpeakerPosition(FMOD_SPEAKER, float*, float*, bool*);
    FMOD_RESULT getStreamBufferSize(unsigned int*, unsigned int*);
    FMOD_RESULT getUserData(void**) = ios 0x5f1134;
    FMOD_RESULT getVersion(unsigned int*);
    FMOD_RESULT init(int, unsigned int, void*);
    FMOD_RESULT isRecording(int, bool*);
    FMOD_RESULT loadGeometry(void const*, int, FMOD::Geometry**);
    FMOD_RESULT loadPlugin(char const*, unsigned int*, unsigned int);
    FMOD_RESULT lockDSP() = ios 0x5efcb8;
    FMOD_RESULT mixerResume() = ios 0x5ee114;
    FMOD_RESULT mixerSuspend() = ios 0x5ee050;
    FMOD_RESULT playDSP(FMOD::DSP*, FMOD::ChannelGroup*, bool, FMOD::Channel**);
    FMOD_RESULT playSound(FMOD::Sound*, FMOD::ChannelGroup*, bool, FMOD::Channel**);
    FMOD_RESULT recordStart(int, FMOD::Sound*, bool);
    FMOD_RESULT recordStop(int);
    FMOD_RESULT registerCodec(FMOD_CODEC_DESCRIPTION*, unsigned int*, unsigned int);
    FMOD_RESULT registerDSP(FMOD_DSP_DESCRIPTION const*, unsigned int*);
    FMOD_RESULT registerOutput(FMOD_OUTPUT_DESCRIPTION const*, unsigned int*);
    FMOD_RESULT release() = ios 0x5ea7ac;
    FMOD_RESULT set3DListenerAttributes(int, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*);
    FMOD_RESULT set3DNumListeners(int);
    FMOD_RESULT set3DRolloffCallback(FMOD_3D_ROLLOFF_CALLBACK) = ios 0x5edf74;
    FMOD_RESULT set3DSettings(float, float, float) = ios 0x5ed76c;
    FMOD_RESULT setAdvancedSettings(FMOD_ADVANCEDSETTINGS*);
    FMOD_RESULT setCallback(FMOD_SYSTEM_CALLBACK, unsigned int) = ios 0x5ebc34;
    FMOD_RESULT setDriver(int);
    FMOD_RESULT setDSPBufferSize(unsigned int, int);
    FMOD_RESULT setFileSystem(FMOD_FILE_OPEN_CALLBACK, FMOD_FILE_CLOSE_CALLBACK, FMOD_FILE_READ_CALLBACK, FMOD_FILE_SEEK_CALLBACK, FMOD_FILE_ASYNCREAD_CALLBACK, FMOD_FILE_ASYNCCANCEL_CALLBACK, int) = ios 0x5eb630;
    FMOD_RESULT setGeometrySettings(float);
    FMOD_RESULT setNetworkProxy(char const*);
    FMOD_RESULT setNetworkTimeout(int);
    FMOD_RESULT setOutput(FMOD_OUTPUTTYPE);
    FMOD_RESULT setOutputByPlugin(unsigned int);
    FMOD_RESULT setPluginPath(char const*);
    FMOD_RESULT setReverbProperties(int, FMOD_REVERB_PROPERTIES const*);
    FMOD_RESULT setSoftwareChannels(int);
    FMOD_RESULT setSoftwareFormat(int, FMOD_SPEAKERMODE, int);
    FMOD_RESULT setSpeakerPosition(FMOD_SPEAKER, float, float, bool) = ios 0x5ed1f4;
    FMOD_RESULT setStreamBufferSize(unsigned int, unsigned int);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT unloadPlugin(unsigned int);
    FMOD_RESULT unlockDSP() = ios 0x5efd6c;
    FMOD_RESULT update() = ios 0x5ed130;
}

[[link(win, android, mac)]]
FMOD_RESULT FMOD_Debug_Initialize(unsigned int, FMOD_DEBUG_MODE, FMOD_DEBUG_CALLBACK, char const*);
[[link(win, android, mac)]]
FMOD_RESULT FMOD_File_GetDiskBusy(int*);
[[link(win, android, mac)]]
FMOD_RESULT FMOD_File_SetDiskBusy(int);
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Memory_GetStats(int*, int*, int);
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Memory_Initialize(void*, int, FMOD_MEMORY_ALLOC_CALLBACK, FMOD_MEMORY_REALLOC_CALLBACK, FMOD_MEMORY_FREE_CALLBACK, unsigned int);
[[link(win, android, mac)]]
FMOD_RESULT FMOD_System_Create(FMOD_SYSTEM**, unsigned int);
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Thread_SetAttributes(FMOD_THREAD_TYPE, long long, int, unsigned int);
