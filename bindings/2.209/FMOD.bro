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
    FMOD_RESULT setChannelGroup(FMOD::ChannelGroup*) = ios 0x578210;
    FMOD_RESULT setFrequency(float) = ios 0x5783cc;
    FMOD_RESULT setLoopCount(int) = ios 0x578844;
    FMOD_RESULT setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int) = ios 0x578a00;
    FMOD_RESULT setPosition(unsigned int, unsigned int) = ios 0x577fb4;
    FMOD_RESULT setPriority(int) = ios 0x577df8;
}

[[link(win, android, mac)]]
class FMOD::ChannelControl {
    FMOD_RESULT addDSP(int, FMOD::DSP*) = ios 0x6283e4;
    FMOD_RESULT addFadePoint(unsigned long long, float) = ios 0x627d24;
    FMOD_RESULT get3DAttributes(FMOD_VECTOR*, FMOD_VECTOR*) = ios 0x628a64;
    FMOD_RESULT get3DConeOrientation(FMOD_VECTOR*) = ios 0x6291b4;
    FMOD_RESULT get3DConeSettings(float*, float*, float*) = ios 0x628f68;
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*) = ios 0x6293c4;
    FMOD_RESULT get3DDistanceFilter(bool*, float*, float*) = ios 0x629e18;
    FMOD_RESULT get3DDopplerLevel(float*) = ios 0x629bcc;
    FMOD_RESULT get3DLevel(float*) = ios 0x629a04;
    FMOD_RESULT get3DMinMaxDistance(float*, float*) = ios 0x628cc4;
    FMOD_RESULT get3DOcclusion(float*, float*) = ios 0x629624;
    FMOD_RESULT get3DSpread(float*) = ios 0x62983c;
    FMOD_RESULT getAudibility(float*) = ios 0x626468;
    FMOD_RESULT getDelay(unsigned long long*, unsigned long long*, bool*) = ios 0x627b90;
    FMOD_RESULT getDSP(int, FMOD::DSP**) = ios 0x6282b4;
    FMOD_RESULT getDSPClock(unsigned long long*, unsigned long long*) = ios 0x6278c0;
    FMOD_RESULT getDSPIndex(FMOD::DSP*, int*) = ios 0x628804;
    FMOD_RESULT getFadePoints(unsigned int*, unsigned long long*, float*) = ios 0x6280d0;
    FMOD_RESULT getLowPassGain(float*) = ios 0x626c18;
    FMOD_RESULT getMixMatrix(float*, int*, int*, int) = ios 0x627724;
    FMOD_RESULT getMode(unsigned int*) = ios 0x626dd8;
    FMOD_RESULT getMute(bool*) = ios 0x6267f0;
    FMOD_RESULT getNumDSPs(int*) = ios 0x6285f4;
    FMOD_RESULT getPaused(bool*) = ios 0x625ffc;
    FMOD_RESULT getPitch(float*) = ios 0x626630;
    FMOD_RESULT getReverbProperties(int, float*) = ios 0x626a00;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x625d80;
    FMOD_RESULT getUserData(void**) = ios 0x62a05c;
    FMOD_RESULT getVolume(float*) = ios 0x6261c8;
    FMOD_RESULT getVolumeRamp(bool*) = ios 0x626388;
    FMOD_RESULT isPlaying(bool*) = ios 0x626f9c;
    FMOD_RESULT removeDSP(FMOD::DSP*) = ios 0x628514;
    FMOD_RESULT removeFadePoints(unsigned long long, unsigned long long) = ios 0x627f94;
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, FMOD_VECTOR const*) = ios 0x628934;
    FMOD_RESULT set3DConeOrientation(FMOD_VECTOR*) = ios 0x6290d4;
    FMOD_RESULT set3DConeSettings(float, float, float) = ios 0x628df4;
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int) = ios 0x629294;
    FMOD_RESULT set3DDistanceFilter(bool, float, float) = ios 0x629cac;
    FMOD_RESULT set3DDopplerLevel(float) = ios 0x629ae4;
    FMOD_RESULT set3DLevel(float) = ios 0x62991c;
    FMOD_RESULT set3DMinMaxDistance(float, float) = ios 0x628b94;
    FMOD_RESULT set3DOcclusion(float, float) = ios 0x6294f4;
    FMOD_RESULT set3DSpread(float) = ios 0x629754;
    FMOD_RESULT setCallback(FMOD_CHANNELCONTROL_CALLBACK) = ios 0x626eb8;
    FMOD_RESULT setDelay(unsigned long long, unsigned long long, bool) = ios 0x627a18;
    FMOD_RESULT setDSPIndex(FMOD::DSP*, int) = ios 0x6286d4;
    FMOD_RESULT setFadePointRamp(unsigned long long, float) = ios 0x627e5c;
    FMOD_RESULT setLowPassGain(float) = ios 0x626b30;
    FMOD_RESULT setMixLevelsInput(float*, int) = ios 0x627454;
    FMOD_RESULT setMixLevelsOutput(float, float, float, float, float, float, float, float) = ios 0x627170;
    FMOD_RESULT setMixMatrix(float*, int, int, int) = ios 0x627584;
    FMOD_RESULT setMode(unsigned int) = ios 0x626cf8;
    FMOD_RESULT setMute(bool) = ios 0x626710;
    FMOD_RESULT setPan(float) = ios 0x627088;
    FMOD_RESULT setPaused(bool) = ios 0x625f1c;
    FMOD_RESULT setPitch(float) = ios 0x626548;
    FMOD_RESULT setReverbProperties(int, float) = ios 0x6268d0;
    FMOD_RESULT setUserData(void*) = ios 0x629f84;
    FMOD_RESULT setVolume(float) = ios 0x6260dc;
    FMOD_RESULT setVolumeRamp(bool) = ios 0x6262a8;
    FMOD_RESULT stop() = ios 0x625e50;
}

