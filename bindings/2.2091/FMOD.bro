[[link(win, android, mac)]]
class FMOD::Channel {
    FMOD_RESULT getChannelGroup(FMOD::ChannelGroup**);
    FMOD_RESULT getCurrentSound(FMOD::Sound**);
    FMOD_RESULT getFrequency(float*);
    FMOD_RESULT getIndex(int*);
    FMOD_RESULT getLoopCount(int*);
    FMOD_RESULT getLoopPoints(unsigned int*, unsigned int, unsigned int*, unsigned int);
    FMOD_RESULT getPosition(unsigned int*, unsigned int);
    FMOD_RESULT getPriority(int*);
    FMOD_RESULT isVirtual(bool*);
    FMOD_RESULT setChannelGroup(FMOD::ChannelGroup*);
    FMOD_RESULT setFrequency(float);
    FMOD_RESULT setLoopCount(int);
    FMOD_RESULT setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int);
    FMOD_RESULT setPosition(unsigned int, unsigned int);
    FMOD_RESULT setPriority(int);
}

[[link(win, android, mac)]]
class FMOD::ChannelControl {
    FMOD_RESULT addDSP(int, FMOD::DSP*) = ios 0x62b74c;
    FMOD_RESULT addFadePoint(unsigned long long, float);
    FMOD_RESULT get3DAttributes(FMOD_VECTOR*, FMOD_VECTOR*);
    FMOD_RESULT get3DConeOrientation(FMOD_VECTOR*);
    FMOD_RESULT get3DConeSettings(float*, float*, float*);
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*);
    FMOD_RESULT get3DDistanceFilter(bool*, float*, float*);
    FMOD_RESULT get3DDopplerLevel(float*);
    FMOD_RESULT get3DLevel(float*);
    FMOD_RESULT get3DMinMaxDistance(float*, float*);
    FMOD_RESULT get3DOcclusion(float*, float*);
    FMOD_RESULT get3DSpread(float*);
    FMOD_RESULT getAudibility(float*);
    FMOD_RESULT getDelay(unsigned long long*, unsigned long long*, bool*);
    FMOD_RESULT getDSP(int, FMOD::DSP**) = ios 0x62b61c;
    FMOD_RESULT getDSPClock(unsigned long long*, unsigned long long*);
    FMOD_RESULT getDSPIndex(FMOD::DSP*, int*);
    FMOD_RESULT getFadePoints(unsigned int*, unsigned long long*, float*);
    FMOD_RESULT getLowPassGain(float*);
    FMOD_RESULT getMixMatrix(float*, int*, int*, int);
    FMOD_RESULT getMode(unsigned int*);
    FMOD_RESULT getMute(bool*);
    FMOD_RESULT getNumDSPs(int*);
    FMOD_RESULT getPaused(bool*);
    FMOD_RESULT getPitch(float*);
    FMOD_RESULT getReverbProperties(int, float*);
    FMOD_RESULT getSystemObject(FMOD::System**);
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT getVolume(float*);
    FMOD_RESULT getVolumeRamp(bool*);
    FMOD_RESULT isPlaying(bool*);
    FMOD_RESULT removeDSP(FMOD::DSP*);
    FMOD_RESULT removeFadePoints(unsigned long long, unsigned long long);
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, FMOD_VECTOR const*);
    FMOD_RESULT set3DConeOrientation(FMOD_VECTOR*);
    FMOD_RESULT set3DConeSettings(float, float, float);
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int);
    FMOD_RESULT set3DDistanceFilter(bool, float, float);
    FMOD_RESULT set3DDopplerLevel(float);
    FMOD_RESULT set3DLevel(float);
    FMOD_RESULT set3DMinMaxDistance(float, float);
    FMOD_RESULT set3DOcclusion(float, float);
    FMOD_RESULT set3DSpread(float);
    FMOD_RESULT setCallback(FMOD_CHANNELCONTROL_CALLBACK);
    FMOD_RESULT setDelay(unsigned long long, unsigned long long, bool);
    FMOD_RESULT setDSPIndex(FMOD::DSP*, int);
    FMOD_RESULT setFadePointRamp(unsigned long long, float);
    FMOD_RESULT setLowPassGain(float);
    FMOD_RESULT setMixLevelsInput(float*, int);
    FMOD_RESULT setMixLevelsOutput(float, float, float, float, float, float, float, float);
    FMOD_RESULT setMixMatrix(float*, int, int, int);
    FMOD_RESULT setMode(unsigned int);
    FMOD_RESULT setMute(bool);
    FMOD_RESULT setPan(float);
    FMOD_RESULT setPaused(bool);
    FMOD_RESULT setPitch(float);
    FMOD_RESULT setReverbProperties(int, float);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT setVolume(float);
    FMOD_RESULT setVolumeRamp(bool) = ios 0x629610;
    FMOD_RESULT stop();
}

