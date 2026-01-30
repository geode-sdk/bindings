[[link(win, android, mac)]]
class FMOD::Channel {
    FMOD_RESULT getPosition(unsigned int*, unsigned int) = ios 0x4552dc;
    FMOD_RESULT getPriority(int*) = ios 0x4550d0;
    FMOD_RESULT setPosition(unsigned int, unsigned int) = ios 0x4551b4;
    FMOD_RESULT setPriority(int) = ios 0x454ff8;
    FMOD_RESULT getFrequency(float*) = ios 0x4556ac;
    FMOD_RESULT getLoopCount(int*) = ios 0x455b1c;
    FMOD_RESULT setFrequency(float) = ios 0x4555cc;
    FMOD_RESULT setLoopCount(int) = ios 0x455a44;
    FMOD_RESULT getLoopPoints(unsigned int*, unsigned int, unsigned int*, unsigned int) = ios 0x455d94;
    FMOD_RESULT setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int) = ios 0x455c00;
    FMOD_RESULT getChannelGroup(FMOD::ChannelGroup**) = ios 0x4554e8;
    FMOD_RESULT getCurrentSound(FMOD::Sound**) = ios 0x45587c;
    FMOD_RESULT setChannelGroup(FMOD::ChannelGroup*) = ios 0x455410;
    FMOD_RESULT getIndex(int*) = ios 0x455960;
    FMOD_RESULT isVirtual(bool*) = ios 0x455790;
}