[[link(win, android, mac)]]
class FMOD::ChannelGroup {
    FMOD_RESULT addGroup(FMOD::ChannelGroup*, bool, FMOD::DSPConnection**) = ios 0x57c008;
    FMOD_RESULT getChannel(int, FMOD::Channel**) = ios 0x57c610;
    FMOD_RESULT getGroup(int, FMOD::ChannelGroup**) = ios 0x57c210;
    FMOD_RESULT getName(char*, int) = ios 0x57c410;
    FMOD_RESULT getNumChannels(int*) = ios 0x57c538;
    FMOD_RESULT getNumGroups(int*) = ios 0x57c138;
    FMOD_RESULT getParentGroup(FMOD::ChannelGroup**) = ios 0x57c338;
    FMOD_RESULT release() = ios 0x57bf44;
}

[[link(win, android, mac)]]
class FMOD::DSP {
    FMOD_RESULT addInput(FMOD::DSP*, FMOD::DSPConnection**, FMOD_DSPCONNECTION_TYPE) = ios 0x5a78b0;
    FMOD_RESULT disconnectAll(bool, bool) = ios 0x5a7b48;
    FMOD_RESULT disconnectFrom(FMOD::DSP*, FMOD::DSPConnection*) = ios 0x5a7a1c;
    FMOD_RESULT getActive(bool*) = ios 0x5a81e4;
    FMOD_RESULT getBypass(bool*) = ios 0x5a83b0;
    FMOD_RESULT getChannelFormat(unsigned int*, int*, FMOD_SPEAKERMODE*) = ios 0x5a88dc;
    FMOD_RESULT getCPUUsage(unsigned int*, unsigned int*) = ios 0x5aa5a4;
    FMOD_RESULT getDataParameterIndex(int, int*) = ios 0x5a9af8;
    FMOD_RESULT getIdle(bool*) = ios 0x5a9fc4;
    FMOD_RESULT getInfo(char*, unsigned int*, int*, int*, int*) = ios 0x5a9d38;
    FMOD_RESULT getInput(int, FMOD::DSP**, FMOD::DSPConnection**) = ios 0x5a7e30;
    FMOD_RESULT getMeteringEnabled(bool*, bool*) = ios 0x5aa354;
    FMOD_RESULT getMeteringInfo(FMOD_DSP_METERING_INFO*, FMOD_DSP_METERING_INFO*) = ios 0x5aa47c;
    FMOD_RESULT getNumInputs(int*) = ios 0x5a7c70;
    FMOD_RESULT getNumOutputs(int*) = ios 0x5a7d50;
    FMOD_RESULT getNumParameters(int*) = ios 0x5a9918;
    FMOD_RESULT getOutput(int, FMOD::DSP**, FMOD::DSPConnection**) = ios 0x5a7f9c;
    FMOD_RESULT getOutputChannelFormat(unsigned int, int, FMOD_SPEAKERMODE, unsigned int*, int*, FMOD_SPEAKERMODE*) = ios 0x5a8a40;
    FMOD_RESULT getParameterBool(int, bool*, char*, int) = ios 0x5a95e0;
    FMOD_RESULT getParameterData(int, void**, unsigned int*, char*, int) = ios 0x5a9764;
    FMOD_RESULT getParameterFloat(int, float*, char*, int) = ios 0x5a92d8;
    FMOD_RESULT getParameterInfo(int, FMOD_DSP_PARAMETER_DESC**) = ios 0x5a99e0;
    FMOD_RESULT getParameterInt(int, int*, char*, int) = ios 0x5a945c;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x5a77e8;
    FMOD_RESULT getType(FMOD_DSP_TYPE*) = ios 0x5a9eec;
    FMOD_RESULT getUserData(void**) = ios 0x5aa164;
    FMOD_RESULT getWetDryMix(float*, float*, float*) = ios 0x5a8614;
    FMOD_RESULT release() = ios 0x5a771c;
    FMOD_RESULT reset() = ios 0x5a8c9c;
    FMOD_RESULT setActive(bool) = ios 0x5a8108;
    FMOD_RESULT setBypass(bool) = ios 0x5a82d8;
    FMOD_RESULT setCallback(FMOD_DSP_CALLBACK) = ios 0x5a8d60;
    FMOD_RESULT setChannelFormat(unsigned int, int, FMOD_SPEAKERMODE) = ios 0x5a8778;
    FMOD_RESULT setMeteringEnabled(bool, bool) = ios 0x5aa22c;
    FMOD_RESULT setParameterBool(int, bool) = ios 0x5a906c;
    FMOD_RESULT setParameterData(int, void*, unsigned int) = ios 0x5a9184;
    FMOD_RESULT setParameterFloat(int, float) = ios 0x2e627c;
    FMOD_RESULT setParameterInt(int, int) = ios 0x5a8f54;
    FMOD_RESULT setUserData(void*) = ios 0x5aa09c;
    FMOD_RESULT setWetDryMix(float, float, float) = ios 0x5a84a4;
    FMOD_RESULT showConfigDialog(void*, bool) = ios 0x5a9c10;
}