[[link(win, android, mac)]]
class FMOD::ChannelGroup {
    FMOD_RESULT addGroup(FMOD::ChannelGroup*, bool, FMOD::DSPConnection**) = ios 0x57f370;
    FMOD_RESULT getChannel(int, FMOD::Channel**);
    FMOD_RESULT getGroup(int, FMOD::ChannelGroup**);
    FMOD_RESULT getName(char*, int);
    FMOD_RESULT getNumChannels(int*);
    FMOD_RESULT getNumGroups(int*);
    FMOD_RESULT getParentGroup(FMOD::ChannelGroup**);
    FMOD_RESULT release();
}

[[link(win, android, mac)]]
class FMOD::DSP {
    FMOD_RESULT addInput(FMOD::DSP*, FMOD::DSPConnection**, FMOD_DSPCONNECTION_TYPE);
    FMOD_RESULT disconnectAll(bool, bool);
    FMOD_RESULT disconnectFrom(FMOD::DSP*, FMOD::DSPConnection*);
    FMOD_RESULT getActive(bool*);
    FMOD_RESULT getBypass(bool*);
    FMOD_RESULT getChannelFormat(unsigned int*, int*, FMOD_SPEAKERMODE*);
    FMOD_RESULT getCPUUsage(unsigned int*, unsigned int*);
    FMOD_RESULT getDataParameterIndex(int, int*);
    FMOD_RESULT getIdle(bool*);
    FMOD_RESULT getInfo(char*, unsigned int*, int*, int*, int*);
    FMOD_RESULT getInput(int, FMOD::DSP**, FMOD::DSPConnection**);
    FMOD_RESULT getMeteringEnabled(bool*, bool*);
    FMOD_RESULT getMeteringInfo(FMOD_DSP_METERING_INFO*, FMOD_DSP_METERING_INFO*);
    FMOD_RESULT getNumInputs(int*);
    FMOD_RESULT getNumOutputs(int*);
    FMOD_RESULT getNumParameters(int*);
    FMOD_RESULT getOutput(int, FMOD::DSP**, FMOD::DSPConnection**);
    FMOD_RESULT getOutputChannelFormat(unsigned int, int, FMOD_SPEAKERMODE, unsigned int*, int*, FMOD_SPEAKERMODE*);
    FMOD_RESULT getParameterBool(int, bool*, char*, int);
    FMOD_RESULT getParameterData(int, void**, unsigned int*, char*, int);
    FMOD_RESULT getParameterFloat(int, float*, char*, int);
    FMOD_RESULT getParameterInfo(int, FMOD_DSP_PARAMETER_DESC**);
    FMOD_RESULT getParameterInt(int, int*, char*, int);
    FMOD_RESULT getSystemObject(FMOD::System**);
    FMOD_RESULT getType(FMOD_DSP_TYPE*);
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT getWetDryMix(float*, float*, float*);
    FMOD_RESULT release();
    FMOD_RESULT reset();
    FMOD_RESULT setActive(bool);
    FMOD_RESULT setBypass(bool);
    FMOD_RESULT setCallback(FMOD_DSP_CALLBACK);
    FMOD_RESULT setChannelFormat(unsigned int, int, FMOD_SPEAKERMODE);
    FMOD_RESULT setMeteringEnabled(bool, bool) = ios 0x5ad594;
    FMOD_RESULT setParameterBool(int, bool) = ios 0x5ac3d4;
    FMOD_RESULT setParameterData(int, void*, unsigned int);
    FMOD_RESULT setParameterFloat(int, float) = ios 0x5ac1a4;
    FMOD_RESULT setParameterInt(int, int);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT setWetDryMix(float, float, float);
    FMOD_RESULT showConfigDialog(void*, bool);
}