[[link(win, android, mac)]]
class FMOD::ChannelControl {
    FMOD_RESULT get3DLevel(float*) = ios 0x506c04;
    FMOD_RESULT getNumDSPs(int*) = ios 0x5057f4;
    FMOD_RESULT set3DLevel(float) = ios 0x506b1c;
    FMOD_RESULT get3DSpread(float*) = ios 0x506a3c;
    FMOD_RESULT getDSPClock(unsigned long long*, unsigned long long*) = ios 0x504ac0;
    FMOD_RESULT getDSPIndex(FMOD::DSP*, int*) = ios 0x505a04;
    FMOD_RESULT getUserData(void**) = ios 0x50725c;
    FMOD_RESULT set3DSpread(float) = ios 0x506954;
    FMOD_RESULT setCallback(FMOD_CHANNELCONTROL_CALLBACK) = ios 0x5040b8;
    FMOD_RESULT setDSPIndex(FMOD::DSP*, int) = ios 0x5058d4;
    FMOD_RESULT setUserData(void*) = ios 0x507184;
    FMOD_RESULT addFadePoint(unsigned long long, float) = ios 0x504f24;
    FMOD_RESULT getMixMatrix(float*, int*, int*, int) = ios 0x504924;
    FMOD_RESULT setMixMatrix(float*, int, int, int) = ios 0x504784;
    FMOD_RESULT getAudibility(float*) = ios 0x503668;
    FMOD_RESULT getFadePoints(unsigned int*, unsigned long long*, float*) = ios 0x5052d0;
    FMOD_RESULT getVolumeRamp(bool*) = ios 0x503588;
    FMOD_RESULT setVolumeRamp(bool) = ios 0x5034a8;
    FMOD_RESULT get3DOcclusion(float*, float*) = ios 0x506824;
    FMOD_RESULT getLowPassGain(float*) = ios 0x503e18;
    FMOD_RESULT set3DOcclusion(float, float) = ios 0x5066f4;
    FMOD_RESULT setLowPassGain(float) = ios 0x503d30;
    FMOD_RESULT get3DAttributes(FMOD_VECTOR*, FMOD_VECTOR*) = ios 0x505c64;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x502f80;
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, FMOD_VECTOR const*) = ios 0x505b34;
    FMOD_RESULT removeFadePoints(unsigned long long, unsigned long long) = ios 0x505194;
    FMOD_RESULT setFadePointRamp(unsigned long long, float) = ios 0x50505c;
    FMOD_RESULT get3DConeSettings(float*, float*, float*) = ios 0x506168;
    FMOD_RESULT get3DDopplerLevel(float*) = ios 0x506dcc;
    FMOD_RESULT set3DConeSettings(float, float, float) = ios 0x505ff4;
    FMOD_RESULT set3DDopplerLevel(float) = ios 0x506ce4;
    FMOD_RESULT setMixLevelsInput(float*, int) = ios 0x504654;
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*) = ios 0x5065c4;
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int) = ios 0x506494;
    FMOD_RESULT setMixLevelsOutput(float, float, float, float, float, float, float, float) = ios 0x504370;
    FMOD_RESULT get3DDistanceFilter(bool*, float*, float*) = ios 0x507018;
    FMOD_RESULT get3DMinMaxDistance(float*, float*) = ios 0x505ec4;
    FMOD_RESULT getReverbProperties(int, float*) = ios 0x503c00;
    FMOD_RESULT set3DDistanceFilter(bool, float, float) = ios 0x506eac;
    FMOD_RESULT set3DMinMaxDistance(float, float) = ios 0x505d94;
    FMOD_RESULT setReverbProperties(int, float) = ios 0x503ad0;
    FMOD_RESULT get3DConeOrientation(FMOD_VECTOR*) = ios 0x5063b4;
    FMOD_RESULT set3DConeOrientation(FMOD_VECTOR*) = ios 0x5062d4;
    FMOD_RESULT stop() = ios 0x503050;
    FMOD_RESULT addDSP(int, FMOD::DSP*) = ios 0x5055e4;
    FMOD_RESULT getDSP(int, FMOD::DSP**) = ios 0x5054b4;
    FMOD_RESULT setPan(float) = ios 0x504288;
    FMOD_RESULT getMode(unsigned int*) = ios 0x503fd8;
    FMOD_RESULT getMute(bool*) = ios 0x5039f0;
    FMOD_RESULT setMode(unsigned int) = ios 0x503ef8;
    FMOD_RESULT setMute(bool) = ios 0x503910;
    FMOD_RESULT getDelay(unsigned long long*, unsigned long long*, bool*) = ios 0x504d90;
    FMOD_RESULT getPitch(float*) = ios 0x503830;
    FMOD_RESULT setDelay(unsigned long long, unsigned long long, bool) = ios 0x504c18;
    FMOD_RESULT setPitch(float) = ios 0x503748;
    FMOD_RESULT getPaused(bool*) = ios 0x5031fc;
    FMOD_RESULT getVolume(float*) = ios 0x5033c8;
    FMOD_RESULT isPlaying(bool*) = ios 0x50419c;
    FMOD_RESULT removeDSP(FMOD::DSP*) = ios 0x505714;
    FMOD_RESULT setPaused(bool) = ios 0x50311c;
    FMOD_RESULT setVolume(float) = ios 0x5032dc;
}

[[link(win, android, mac)]]
class FMOD::ChannelGroup {
    FMOD_RESULT getChannel(int, FMOD::Channel**) = ios 0x459810;
    FMOD_RESULT getNumGroups(int*) = ios 0x459338;
    FMOD_RESULT getNumChannels(int*) = ios 0x459738;
    FMOD_RESULT getParentGroup(FMOD::ChannelGroup**) = ios 0x459538;
    FMOD_RESULT getName(char*, int) = ios 0x459610;
    FMOD_RESULT release() = ios 0x459144;
    FMOD_RESULT addGroup(FMOD::ChannelGroup*, bool, FMOD::DSPConnection**) = ios 0x459208;
    FMOD_RESULT getGroup(int, FMOD::ChannelGroup**) = ios 0x459410;
}