[[link(win, android, mac)]]
class FMOD::DSPConnection {
    FMOD_RESULT getInput(FMOD::DSP**) = ios 0x5ad50c;
    FMOD_RESULT getMix(float*) = ios 0x5ad7a8;
    FMOD_RESULT getMixMatrix(float*, int*, int*, int) = ios 0x5ada1c;
    FMOD_RESULT getOutput(FMOD::DSP**) = ios 0x5ad5e4;
    FMOD_RESULT getType(FMOD_DSPCONNECTION_TYPE*) = ios 0x5adbb0;
    FMOD_RESULT getUserData(void**) = ios 0x5add60;
    FMOD_RESULT setMix(float) = ios 0x5ad6bc;
    FMOD_RESULT setMixMatrix(float*, int, int, int) = ios 0x5ad880;
    FMOD_RESULT setUserData(void*) = ios 0x5adc88;
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
    FMOD_RESULT getActive(bool*) = ios 0x5dfdfc;
    FMOD_RESULT getProperties(FMOD_REVERB_PROPERTIES*) = ios 0x5dfc74;
    FMOD_RESULT getUserData(void**) = ios 0x5dff84;
    FMOD_RESULT release() = ios 0x5df8dc;
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, float, float) = ios 0x5df990;
    FMOD_RESULT setActive(bool) = ios 0x5dfd38;
    FMOD_RESULT setProperties(FMOD_REVERB_PROPERTIES const*) = ios 0x5dfbb0;
    FMOD_RESULT setUserData(void*) = ios 0x5dfec0;
}