[[link(win, android, mac)]]
class FMOD::DSPConnection {
    FMOD_RESULT getInput(FMOD::DSP**);
    FMOD_RESULT getMix(float*);
    FMOD_RESULT getMixMatrix(float*, int*, int*, int);
    FMOD_RESULT getOutput(FMOD::DSP**);
    FMOD_RESULT getType(FMOD_DSPCONNECTION_TYPE*);
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT setMix(float);
    FMOD_RESULT setMixMatrix(float*, int, int, int);
    FMOD_RESULT setUserData(void*);
}

[[link(win, android, mac)]]
class FMOD::Geometry {
    FMOD_RESULT addPolygon(float, float, bool, int, FMOD_VECTOR const*, int*);
    FMOD_RESULT getActive(bool*);
    FMOD_RESULT getMaxPolygons(int*, int*);
    FMOD_RESULT getNumPolygons(int*);
    FMOD_RESULT getPolygonAttributes(int, float*, float*, bool*);
    FMOD_RESULT getPolygonNumVertices(int, int*);
    FMOD_RESULT getPolygonVertex(int, int, FMOD_VECTOR*);
    FMOD_RESULT getPosition(FMOD_VECTOR*);
    FMOD_RESULT getRotation(FMOD_VECTOR*, FMOD_VECTOR*);
    FMOD_RESULT getScale(FMOD_VECTOR*);
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT release();
    FMOD_RESULT save(void*, int*);
    FMOD_RESULT setActive(bool);
    FMOD_RESULT setPolygonAttributes(int, float, float, bool);
    FMOD_RESULT setPolygonVertex(int, int, FMOD_VECTOR const*);
    FMOD_RESULT setPosition(FMOD_VECTOR const*);
    FMOD_RESULT setRotation(FMOD_VECTOR const*, FMOD_VECTOR const*);
    FMOD_RESULT setScale(FMOD_VECTOR const*);
    FMOD_RESULT setUserData(void*);
}

[[link(win, android, mac)]]
class FMOD::Reverb3D {
    FMOD_RESULT get3DAttributes(FMOD_VECTOR*, float*, float*) = ios 0x5e2dc8;
    FMOD_RESULT getActive(bool*) = ios 0x5e3164;
    FMOD_RESULT getProperties(FMOD_REVERB_PROPERTIES*) = ios 0x5e2fdc;
    FMOD_RESULT getUserData(void**) = ios 0x5e32ec;
    FMOD_RESULT release() = ios 0x5e2c44;
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, float, float) = ios 0x5e2cf8;
    FMOD_RESULT setActive(bool) = ios 0x5e30a0;
    FMOD_RESULT setProperties(FMOD_REVERB_PROPERTIES const*) = ios 0x5e2f18;
    FMOD_RESULT setUserData(void*) = ios 0x5e3228;
}