[[link(win, android, mac)]]
class FMOD::DSP {
    FMOD_RESULT getCPUUsage(unsigned int*, unsigned int*) = ios 0x4877a4;
    FMOD_RESULT getUserData(void**) = ios 0x487364;
    FMOD_RESULT setCallback(FMOD_DSP_CALLBACK) = ios 0x485f60;
    FMOD_RESULT setUserData(void*) = ios 0x48729c;
    FMOD_RESULT getNumInputs(int*) = ios 0x484e70;
    FMOD_RESULT getWetDryMix(float*, float*, float*) = ios 0x485814;
    FMOD_RESULT setWetDryMix(float, float, float) = ios 0x4856a4;
    FMOD_RESULT disconnectAll(bool, bool) = ios 0x484d48;
    FMOD_RESULT getNumOutputs(int*) = ios 0x484f50;
    FMOD_RESULT disconnectFrom(FMOD::DSP*, FMOD::DSPConnection*) = ios 0x484c1c;
    FMOD_RESULT getMeteringInfo(FMOD_DSP_METERING_INFO*, FMOD_DSP_METERING_INFO*) = ios 0x48767c;
    FMOD_RESULT getParameterInt(int, int*, char*, int) = ios 0x48665c;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x4849e8;
    FMOD_RESULT setParameterInt(int, int) = ios 0x486154;
    FMOD_RESULT getChannelFormat(unsigned int*, int*, FMOD_SPEAKERMODE*) = ios 0x485adc;
    FMOD_RESULT getNumParameters(int*) = ios 0x486b18;
    FMOD_RESULT getParameterBool(int, bool*, char*, int) = ios 0x4867e0;
    FMOD_RESULT getParameterData(int, void**, unsigned int*, char*, int) = ios 0x486964;
    FMOD_RESULT getParameterInfo(int, FMOD_DSP_PARAMETER_DESC**) = ios 0x486be0;
    FMOD_RESULT setChannelFormat(unsigned int, int, FMOD_SPEAKERMODE) = ios 0x485978;
    FMOD_RESULT setParameterBool(int, bool) = ios 0x48626c;
    FMOD_RESULT setParameterData(int, void*, unsigned int) = ios 0x486384;
    FMOD_RESULT showConfigDialog(void*, bool) = ios 0x486e10;
    FMOD_RESULT getParameterFloat(int, float*, char*, int) = ios 0x4864d8;
    FMOD_RESULT setParameterFloat(int, float) = ios 0x48603c;
    FMOD_RESULT getMeteringEnabled(bool*, bool*) = ios 0x487554;
    FMOD_RESULT setMeteringEnabled(bool, bool) = ios 0x48742c;
    FMOD_RESULT getDataParameterIndex(int, int*) = ios 0x486cf8;
    FMOD_RESULT getOutputChannelFormat(unsigned int, int, FMOD_SPEAKERMODE, unsigned int*, int*, FMOD_SPEAKERMODE*) = ios 0x485c40;
    FMOD_RESULT reset() = ios 0x485e9c;
    FMOD_RESULT getIdle(bool*) = ios 0x4871c4;
    FMOD_RESULT getInfo(char*, unsigned int*, int*, int*, int*) = ios 0x486f38;
    FMOD_RESULT getType(FMOD_DSP_TYPE*) = ios 0x4870ec;
    FMOD_RESULT release() = ios 0x48491c;
    FMOD_RESULT addInput(FMOD::DSP*, FMOD::DSPConnection**, FMOD_DSPCONNECTION_TYPE) = ios 0x484ab0;
    FMOD_RESULT getInput(int, FMOD::DSP**, FMOD::DSPConnection**) = ios 0x485030;
    FMOD_RESULT getActive(bool*) = ios 0x4853e4;
    FMOD_RESULT getBypass(bool*) = ios 0x4855b0;
    FMOD_RESULT getOutput(int, FMOD::DSP**, FMOD::DSPConnection**) = ios 0x48519c;
    FMOD_RESULT setActive(bool) = ios 0x485308;
    FMOD_RESULT setBypass(bool) = ios 0x4854d8;
}

[[link(win, android, mac)]]
class FMOD::DSPConnection {
    FMOD_RESULT getUserData(void**) = ios 0x48af60;
    FMOD_RESULT setUserData(void*) = ios 0x48ae88;
    FMOD_RESULT getMixMatrix(float*, int*, int*, int) = ios 0x48ac1c;
    FMOD_RESULT setMixMatrix(float*, int, int, int) = ios 0x48aa80;
    FMOD_RESULT getMix(float*) = ios 0x48a9a8;
    FMOD_RESULT setMix(float) = ios 0x48a8bc;
    FMOD_RESULT getType(FMOD_DSPCONNECTION_TYPE*) = ios 0x48adb0;
    FMOD_RESULT getInput(FMOD::DSP**) = ios 0x48a70c;
    FMOD_RESULT getOutput(FMOD::DSP**) = ios 0x48a7e4;
}