[[link(win, android, mac)]]
class FMOD::Sound {
    FMOD_RESULT addSyncPoint(unsigned int, unsigned int, char const*, FMOD_SYNCPOINT**) = ios 0x5e38a4;
    FMOD_RESULT deleteSyncPoint(FMOD_SYNCPOINT*) = ios 0x5e3a78;
    FMOD_RESULT get3DConeSettings(float*, float*, float*) = ios 0x5e1f20;
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*) = ios 0x5e2230;
    FMOD_RESULT get3DMinMaxDistance(float*, float*) = ios 0x5e1c08;
    FMOD_RESULT getDefaults(float*, int*) = ios 0x5e195c;
    FMOD_RESULT getFormat(FMOD_SOUND_TYPE*, FMOD_SOUND_FORMAT*, int*, int*) = ios 0x5e2804;
    FMOD_RESULT getLength(unsigned int*, unsigned int) = ios 0x5e26a4;
    FMOD_RESULT getLoopCount(int*) = ios 0x5e3ea4;
    FMOD_RESULT getLoopPoints(unsigned int*, unsigned int, unsigned int*, unsigned int) = ios 0x5e416c;
    FMOD_RESULT getMode(unsigned int*) = ios 0x5e3c98;
    FMOD_RESULT getMusicChannelVolume(int, float*) = ios 0x5e45d0;
    FMOD_RESULT getMusicNumChannels(int*) = ios 0x5e4338;
    FMOD_RESULT getMusicSpeed(float*) = ios 0x5e4870;
    FMOD_RESULT getName(char*, int) = ios 0x5e2544;
    FMOD_RESULT getNumSubSounds(int*) = ios 0x5e29bc;
    FMOD_RESULT getNumSyncPoints(int*) = ios 0x5e3438;
    FMOD_RESULT getNumTags(int*, int*) = ios 0x5e2ab8;
    FMOD_RESULT getOpenState(FMOD_OPENSTATE*, unsigned int*, bool*, bool*) = ios 0x5e2db4;
    FMOD_RESULT getSoundGroup(FMOD::SoundGroup**) = ios 0x5e333c;
    FMOD_RESULT getSubSound(int, FMOD::Sound**) = ios 0x5e2390;
    FMOD_RESULT getSubSoundParent(FMOD::Sound**) = ios 0x5e24fc;
    FMOD_RESULT getSyncPoint(int, FMOD_SYNCPOINT**) = ios 0x5e3548;
    FMOD_RESULT getSyncPointInfo(FMOD_SYNCPOINT*, char*, int, unsigned int*, unsigned int) = ios 0x5e36a8;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x5e12c4;
    FMOD_RESULT getTag(char const*, int, FMOD_TAG*) = ios 0x5e2c18;
    FMOD_RESULT getUserData(void**) = ios 0x5e4a64;
    FMOD_RESULT lock(unsigned int, unsigned int, void**, void**, unsigned int*, unsigned int*) = ios 0x5e1394;
    FMOD_RESULT readData(void*, unsigned int, unsigned int*) = ios 0x5e2f54;
    FMOD_RESULT release() = ios 0x5e11d4;
    FMOD_RESULT seekData(unsigned int) = ios 0x5e30f0;
    FMOD_RESULT set3DConeSettings(float, float, float) = ios 0x5e1d68;
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int) = ios 0x5e20bc;
    FMOD_RESULT set3DMinMaxDistance(float, float) = ios 0x5e1aa8;
    FMOD_RESULT setDefaults(float, int) = ios 0x5e17f4;
    FMOD_RESULT setLoopCount(int) = ios 0x5e3d94;
    FMOD_RESULT setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int) = ios 0x5e3fa0;
    FMOD_RESULT setMode(unsigned int) = ios 0x5e3b88;
    FMOD_RESULT setMusicChannelVolume(int, float) = ios 0x5e445c;
    FMOD_RESULT setMusicSpeed(float) = ios 0x5e4744;
    FMOD_RESULT setSoundGroup(FMOD::SoundGroup*) = ios 0x5e3200;
    FMOD_RESULT setUserData(void*) = ios 0x5e4994;
    FMOD_RESULT unlock(void*, void*, unsigned int, unsigned int) = ios 0x5e1628;
}