[[link(win, android, mac)]]
class FMOD::Sound {
    FMOD_RESULT addSyncPoint(unsigned int, unsigned int, char const*, FMOD_SYNCPOINT**) = ios 0x5e6c0c;
    FMOD_RESULT deleteSyncPoint(FMOD_SYNCPOINT*) = ios 0x5e6de0;
    FMOD_RESULT get3DConeSettings(float*, float*, float*) = ios 0x5e5288;
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*) = ios 0x5e5598;
    FMOD_RESULT get3DMinMaxDistance(float*, float*) = ios 0x5e4f70;
    FMOD_RESULT getDefaults(float*, int*) = ios 0x5e4cc4;
    FMOD_RESULT getFormat(FMOD_SOUND_TYPE*, FMOD_SOUND_FORMAT*, int*, int*) = ios 0x5e5b6c;
    FMOD_RESULT getLength(unsigned int*, unsigned int) = ios 0x5e5a0c;
    FMOD_RESULT getLoopCount(int*) = ios 0x5e720c;
    FMOD_RESULT getLoopPoints(unsigned int*, unsigned int, unsigned int*, unsigned int) = ios 0x5e74d4;
    FMOD_RESULT getMode(unsigned int*) = ios 0x5e7000;
    FMOD_RESULT getMusicChannelVolume(int, float*) = ios 0x5e7938;
    FMOD_RESULT getMusicNumChannels(int*) = ios 0x5e76a0;
    FMOD_RESULT getMusicSpeed(float*) = ios 0x5e7bd8;
    FMOD_RESULT getName(char*, int) = ios 0x5e58ac;
    FMOD_RESULT getNumSubSounds(int*) = ios 0x5e5d24;
    FMOD_RESULT getNumSyncPoints(int*) = ios 0x5e67a0;
    FMOD_RESULT getNumTags(int*, int*) = ios 0x5e5e20;
    FMOD_RESULT getOpenState(FMOD_OPENSTATE*, unsigned int*, bool*, bool*) = ios 0x5e611c;
    FMOD_RESULT getSoundGroup(FMOD::SoundGroup**) = ios 0x5e66a4;
    FMOD_RESULT getSubSound(int, FMOD::Sound**) = ios 0x5e56f8;
    FMOD_RESULT getSubSoundParent(FMOD::Sound**);
    FMOD_RESULT getSyncPoint(int, FMOD_SYNCPOINT**) = ios 0x5e68b0;
    FMOD_RESULT getSyncPointInfo(FMOD_SYNCPOINT*, char*, int, unsigned int*, unsigned int) = ios 0x5e6a10;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x5e462c;
    FMOD_RESULT getTag(char const*, int, FMOD_TAG*) = ios 0x5e5f80;
    FMOD_RESULT getUserData(void**) = ios 0x5e7dcc;
    FMOD_RESULT lock(unsigned int, unsigned int, void**, void**, unsigned int*, unsigned int*) = ios 0x5e46fc;
    FMOD_RESULT readData(void*, unsigned int, unsigned int*) = ios 0x5e62bc;
    FMOD_RESULT release() = ios 0x5e453c;
    FMOD_RESULT seekData(unsigned int) = ios 0x5e6458;
    FMOD_RESULT set3DConeSettings(float, float, float) = ios 0x5e50d0;
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int) = ios 0x5e5424;
    FMOD_RESULT set3DMinMaxDistance(float, float) = ios 0x5e4e10;
    FMOD_RESULT setDefaults(float, int) = ios 0x5e4b5c;
    FMOD_RESULT setLoopCount(int) = ios 0x5e70fc;
    FMOD_RESULT setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int) = ios 0x5e7308;
    FMOD_RESULT setMode(unsigned int) = ios 0x5e6ef0;
    FMOD_RESULT setMusicChannelVolume(int, float) = ios 0x5e77c4;
    FMOD_RESULT setMusicSpeed(float) = ios 0x5e7aac;
    FMOD_RESULT setSoundGroup(FMOD::SoundGroup*) = ios 0x5e6568;
    FMOD_RESULT setUserData(void*) = ios 0x5e7cfc;
    FMOD_RESULT unlock(void*, void*, unsigned int, unsigned int) = ios 0x5e4990;
}

[[link(win, android, mac)]]
class FMOD::SoundGroup {
    FMOD_RESULT getMaxAudible(int*) = ios 0x5e89cc;
    FMOD_RESULT getMaxAudibleBehavior(FMOD_SOUNDGROUP_BEHAVIOR*) = ios 0x5e8b7c;
    FMOD_RESULT getMuteFadeSpeed(float*) = ios 0x5e8d34;
    FMOD_RESULT getName(char*, int) = ios 0x5e9088;
    FMOD_RESULT getNumPlaying(int*) = ios 0x5e93b0;
    FMOD_RESULT getNumSounds(int*) = ios 0x5e91b0;
    FMOD_RESULT getSound(int, FMOD::Sound**) = ios 0x5e9288;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x5e881c;
    FMOD_RESULT getUserData(void**) = ios 0x5e9560;
    FMOD_RESULT getVolume(float*) = ios 0x5e8eec;
    FMOD_RESULT release() = ios 0x5e8758;
    FMOD_RESULT setMaxAudible(int) = ios 0x5e88f4;
    FMOD_RESULT setMaxAudibleBehavior(FMOD_SOUNDGROUP_BEHAVIOR) = ios 0x5e8aa4;
    FMOD_RESULT setMuteFadeSpeed(float) = ios 0x5e8c54;
    FMOD_RESULT setUserData(void*) = ios 0x5e9488;
    FMOD_RESULT setVolume(float) = ios 0x5e8e0c;
    FMOD_RESULT stop() = ios 0x5e8fc4;
}