[[link(win, android, mac)]]
class FMOD::Geometry {
    FMOD_RESULT addPolygon(float, float, bool, int, FMOD_VECTOR const*, int*) = ios 0x4ad868;
    FMOD_RESULT getPosition(FMOD_VECTOR*) = ios 0x4adc3c;
    FMOD_RESULT getRotation(FMOD_VECTOR*, FMOD_VECTOR*) = ios 0x4adbbc;
    FMOD_RESULT getUserData(void**) = ios 0x4add70;
    FMOD_RESULT setPosition(FMOD_VECTOR const*) = ios 0x4adc00;
    FMOD_RESULT setRotation(FMOD_VECTOR const*, FMOD_VECTOR const*) = ios 0x4adb78;
    FMOD_RESULT setUserData(void*) = ios 0x4add34;
    FMOD_RESULT getMaxPolygons(int*, int*) = ios 0x4ad918;
    FMOD_RESULT getNumPolygons(int*) = ios 0x4ad8dc;
    FMOD_RESULT getPolygonVertex(int, int, FMOD_VECTOR*) = ios 0x4ad9f4;
    FMOD_RESULT setPolygonVertex(int, int, FMOD_VECTOR const*) = ios 0x4ad9a0;
    FMOD_RESULT getPolygonAttributes(int, float*, float*, bool*) = ios 0x4adaa4;
    FMOD_RESULT setPolygonAttributes(int, float, float, bool) = ios 0x4ada48;
    FMOD_RESULT getPolygonNumVertices(int, int*) = ios 0x4ad95c;
    FMOD_RESULT save(void*, int*) = ios 0x4adcf0;
    FMOD_RESULT release() = ios 0x4ad83c;
    FMOD_RESULT getScale(FMOD_VECTOR*) = ios 0x4adcb4;
    FMOD_RESULT setScale(FMOD_VECTOR const*) = ios 0x4adc78;
    FMOD_RESULT getActive(bool*) = ios 0x4adb3c;
    FMOD_RESULT setActive(bool) = ios 0x4adb00;
}

[[link(win, android, mac)]]
class FMOD::Reverb3D {
    FMOD_RESULT getUserData(void**) = ios 0x4bd184;
    FMOD_RESULT setUserData(void*) = ios 0x4bd0c0;
    FMOD_RESULT getProperties(FMOD_REVERB_PROPERTIES*) = ios 0x4bce74;
    FMOD_RESULT setProperties(FMOD_REVERB_PROPERTIES const*) = ios 0x4bcdb0;
    FMOD_RESULT get3DAttributes(FMOD_VECTOR*, float*, float*) = ios 0x4bcc60;
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, float, float) = ios 0x4bcb90;
    FMOD_RESULT release() = ios 0x4bcadc;
    FMOD_RESULT getActive(bool*) = ios 0x4bcffc;
    FMOD_RESULT setActive(bool) = ios 0x4bcf38;
}