[[link(win, android, mac)]]
class FMOD::SoundGroup {
    FMOD_RESULT getMaxAudible(int*) = ios 0x5e5664;
    FMOD_RESULT getMaxAudibleBehavior(FMOD_SOUNDGROUP_BEHAVIOR*) = ios 0x5e5814;
    FMOD_RESULT getMuteFadeSpeed(float*) = ios 0x5e59cc;
    FMOD_RESULT getName(char*, int) = ios 0x5e5d20;
    FMOD_RESULT getNumPlaying(int*) = ios 0x5e6048;
    FMOD_RESULT getNumSounds(int*) = ios 0x5e5e48;
    FMOD_RESULT getSound(int, FMOD::Sound**) = ios 0x5e5f20;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x5e54b4;
    FMOD_RESULT getUserData(void**) = ios 0x5e61f8;
    FMOD_RESULT getVolume(float*) = ios 0x5e5b84;
    FMOD_RESULT release() = ios 0x5e53f0;
    FMOD_RESULT setMaxAudible(int) = ios 0x5e558c;
    FMOD_RESULT setMaxAudibleBehavior(FMOD_SOUNDGROUP_BEHAVIOR) = ios 0x5e573c;
    FMOD_RESULT setMuteFadeSpeed(float) = ios 0x5e58ec;
    FMOD_RESULT setUserData(void*) = ios 0x5e6120;
    FMOD_RESULT setVolume(float) = ios 0x5e5aa4;
    FMOD_RESULT stop() = ios 0x5e5c5c;
}