[[link(win, android, mac)]]
class FMOD::System {
    FMOD_RESULT attachChannelGroupToPort(FMOD_PORT_TYPE, unsigned long long, FMOD::ChannelGroup*, bool);
    FMOD_RESULT attachFileSystem(FMOD_FILE_OPEN_CALLBACK, FMOD_FILE_CLOSE_CALLBACK, FMOD_FILE_READ_CALLBACK, FMOD_FILE_SEEK_CALLBACK);
    FMOD_RESULT close();
    FMOD_RESULT createChannelGroup(char const*, FMOD::ChannelGroup**) = ios 0x5f214c;
    FMOD_RESULT createDSP(FMOD_DSP_DESCRIPTION const*, FMOD::DSP**);
    FMOD_RESULT createDSPByPlugin(unsigned int, FMOD::DSP**);
    FMOD_RESULT createDSPByType(FMOD_DSP_TYPE, FMOD::DSP**) = ios 0x5f2024;
    FMOD_RESULT createGeometry(int, int, FMOD::Geometry**);
    FMOD_RESULT createReverb3D(FMOD::Reverb3D**);
    FMOD_RESULT createSound(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**) = ios 0x5f1bf4;
    FMOD_RESULT createSoundGroup(char const*, FMOD::SoundGroup**);
    FMOD_RESULT createStream(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**);
    FMOD_RESULT detachChannelGroupFromPort(FMOD::ChannelGroup*);
    FMOD_RESULT get3DListenerAttributes(int, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*);
    FMOD_RESULT get3DNumListeners(int*);
    FMOD_RESULT get3DSettings(float*, float*, float*);
    FMOD_RESULT getAdvancedSettings(FMOD_ADVANCEDSETTINGS*);
    FMOD_RESULT getChannel(int, FMOD::Channel**);
    FMOD_RESULT getChannelsPlaying(int*, int*);
    FMOD_RESULT getCPUUsage(FMOD_CPU_USAGE*);
    FMOD_RESULT getDefaultMixMatrix(FMOD_SPEAKERMODE, FMOD_SPEAKERMODE, float*, int);
    FMOD_RESULT getDriver(int*);
    FMOD_RESULT getDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*);
    FMOD_RESULT getDSPBufferSize(unsigned int*, int*) = ios 0x5ee870;
    FMOD_RESULT getDSPInfoByPlugin(unsigned int, FMOD_DSP_DESCRIPTION const**);
    FMOD_RESULT getDSPInfoByType(FMOD_DSP_TYPE, FMOD_DSP_DESCRIPTION const**);
    FMOD_RESULT getFileUsage(long long*, long long*, long long*);
    FMOD_RESULT getGeometryOcclusion(FMOD_VECTOR const*, FMOD_VECTOR const*, float*, float*);
    FMOD_RESULT getGeometrySettings(float*);
    FMOD_RESULT getMasterChannelGroup(FMOD::ChannelGroup**);
    FMOD_RESULT getMasterSoundGroup(FMOD::SoundGroup**);
    FMOD_RESULT getNestedPlugin(unsigned int, int, unsigned int*);
    FMOD_RESULT getNetworkProxy(char*, int);
    FMOD_RESULT getNetworkTimeout(int*);
    FMOD_RESULT getNumDrivers(int*);
    FMOD_RESULT getNumNestedPlugins(unsigned int, int*);
    FMOD_RESULT getNumPlugins(FMOD_PLUGINTYPE, int*);
    FMOD_RESULT getOutput(FMOD_OUTPUTTYPE*);
    FMOD_RESULT getOutputByPlugin(unsigned int*);
    FMOD_RESULT getOutputHandle(void**);
    FMOD_RESULT getPluginHandle(FMOD_PLUGINTYPE, int, unsigned int*);
    FMOD_RESULT getPluginInfo(unsigned int, FMOD_PLUGINTYPE*, char*, int, unsigned int*);
    FMOD_RESULT getRecordDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*, unsigned int*);
    FMOD_RESULT getRecordNumDrivers(int*, int*);
    FMOD_RESULT getRecordPosition(int, unsigned int*);
    FMOD_RESULT getReverbProperties(int, FMOD_REVERB_PROPERTIES*);
    FMOD_RESULT getSoftwareChannels(int*);
    FMOD_RESULT getSoftwareFormat(int*, FMOD_SPEAKERMODE*, int*) = ios 0x5ee5cc;
    FMOD_RESULT getSpeakerModeChannels(FMOD_SPEAKERMODE, int*);
    FMOD_RESULT getSpeakerPosition(FMOD_SPEAKER, float*, float*, bool*);
    FMOD_RESULT getStreamBufferSize(unsigned int*, unsigned int*) = ios 0x5f09ac;
    FMOD_RESULT getUserData(void**);
    FMOD_RESULT getVersion(unsigned int*) = ios 0x5f1710;
    FMOD_RESULT init(int, unsigned int, void*) = ios 0x5f026c;
    FMOD_RESULT isRecording(int, bool*);
    FMOD_RESULT loadGeometry(void const*, int, FMOD::Geometry**);
    FMOD_RESULT loadPlugin(char const*, unsigned int*, unsigned int);
    FMOD_RESULT lockDSP();
    FMOD_RESULT mixerResume();
    FMOD_RESULT mixerSuspend();
    FMOD_RESULT playDSP(FMOD::DSP*, FMOD::ChannelGroup*, bool, FMOD::Channel**);
    FMOD_RESULT playSound(FMOD::Sound*, FMOD::ChannelGroup*, bool, FMOD::Channel**);
    FMOD_RESULT recordStart(int, FMOD::Sound*, bool);
    FMOD_RESULT recordStop(int);
    FMOD_RESULT registerCodec(FMOD_CODEC_DESCRIPTION*, unsigned int*, unsigned int);
    FMOD_RESULT registerDSP(FMOD_DSP_DESCRIPTION const*, unsigned int*);
    FMOD_RESULT registerOutput(FMOD_OUTPUT_DESCRIPTION const*, unsigned int*);
    FMOD_RESULT release();
    FMOD_RESULT set3DListenerAttributes(int, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*);
    FMOD_RESULT set3DNumListeners(int);
    FMOD_RESULT set3DRolloffCallback(FMOD_3D_ROLLOFF_CALLBACK);
    FMOD_RESULT set3DSettings(float, float, float);
    FMOD_RESULT setAdvancedSettings(FMOD_ADVANCEDSETTINGS*);
    FMOD_RESULT setCallback(FMOD_SYSTEM_CALLBACK, unsigned int);
    FMOD_RESULT setDriver(int);
    FMOD_RESULT setDSPBufferSize(unsigned int, int) = ios 0x5ee748;
    FMOD_RESULT setFileSystem(FMOD_FILE_OPEN_CALLBACK, FMOD_FILE_CLOSE_CALLBACK, FMOD_FILE_READ_CALLBACK, FMOD_FILE_SEEK_CALLBACK, FMOD_FILE_ASYNCREAD_CALLBACK, FMOD_FILE_ASYNCCANCEL_CALLBACK, int);
    FMOD_RESULT setGeometrySettings(float);
    FMOD_RESULT setNetworkProxy(char const*);
    FMOD_RESULT setNetworkTimeout(int);
    FMOD_RESULT setOutput(FMOD_OUTPUTTYPE);
    FMOD_RESULT setOutputByPlugin(unsigned int);
    FMOD_RESULT setPluginPath(char const*);
    FMOD_RESULT setReverbProperties(int, FMOD_REVERB_PROPERTIES const*);
    FMOD_RESULT setSoftwareChannels(int);
    FMOD_RESULT setSoftwareFormat(int, FMOD_SPEAKERMODE, int) = ios 0x5ee468;
    FMOD_RESULT setSpeakerPosition(FMOD_SPEAKER, float, float, bool);
    FMOD_RESULT setStreamBufferSize(unsigned int, unsigned int);
    FMOD_RESULT setUserData(void*);
    FMOD_RESULT unloadPlugin(unsigned int);
    FMOD_RESULT unlockDSP();
    FMOD_RESULT update();
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
FMOD_RESULT FMOD_Memory_Initialize(void*, int, FMOD_MEMORY_ALLOC_CALLBACK, FMOD_MEMORY_REALLOC_CALLBACK, FMOD_MEMORY_FREE_CALLBACK, unsigned int) = ios 0x5aa9fc;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_System_Create(FMOD_SYSTEM**, unsigned int) = ios 0x578934;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Thread_SetAttributes(FMOD_THREAD_TYPE, long long, int, unsigned int);