[[link(win, android, mac)]]
class FMOD::Sound {
    FMOD_RESULT getNumTags(int*, int*) = ios 0x4bfcb8;
    FMOD_RESULT getDefaults(float*, int*) = ios 0x4beb5c;
    FMOD_RESULT getSubSound(int, FMOD::Sound**) = ios 0x4bf590;
    FMOD_RESULT getUserData(void**) = ios 0x4c1c64;
    FMOD_RESULT setDefaults(float, int) = ios 0x4be9f4;
    FMOD_RESULT setUserData(void*) = ios 0x4c1b94;
    FMOD_RESULT addSyncPoint(unsigned int, unsigned int, char const*, FMOD_SYNCPOINT**) = ios 0x4c0aa4;
    FMOD_RESULT getLoopCount(int*) = ios 0x4c10a4;
    FMOD_RESULT getOpenState(FMOD_OPENSTATE*, unsigned int*, bool*, bool*) = ios 0x4bffb4;
    FMOD_RESULT getSyncPoint(int, FMOD_SYNCPOINT**) = ios 0x4c0748;
    FMOD_RESULT setLoopCount(int) = ios 0x4c0f94;
    FMOD_RESULT getLoopPoints(unsigned int*, unsigned int, unsigned int*, unsigned int) = ios 0x4c136c;
    FMOD_RESULT getMusicSpeed(float*) = ios 0x4c1a70;
    FMOD_RESULT getSoundGroup(FMOD::SoundGroup**) = ios 0x4c053c;
    FMOD_RESULT setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int) = ios 0x4c11a0;
    FMOD_RESULT setMusicSpeed(float) = ios 0x4c1944;
    FMOD_RESULT setSoundGroup(FMOD::SoundGroup*) = ios 0x4c0400;
    FMOD_RESULT deleteSyncPoint(FMOD_SYNCPOINT*) = ios 0x4c0c78;
    FMOD_RESULT getNumSubSounds(int*) = ios 0x4bfbbc;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x4be4c4;
    FMOD_RESULT getNumSyncPoints(int*) = ios 0x4c0638;
    FMOD_RESULT getSyncPointInfo(FMOD_SYNCPOINT*, char*, int, unsigned int*, unsigned int) = ios 0x4c08a8;
    FMOD_RESULT get3DConeSettings(float*, float*, float*) = ios 0x4bf120;
    FMOD_RESULT getSubSoundParent(FMOD::Sound**) = ios 0x4bf6fc;
    FMOD_RESULT set3DConeSettings(float, float, float) = ios 0x4bef68;
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*) = ios 0x4bf430;
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int) = ios 0x4bf2bc;
    FMOD_RESULT get3DMinMaxDistance(float*, float*) = ios 0x4bee08;
    FMOD_RESULT getMusicNumChannels(int*) = ios 0x4c1538;
    FMOD_RESULT set3DMinMaxDistance(float, float) = ios 0x4beca8;
    FMOD_RESULT getMusicChannelVolume(int, float*) = ios 0x4c17d0;
    FMOD_RESULT setMusicChannelVolume(int, float) = ios 0x4c165c;
    FMOD_RESULT lock(unsigned int, unsigned int, void**, void**, unsigned int*, unsigned int*) = ios 0x4be594;
    FMOD_RESULT getTag(char const*, int, FMOD_TAG*) = ios 0x4bfe18;
    FMOD_RESULT unlock(void*, void*, unsigned int, unsigned int) = ios 0x4be828;
    FMOD_RESULT getMode(unsigned int*) = ios 0x4c0e98;
    FMOD_RESULT getName(char*, int) = ios 0x4bf744;
    FMOD_RESULT release() = ios 0x4be3d4;
    FMOD_RESULT setMode(unsigned int) = ios 0x4c0d88;
    FMOD_RESULT readData(void*, unsigned int, unsigned int*) = ios 0x4c0154;
    FMOD_RESULT seekData(unsigned int) = ios 0x4c02f0;
    FMOD_RESULT getFormat(FMOD_SOUND_TYPE*, FMOD_SOUND_FORMAT*, int*, int*) = ios 0x4bfa04;
    FMOD_RESULT getLength(unsigned int*, unsigned int) = ios 0x4bf8a4;
}

[[link(win, android, mac)]]
class FMOD::SoundGroup {
    FMOD_RESULT getUserData(void**) = ios 0x4c33f8;
    FMOD_RESULT setUserData(void*) = ios 0x4c3320;
    FMOD_RESULT getNumSounds(int*) = ios 0x4c3048;
    FMOD_RESULT getMaxAudible(int*) = ios 0x4c2864;
    FMOD_RESULT getNumPlaying(int*) = ios 0x4c3248;
    FMOD_RESULT setMaxAudible(int) = ios 0x4c278c;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x4c26b4;
    FMOD_RESULT getMuteFadeSpeed(float*) = ios 0x4c2bcc;
    FMOD_RESULT setMuteFadeSpeed(float) = ios 0x4c2aec;
    FMOD_RESULT getMaxAudibleBehavior(FMOD_SOUNDGROUP_BEHAVIOR*) = ios 0x4c2a14;
    FMOD_RESULT setMaxAudibleBehavior(FMOD_SOUNDGROUP_BEHAVIOR) = ios 0x4c293c;
    FMOD_RESULT stop() = ios 0x4c2e5c;
    FMOD_RESULT getName(char*, int) = ios 0x4c2f20;
    FMOD_RESULT release() = ios 0x4c25f0;
    FMOD_RESULT getSound(int, FMOD::Sound**) = ios 0x4c3120;
    FMOD_RESULT getVolume(float*) = ios 0x4c2d84;
    FMOD_RESULT setVolume(float) = ios 0x4c2ca4;
}