[[link(win, android, mac)]]
class FMOD::System {
    FMOD_RESULT attachChannelGroupToPort(FMOD_PORT_TYPE, unsigned long long, FMOD::ChannelGroup*, bool) = ios 0x5ef824;
    FMOD_RESULT attachFileSystem(FMOD_FILE_OPEN_CALLBACK, FMOD_FILE_CLOSE_CALLBACK, FMOD_FILE_READ_CALLBACK, FMOD_FILE_SEEK_CALLBACK) = ios 0x5eb8e0;
    FMOD_RESULT close() = ios 0x5ed058;
    FMOD_RESULT createChannelGroup(char const*, FMOD::ChannelGroup**) = ios 0x5eede4;
    FMOD_RESULT createDSP(FMOD_DSP_DESCRIPTION const*, FMOD::DSP**) = ios 0x5eeb94;
    FMOD_RESULT createDSPByPlugin(unsigned int, FMOD::DSP**) = ios 0x5ec900;
    FMOD_RESULT createDSPByType(FMOD_DSP_TYPE, FMOD::DSP**) = ios 0x5eecbc;
    FMOD_RESULT createGeometry(int, int, FMOD::Geometry**) = ios 0x5f06a8;
    FMOD_RESULT createReverb3D(FMOD::Reverb3D**) = ios 0x5ef034;
    FMOD_RESULT createSound(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**) = ios 0x5ee88c;
    FMOD_RESULT createSoundGroup(char const*, FMOD::SoundGroup**) = ios 0x5eef0c;
    FMOD_RESULT createStream(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**) = ios 0x5eea10;
    FMOD_RESULT detachChannelGroupFromPort(FMOD::ChannelGroup*) = ios 0x5ef990;
    FMOD_RESULT get3DListenerAttributes(int, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*) = ios 0x5eddb0;
    FMOD_RESULT get3DNumListeners(int*) = ios 0x5edb14;
    FMOD_RESULT get3DSettings(float*, float*, float*) = ios 0x5ed8d8;
    FMOD_RESULT getAdvancedSettings(FMOD_ADVANCEDSETTINGS*) = ios 0x5ebb5c;
    FMOD_RESULT getChannel(int, FMOD::Channel**) = ios 0x5ef434;
    FMOD_RESULT getChannelsPlaying(int*, int*) = ios 0x5ee558;
    FMOD_RESULT getCPUUsage(FMOD_CPU_USAGE*) = ios 0x5ee670;
    FMOD_RESULT getDefaultMixMatrix(FMOD_SPEAKERMODE, FMOD_SPEAKERMODE, float*, int) = ios 0x5ee2b4;
    FMOD_RESULT getDriver(int*) = ios 0x5eae78;
    FMOD_RESULT getDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*) = ios 0x5eab0c;
    FMOD_RESULT getDSPBufferSize(unsigned int*, int*) = ios 0x5eb508;
    FMOD_RESULT getDSPInfoByPlugin(unsigned int, FMOD_DSP_DESCRIPTION const**) = ios 0x5eca28;
    FMOD_RESULT getDSPInfoByType(FMOD_DSP_TYPE, FMOD_DSP_DESCRIPTION const**) = ios 0x5ef55c;
    FMOD_RESULT getFileUsage(long long*, long long*, long long*) = ios 0x5ee738;
    FMOD_RESULT getGeometryOcclusion(FMOD_VECTOR const*, FMOD_VECTOR const*, float*, float*) = ios 0x5f0b28;
    FMOD_RESULT getGeometrySettings(float*) = ios 0x5f08ec;
    FMOD_RESULT getMasterChannelGroup(FMOD::ChannelGroup**) = ios 0x5ef684;
    FMOD_RESULT getMasterSoundGroup(FMOD::SoundGroup**) = ios 0x5ef74c;
    FMOD_RESULT getNestedPlugin(unsigned int, int, unsigned int*) = ios 0x5ec19c;
    FMOD_RESULT getNetworkProxy(char*, int) = ios 0x5f0d94;
    FMOD_RESULT getNetworkTimeout(int*) = ios 0x5f0f94;
    FMOD_RESULT getNumDrivers(int*) = ios 0x5eaa34;
    FMOD_RESULT getNumNestedPlugins(unsigned int, int*) = ios 0x5ec074;
    FMOD_RESULT getNumPlugins(FMOD_PLUGINTYPE, int*) = ios 0x5ec300;
    FMOD_RESULT getOutput(FMOD_OUTPUTTYPE*) = ios 0x5ea95c;
    FMOD_RESULT getOutputByPlugin(unsigned int*) = ios 0x5ec828;
    FMOD_RESULT getOutputHandle(void**) = ios 0x5ee480;
    FMOD_RESULT getPluginHandle(FMOD_PLUGINTYPE, int, unsigned int*) = ios 0x5ec428;
    FMOD_RESULT getPluginInfo(unsigned int, FMOD_PLUGINTYPE*, char*, int, unsigned int*) = ios 0x5ec58c;
    FMOD_RESULT getRecordDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*, unsigned int*) = ios 0x5eff48;
    FMOD_RESULT getRecordNumDrivers(int*, int*) = ios 0x5efe20;
    FMOD_RESULT getRecordPosition(int, unsigned int*) = ios 0x5f021c;
    FMOD_RESULT getReverbProperties(int, FMOD_REVERB_PROPERTIES*) = ios 0x5efb90;
    FMOD_RESULT getSoftwareChannels(int*) = ios 0x5eb028;
    FMOD_RESULT getSoftwareFormat(int*, FMOD_SPEAKERMODE*, int*) = ios 0x5eb264;
    FMOD_RESULT getSpeakerModeChannels(FMOD_SPEAKERMODE, int*) = ios 0x5ee1d8;
    FMOD_RESULT getSpeakerPosition(FMOD_SPEAKER, float*, float*, bool*) = ios 0x5ed388;
    FMOD_RESULT getStreamBufferSize(unsigned int*, unsigned int*) = ios 0x5ed644;
    FMOD_RESULT getUserData(void**) = ios 0x5f1134;
    FMOD_RESULT getVersion(unsigned int*) = ios 0x5ee3a8;
    FMOD_RESULT init(int, unsigned int, void*) = ios 0x5ecf04;
    FMOD_RESULT isRecording(int, bool*) = ios 0x5f0580;
    FMOD_RESULT loadGeometry(void const*, int, FMOD::Geometry**) = ios 0x5f09c4;
    FMOD_RESULT loadPlugin(char const*, unsigned int*, unsigned int) = ios 0x5ebe38;
    FMOD_RESULT lockDSP() = ios 0x5efcb8;
    FMOD_RESULT mixerResume() = ios 0x5ee114;
    FMOD_RESULT mixerSuspend() = ios 0x5ee050;
    FMOD_RESULT playDSP(FMOD::DSP*, FMOD::ChannelGroup*, bool, FMOD::Channel**) = ios 0x5ef2a0;
    FMOD_RESULT playSound(FMOD::Sound*, FMOD::ChannelGroup*, bool, FMOD::Channel**) = ios 0x5ef10c;
    FMOD_RESULT recordStart(int, FMOD::Sound*, bool) = ios 0x5f0344;
    FMOD_RESULT recordStop(int) = ios 0x5f04a8;
    FMOD_RESULT registerCodec(FMOD_CODEC_DESCRIPTION*, unsigned int*, unsigned int) = ios 0x5ecb50;
    FMOD_RESULT registerDSP(FMOD_DSP_DESCRIPTION const*, unsigned int*) = ios 0x5eccb4;
    FMOD_RESULT registerOutput(FMOD_OUTPUT_DESCRIPTION const*, unsigned int*) = ios 0x5ecddc;
    FMOD_RESULT release() = ios 0x5ea7ac;
    FMOD_RESULT set3DListenerAttributes(int, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*) = ios 0x5edbec;
    FMOD_RESULT set3DNumListeners(int) = ios 0x5eda3c;
    FMOD_RESULT set3DRolloffCallback(FMOD_3D_ROLLOFF_CALLBACK) = ios 0x5edf74;
    FMOD_RESULT set3DSettings(float, float, float) = ios 0x5ed76c;
    FMOD_RESULT setAdvancedSettings(FMOD_ADVANCEDSETTINGS*) = ios 0x5eba84;
    FMOD_RESULT setCallback(FMOD_SYSTEM_CALLBACK, unsigned int) = ios 0x5ebc34;
    FMOD_RESULT setDriver(int) = ios 0x5eada0;
    FMOD_RESULT setDSPBufferSize(unsigned int, int) = ios 0x5eb3e0;
    FMOD_RESULT setFileSystem(FMOD_FILE_OPEN_CALLBACK, FMOD_FILE_CLOSE_CALLBACK, FMOD_FILE_READ_CALLBACK, FMOD_FILE_SEEK_CALLBACK, FMOD_FILE_ASYNCREAD_CALLBACK, FMOD_FILE_ASYNCCANCEL_CALLBACK, int) = ios 0x5eb630;
    FMOD_RESULT setGeometrySettings(float) = ios 0x5f080c;
    FMOD_RESULT setNetworkProxy(char const*) = ios 0x5f0cbc;
    FMOD_RESULT setNetworkTimeout(int) = ios 0x5f0ebc;
    FMOD_RESULT setOutput(FMOD_OUTPUTTYPE) = ios 0x5ea884;
    FMOD_RESULT setOutputByPlugin(unsigned int) = ios 0x5ec750;
    FMOD_RESULT setPluginPath(char const*) = ios 0x5ebd60;
    FMOD_RESULT setReverbProperties(int, FMOD_REVERB_PROPERTIES const*) = ios 0x5efa68;
    FMOD_RESULT setSoftwareChannels(int) = ios 0x5eaf50;
    FMOD_RESULT setSoftwareFormat(int, FMOD_SPEAKERMODE, int) = ios 0x5eb100;
    FMOD_RESULT setSpeakerPosition(FMOD_SPEAKER, float, float, bool) = ios 0x5ed1f4;
    FMOD_RESULT setStreamBufferSize(unsigned int, unsigned int) = ios 0x5ed51c;
    FMOD_RESULT setUserData(void*) = ios 0x5f106c;
    FMOD_RESULT unloadPlugin(unsigned int) = ios 0x5ebf9c;
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