[[link(win, android, mac)]]
class FMOD::System {
    FMOD_RESULT getChannel(int, FMOD::Channel**) = ios 0x4cc634;
    FMOD_RESULT getVersion(unsigned int*) = ios 0x4cb5a8;
    FMOD_RESULT loadPlugin(char const*, unsigned int*, unsigned int) = ios 0x4c9038;
    FMOD_RESULT recordStop(int) = ios 0x4cd6a8;
    FMOD_RESULT createSound(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**) = ios 0x4cba8c;
    FMOD_RESULT getCPUUsage(FMOD_CPU_USAGE*) = ios 0x4cb870;
    FMOD_RESULT getUserData(void**) = ios 0x4ce334;
    FMOD_RESULT isRecording(int, bool*) = ios 0x4cd780;
    FMOD_RESULT mixerResume() = ios 0x4cb314;
    FMOD_RESULT recordStart(int, FMOD::Sound*, bool) = ios 0x4cd544;
    FMOD_RESULT registerDSP(FMOD_DSP_DESCRIPTION const*, unsigned int*) = ios 0x4c9eb4;
    FMOD_RESULT setCallback(FMOD_SYSTEM_CALLBACK, unsigned int) = ios 0x4c8e34;
    FMOD_RESULT setUserData(void*) = ios 0x4ce26c;
    FMOD_RESULT createStream(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**) = ios 0x4cbc10;
    FMOD_RESULT getFileUsage(long long*, long long*, long long*) = ios 0x4cb938;
    FMOD_RESULT loadGeometry(void const*, int, FMOD::Geometry**) = ios 0x4cdbc4;
    FMOD_RESULT mixerSuspend() = ios 0x4cb250;
    FMOD_RESULT unloadPlugin(unsigned int) = ios 0x4c919c;
    FMOD_RESULT get3DSettings(float*, float*, float*) = ios 0x4caad8;
    FMOD_RESULT getDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*) = ios 0x4c7d0c;
    FMOD_RESULT getNumDrivers(int*) = ios 0x4c7c34;
    FMOD_RESULT getNumPlugins(FMOD_PLUGINTYPE, int*) = ios 0x4c9500;
    FMOD_RESULT getPluginInfo(unsigned int, FMOD_PLUGINTYPE*, char*, int, unsigned int*) = ios 0x4c978c;
    FMOD_RESULT registerCodec(FMOD_CODEC_DESCRIPTION*, unsigned int*, unsigned int) = ios 0x4c9d50;
    FMOD_RESULT set3DSettings(float, float, float) = ios 0x4ca96c;
    FMOD_RESULT setFileSystem(FMOD_FILE_OPEN_CALLBACK, FMOD_FILE_CLOSE_CALLBACK, FMOD_FILE_READ_CALLBACK, FMOD_FILE_SEEK_CALLBACK, FMOD_FILE_ASYNCREAD_CALLBACK, FMOD_FILE_ASYNCCANCEL_CALLBACK, int) = ios 0x4c8830;
    FMOD_RESULT setPluginPath(char const*) = ios 0x4c8f60;
    FMOD_RESULT createGeometry(int, int, FMOD::Geometry**) = ios 0x4cd8a8;
    FMOD_RESULT createReverb3D(FMOD::Reverb3D**) = ios 0x4cc234;
    FMOD_RESULT registerOutput(FMOD_OUTPUT_DESCRIPTION const*, unsigned int*) = ios 0x4c9fdc;
    FMOD_RESULT createDSPByType(FMOD_DSP_TYPE, FMOD::DSP**) = ios 0x4cbebc;
    FMOD_RESULT getNestedPlugin(unsigned int, int, unsigned int*) = ios 0x4c939c;
    FMOD_RESULT getNetworkProxy(char*, int) = ios 0x4cdf94;
    FMOD_RESULT getOutputHandle(void**) = ios 0x4cb680;
    FMOD_RESULT getPluginHandle(FMOD_PLUGINTYPE, int, unsigned int*) = ios 0x4c9628;
    FMOD_RESULT setNetworkProxy(char const*) = ios 0x4cdebc;
    FMOD_RESULT attachFileSystem(FMOD_FILE_OPEN_CALLBACK, FMOD_FILE_CLOSE_CALLBACK, FMOD_FILE_READ_CALLBACK, FMOD_FILE_SEEK_CALLBACK) = ios 0x4c8ae0;
    FMOD_RESULT createSoundGroup(char const*, FMOD::SoundGroup**) = ios 0x4cc10c;
    FMOD_RESULT getDSPBufferSize(unsigned int*, int*) = ios 0x4c8708;
    FMOD_RESULT getDSPInfoByType(FMOD_DSP_TYPE, FMOD_DSP_DESCRIPTION const**) = ios 0x4cc75c;
    FMOD_RESULT setDSPBufferSize(unsigned int, int) = ios 0x4c85e0;
    FMOD_RESULT createDSPByPlugin(unsigned int, FMOD::DSP**) = ios 0x4c9b00;
    FMOD_RESULT get3DNumListeners(int*) = ios 0x4cad14;
    FMOD_RESULT getNetworkTimeout(int*) = ios 0x4ce194;
    FMOD_RESULT getOutputByPlugin(unsigned int*) = ios 0x4c9a28;
    FMOD_RESULT getRecordPosition(int, unsigned int*) = ios 0x4cd41c;
    FMOD_RESULT getSoftwareFormat(int*, FMOD_SPEAKERMODE*, int*) = ios 0x4c8464;
    FMOD_RESULT set3DNumListeners(int) = ios 0x4cac3c;
    FMOD_RESULT setNetworkTimeout(int) = ios 0x4ce0bc;
    FMOD_RESULT setOutputByPlugin(unsigned int) = ios 0x4c9950;
    FMOD_RESULT setSoftwareFormat(int, FMOD_SPEAKERMODE, int) = ios 0x4c8300;
    FMOD_RESULT createChannelGroup(char const*, FMOD::ChannelGroup**) = ios 0x4cbfe4;
    FMOD_RESULT getChannelsPlaying(int*, int*) = ios 0x4cb758;
    FMOD_RESULT getDSPInfoByPlugin(unsigned int, FMOD_DSP_DESCRIPTION const**) = ios 0x4c9c28;
    FMOD_RESULT getSpeakerPosition(FMOD_SPEAKER, float*, float*, bool*) = ios 0x4ca588;
    FMOD_RESULT setSpeakerPosition(FMOD_SPEAKER, float, float, bool) = ios 0x4ca3f4;
    FMOD_RESULT getAdvancedSettings(FMOD_ADVANCEDSETTINGS*) = ios 0x4c8d5c;
    FMOD_RESULT getDefaultMixMatrix(FMOD_SPEAKERMODE, FMOD_SPEAKERMODE, float*, int) = ios 0x4cb4b4;
    FMOD_RESULT getGeometrySettings(float*) = ios 0x4cdaec;
    FMOD_RESULT getMasterSoundGroup(FMOD::SoundGroup**) = ios 0x4cc94c;
    FMOD_RESULT getNumNestedPlugins(unsigned int, int*) = ios 0x4c9274;
    FMOD_RESULT getRecordDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*, unsigned int*) = ios 0x4cd148;
    FMOD_RESULT getRecordNumDrivers(int*, int*) = ios 0x4cd020;
    FMOD_RESULT getReverbProperties(int, FMOD_REVERB_PROPERTIES*) = ios 0x4ccd90;
    FMOD_RESULT getSoftwareChannels(int*) = ios 0x4c8228;
    FMOD_RESULT getStreamBufferSize(unsigned int*, unsigned int*) = ios 0x4ca844;
    FMOD_RESULT setAdvancedSettings(FMOD_ADVANCEDSETTINGS*) = ios 0x4c8c84;
    FMOD_RESULT setGeometrySettings(float) = ios 0x4cda0c;
    FMOD_RESULT setReverbProperties(int, FMOD_REVERB_PROPERTIES const*) = ios 0x4ccc68;
    FMOD_RESULT setSoftwareChannels(int) = ios 0x4c8150;
    FMOD_RESULT setStreamBufferSize(unsigned int, unsigned int) = ios 0x4ca71c;
    FMOD_RESULT getGeometryOcclusion(FMOD_VECTOR const*, FMOD_VECTOR const*, float*, float*) = ios 0x4cdd28;
    FMOD_RESULT set3DRolloffCallback(FMOD_3D_ROLLOFF_CALLBACK) = ios 0x4cb174;
    FMOD_RESULT getMasterChannelGroup(FMOD::ChannelGroup**) = ios 0x4cc884;
    FMOD_RESULT getSpeakerModeChannels(FMOD_SPEAKERMODE, int*) = ios 0x4cb3d8;
    FMOD_RESULT get3DListenerAttributes(int, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*) = ios 0x4cafb0;
    FMOD_RESULT set3DListenerAttributes(int, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*) = ios 0x4cadec;
    FMOD_RESULT attachChannelGroupToPort(FMOD_PORT_TYPE, unsigned long long, FMOD::ChannelGroup*, bool) = ios 0x4cca24;
    FMOD_RESULT detachChannelGroupFromPort(FMOD::ChannelGroup*) = ios 0x4ccb90;
    FMOD_RESULT init(int, unsigned int, void*) = ios 0x4ca104;
    FMOD_RESULT close() = ios 0x4ca258;
    FMOD_RESULT update() = ios 0x4ca330;
    FMOD_RESULT lockDSP() = ios 0x4cceb8;
    FMOD_RESULT playDSP(FMOD::DSP*, FMOD::ChannelGroup*, bool, FMOD::Channel**) = ios 0x4cc4a0;
    FMOD_RESULT release() = ios 0x4c79ac;
    FMOD_RESULT createDSP(FMOD_DSP_DESCRIPTION const*, FMOD::DSP**) = ios 0x4cbd94;
    FMOD_RESULT getDriver(int*) = ios 0x4c8078;
    FMOD_RESULT getOutput(FMOD_OUTPUTTYPE*) = ios 0x4c7b5c;
    FMOD_RESULT playSound(FMOD::Sound*, FMOD::ChannelGroup*, bool, FMOD::Channel**) = ios 0x4cc30c;
    FMOD_RESULT setDriver(int) = ios 0x4c7fa0;
    FMOD_RESULT setOutput(FMOD_OUTPUTTYPE) = ios 0x4c7a84;
    FMOD_RESULT unlockDSP() = ios 0x4ccf6c;
}

[[link(win, android, mac)]]
FMOD_RESULT FMOD_Debug_Initialize(unsigned int, FMOD_DEBUG_MODE, FMOD_DEBUG_CALLBACK, char const*) = ios 0x484894;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_File_GetDiskBusy(int*) = ios 0x4a8ecc;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_File_SetDiskBusy(int) = ios 0x4a8e7c;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Memory_GetStats(int*, int*, int) = ios 0x4526e8;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Memory_Initialize(void*, int, FMOD_MEMORY_ALLOC_CALLBACK, FMOD_MEMORY_REALLOC_CALLBACK, FMOD_MEMORY_FREE_CALLBACK, unsigned int) = ios 0x4525a8;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_System_Create(FMOD_SYSTEM**, unsigned int) = ios 0x4527cc;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Thread_SetAttributes(FMOD_THREAD_TYPE, long long, int, unsigned int) = ios 0x4d51dc;
