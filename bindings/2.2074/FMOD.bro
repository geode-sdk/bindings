[[link(win, android, mac)]]
class FMOD::Channel {
    FMOD_RESULT getPosition(unsigned int*, unsigned int) = ios 0x44cf08;
    FMOD_RESULT getPriority(int*) = ios 0x44ccfc;
    FMOD_RESULT setPosition(unsigned int, unsigned int) = ios 0x44cde0;
    FMOD_RESULT setPriority(int) = ios 0x44cc24;
    FMOD_RESULT getFrequency(float*) = ios 0x44d2d8;
    FMOD_RESULT getLoopCount(int*) = ios 0x44d748;
    FMOD_RESULT setFrequency(float) = ios 0x44d1f8;
    FMOD_RESULT setLoopCount(int) = ios 0x44d670;
    FMOD_RESULT getLoopPoints(unsigned int*, unsigned int, unsigned int*, unsigned int) = ios 0x44d9c0;
    FMOD_RESULT setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int) = ios 0x44d82c;
    FMOD_RESULT getChannelGroup(FMOD::ChannelGroup**) = ios 0x44d114;
    FMOD_RESULT getCurrentSound(FMOD::Sound**) = ios 0x44d4a8;
    FMOD_RESULT setChannelGroup(FMOD::ChannelGroup*) = ios 0x44d03c;
    FMOD_RESULT getIndex(int*) = ios 0x44d58c;
    FMOD_RESULT isVirtual(bool*) = ios 0x44d3bc;
}

[[link(win, android, mac)]]
class FMOD::ChannelControl {
    FMOD_RESULT get3DLevel(float*) = ios 0x4fe6dc;
    FMOD_RESULT getNumDSPs(int*) = ios 0x4fd2cc;
    FMOD_RESULT set3DLevel(float) = ios 0x4fe5f4;
    FMOD_RESULT get3DSpread(float*) = ios 0x4fe514;
    FMOD_RESULT getDSPClock(unsigned long long*, unsigned long long*) = ios 0x4fc598;
    FMOD_RESULT getDSPIndex(FMOD::DSP*, int*) = ios 0x4fd4dc;
    FMOD_RESULT getUserData(void**) = ios 0x4fed34;
    FMOD_RESULT set3DSpread(float) = ios 0x4fe42c;
    FMOD_RESULT setCallback(FMOD_CHANNELCONTROL_CALLBACK) = ios 0x4fbb90;
    FMOD_RESULT setDSPIndex(FMOD::DSP*, int) = ios 0x4fd3ac;
    FMOD_RESULT setUserData(void*) = ios 0x4fec5c;
    FMOD_RESULT addFadePoint(unsigned long long, float) = ios 0x4fc9fc;
    FMOD_RESULT getMixMatrix(float*, int*, int*, int) = ios 0x4fc3fc;
    FMOD_RESULT setMixMatrix(float*, int, int, int) = ios 0x4fc25c;
    FMOD_RESULT getAudibility(float*) = ios 0x4fb140;
    FMOD_RESULT getFadePoints(unsigned int*, unsigned long long*, float*) = ios 0x4fcda8;
    FMOD_RESULT getVolumeRamp(bool*) = ios 0x4fb060;
    FMOD_RESULT setVolumeRamp(bool) = ios 0x4faf80;
    FMOD_RESULT get3DOcclusion(float*, float*) = ios 0x4fe2fc;
    FMOD_RESULT getLowPassGain(float*) = ios 0x4fb8f0;
    FMOD_RESULT set3DOcclusion(float, float) = ios 0x4fe1cc;
    FMOD_RESULT setLowPassGain(float) = ios 0x4fb808;
    FMOD_RESULT get3DAttributes(FMOD_VECTOR*, FMOD_VECTOR*) = ios 0x4fd73c;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x4faa58;
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, FMOD_VECTOR const*) = ios 0x4fd60c;
    FMOD_RESULT removeFadePoints(unsigned long long, unsigned long long) = ios 0x4fcc6c;
    FMOD_RESULT setFadePointRamp(unsigned long long, float) = ios 0x4fcb34;
    FMOD_RESULT get3DConeSettings(float*, float*, float*) = ios 0x4fdc40;
    FMOD_RESULT get3DDopplerLevel(float*) = ios 0x4fe8a4;
    FMOD_RESULT set3DConeSettings(float, float, float) = ios 0x4fdacc;
    FMOD_RESULT set3DDopplerLevel(float) = ios 0x4fe7bc;
    FMOD_RESULT setMixLevelsInput(float*, int) = ios 0x4fc12c;
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*) = ios 0x4fe09c;
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int) = ios 0x4fdf6c;
    FMOD_RESULT setMixLevelsOutput(float, float, float, float, float, float, float, float) = ios 0x4fbe48;
    FMOD_RESULT get3DDistanceFilter(bool*, float*, float*) = ios 0x4feaf0;
    FMOD_RESULT get3DMinMaxDistance(float*, float*) = ios 0x4fd99c;
    FMOD_RESULT getReverbProperties(int, float*) = ios 0x4fb6d8;
    FMOD_RESULT set3DDistanceFilter(bool, float, float) = ios 0x4fe984;
    FMOD_RESULT set3DMinMaxDistance(float, float) = ios 0x4fd86c;
    FMOD_RESULT setReverbProperties(int, float) = ios 0x4fb5a8;
    FMOD_RESULT get3DConeOrientation(FMOD_VECTOR*) = ios 0x4fde8c;
    FMOD_RESULT set3DConeOrientation(FMOD_VECTOR*) = ios 0x4fddac;
    FMOD_RESULT stop() = ios 0x4fab28;
    FMOD_RESULT addDSP(int, FMOD::DSP*) = ios 0x4fd0bc;
    FMOD_RESULT getDSP(int, FMOD::DSP**) = ios 0x4fcf8c;
    FMOD_RESULT setPan(float) = ios 0x4fbd60;
    FMOD_RESULT getMode(unsigned int*) = ios 0x4fbab0;
    FMOD_RESULT getMute(bool*) = ios 0x4fb4c8;
    FMOD_RESULT setMode(unsigned int) = ios 0x4fb9d0;
    FMOD_RESULT setMute(bool) = ios 0x4fb3e8;
    FMOD_RESULT getDelay(unsigned long long*, unsigned long long*, bool*) = ios 0x4fc868;
    FMOD_RESULT getPitch(float*) = ios 0x4fb308;
    FMOD_RESULT setDelay(unsigned long long, unsigned long long, bool) = ios 0x4fc6f0;
    FMOD_RESULT setPitch(float) = ios 0x4fb220;
    FMOD_RESULT getPaused(bool*) = ios 0x4facd4;
    FMOD_RESULT getVolume(float*) = ios 0x4faea0;
    FMOD_RESULT isPlaying(bool*) = ios 0x4fbc74;
    FMOD_RESULT removeDSP(FMOD::DSP*) = ios 0x4fd1ec;
    FMOD_RESULT setPaused(bool) = ios 0x4fabf4;
    FMOD_RESULT setVolume(float) = ios 0x4fadb4;
}

[[link(win, android, mac)]]
class FMOD::ChannelGroup {
    FMOD_RESULT getChannel(int, FMOD::Channel**) = ios 0x451430;
    FMOD_RESULT getNumGroups(int*) = ios 0x450f58;
    FMOD_RESULT getNumChannels(int*) = ios 0x451358;
    FMOD_RESULT getParentGroup(FMOD::ChannelGroup**) = ios 0x451158;
    FMOD_RESULT getName(char*, int) = ios 0x451230;
    FMOD_RESULT release() = ios 0x450d64;
    FMOD_RESULT addGroup(FMOD::ChannelGroup*, bool, FMOD::DSPConnection**) = ios 0x450e28;
    FMOD_RESULT getGroup(int, FMOD::ChannelGroup**) = ios 0x451030;
}

[[link(win, android, mac)]]
class FMOD::DSP {
    FMOD_RESULT getCPUUsage(unsigned int*, unsigned int*) = ios 0x47f548;
    FMOD_RESULT getUserData(void**) = ios 0x47f108;
    FMOD_RESULT setCallback(FMOD_DSP_CALLBACK) = ios 0x47dd04;
    FMOD_RESULT setUserData(void*) = ios 0x47f040;
    FMOD_RESULT getNumInputs(int*) = ios 0x47cc18;
    FMOD_RESULT getWetDryMix(float*, float*, float*) = ios 0x47d5b8;
    FMOD_RESULT setWetDryMix(float, float, float) = ios 0x47d44c;
    FMOD_RESULT disconnectAll(bool, bool) = ios 0x47caf0;
    FMOD_RESULT getNumOutputs(int*) = ios 0x47ccf8;
    FMOD_RESULT disconnectFrom(FMOD::DSP*, FMOD::DSPConnection*) = ios 0x47c9c4;
    FMOD_RESULT getMeteringInfo(FMOD_DSP_METERING_INFO*, FMOD_DSP_METERING_INFO*) = ios 0x47f420;
    FMOD_RESULT getParameterInt(int, int*, char*, int) = ios 0x47e400;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x47c790;
    FMOD_RESULT setParameterInt(int, int) = ios 0x47def8;
    FMOD_RESULT getChannelFormat(unsigned int*, int*, FMOD_SPEAKERMODE*) = ios 0x47d880;
    FMOD_RESULT getNumParameters(int*) = ios 0x47e8bc;
    FMOD_RESULT getParameterBool(int, bool*, char*, int) = ios 0x47e584;
    FMOD_RESULT getParameterData(int, void**, unsigned int*, char*, int) = ios 0x47e708;
    FMOD_RESULT getParameterInfo(int, FMOD_DSP_PARAMETER_DESC**) = ios 0x47e984;
    FMOD_RESULT setChannelFormat(unsigned int, int, FMOD_SPEAKERMODE) = ios 0x47d71c;
    FMOD_RESULT setParameterBool(int, bool) = ios 0x47e010;
    FMOD_RESULT setParameterData(int, void*, unsigned int) = ios 0x47e128;
    FMOD_RESULT showConfigDialog(void*, bool) = ios 0x47ebb4;
    FMOD_RESULT getParameterFloat(int, float*, char*, int) = ios 0x47e27c;
    FMOD_RESULT setParameterFloat(int, float) = ios 0x47dde0;
    FMOD_RESULT getMeteringEnabled(bool*, bool*) = ios 0x47f2f8;
    FMOD_RESULT setMeteringEnabled(bool, bool) = ios 0x47f1d0;
    FMOD_RESULT getDataParameterIndex(int, int*) = ios 0x47ea9c;
    FMOD_RESULT getOutputChannelFormat(unsigned int, int, FMOD_SPEAKERMODE, unsigned int*, int*, FMOD_SPEAKERMODE*) = ios 0x47d9e4;
    FMOD_RESULT reset() = ios 0x47dc40;
    FMOD_RESULT getIdle(bool*) = ios 0x47ef68;
    FMOD_RESULT getInfo(char*, unsigned int*, int*, int*, int*) = ios 0x47ecdc;
    FMOD_RESULT getType(FMOD_DSP_TYPE*) = ios 0x47ee90;
    FMOD_RESULT release() = ios 0x47c6c4;
    FMOD_RESULT addInput(FMOD::DSP*, FMOD::DSPConnection**, FMOD_DSPCONNECTION_TYPE) = ios 0x47c858;
    FMOD_RESULT getInput(int, FMOD::DSP**, FMOD::DSPConnection**) = ios 0x47cdd8;
    FMOD_RESULT getActive(bool*) = ios 0x47d18c;
    FMOD_RESULT getBypass(bool*) = ios 0x47d358;
    FMOD_RESULT getOutput(int, FMOD::DSP**, FMOD::DSPConnection**) = ios 0x47cf44;
    FMOD_RESULT setActive(bool) = ios 0x47d0b0;
    FMOD_RESULT setBypass(bool) = ios 0x47d280;
}

[[link(win, android, mac)]]
class FMOD::DSPConnection {
    FMOD_RESULT getUserData(void**) = ios 0x482cf8;
    FMOD_RESULT setUserData(void*) = ios 0x482c20;
    FMOD_RESULT getMixMatrix(float*, int*, int*, int) = ios 0x4829b4;
    FMOD_RESULT setMixMatrix(float*, int, int, int) = ios 0x482818;
    FMOD_RESULT getMix(float*) = ios 0x482740;
    FMOD_RESULT setMix(float) = ios 0x482654;
    FMOD_RESULT getType(FMOD_DSPCONNECTION_TYPE*) = ios 0x482b48;
    FMOD_RESULT getInput(FMOD::DSP**) = ios 0x4824a4;
    FMOD_RESULT getOutput(FMOD::DSP**) = ios 0x48257c;
}

[[link(win, android, mac)]]
class FMOD::Geometry {
    FMOD_RESULT addPolygon(float, float, bool, int, FMOD_VECTOR const*, int*) = ios 0x4a54c8;
    FMOD_RESULT getPosition(FMOD_VECTOR*) = ios 0x4a589c;
    FMOD_RESULT getRotation(FMOD_VECTOR*, FMOD_VECTOR*) = ios 0x4a581c;
    FMOD_RESULT getUserData(void**) = ios 0x4a59d0;
    FMOD_RESULT setPosition(FMOD_VECTOR const*) = ios 0x4a5860;
    FMOD_RESULT setRotation(FMOD_VECTOR const*, FMOD_VECTOR const*) = ios 0x4a57d8;
    FMOD_RESULT setUserData(void*) = ios 0x4a5994;
    FMOD_RESULT getMaxPolygons(int*, int*) = ios 0x4a5578;
    FMOD_RESULT getNumPolygons(int*) = ios 0x4a553c;
    FMOD_RESULT getPolygonVertex(int, int, FMOD_VECTOR*) = ios 0x4a5654;
    FMOD_RESULT setPolygonVertex(int, int, FMOD_VECTOR const*) = ios 0x4a5600;
    FMOD_RESULT getPolygonAttributes(int, float*, float*, bool*) = ios 0x4a5704;
    FMOD_RESULT setPolygonAttributes(int, float, float, bool) = ios 0x4a56a8;
    FMOD_RESULT getPolygonNumVertices(int, int*) = ios 0x4a55bc;
    FMOD_RESULT save(void*, int*) = ios 0x4a5950;
    FMOD_RESULT release() = ios 0x4a549c;
    FMOD_RESULT getScale(FMOD_VECTOR*) = ios 0x4a5914;
    FMOD_RESULT setScale(FMOD_VECTOR const*) = ios 0x4a58d8;
    FMOD_RESULT getActive(bool*) = ios 0x4a579c;
    FMOD_RESULT setActive(bool) = ios 0x4a5760;
}

[[link(win, android, mac)]]
class FMOD::Reverb3D {
    FMOD_RESULT getUserData(void**) = ios 0x4b4e60;
    FMOD_RESULT setUserData(void*) = ios 0x4b4d9c;
    FMOD_RESULT getProperties(FMOD_REVERB_PROPERTIES*) = ios 0x4b4b50;
    FMOD_RESULT setProperties(FMOD_REVERB_PROPERTIES const*) = ios 0x4b4a8c;
    FMOD_RESULT get3DAttributes(FMOD_VECTOR*, float*, float*) = ios 0x4b493c;
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, float, float) = ios 0x4b486c;
    FMOD_RESULT release() = ios 0x4b47b8;
    FMOD_RESULT getActive(bool*) = ios 0x4b4cd8;
    FMOD_RESULT setActive(bool) = ios 0x4b4c14;
}

[[link(win, android, mac)]]
class FMOD::Sound {
    FMOD_RESULT getNumTags(int*, int*) = ios 0x4b7994;
    FMOD_RESULT getDefaults(float*, int*) = ios 0x4b6838;
    FMOD_RESULT getSubSound(int, FMOD::Sound**) = ios 0x4b726c;
    FMOD_RESULT getUserData(void**) = ios 0x4b9940;
    FMOD_RESULT setDefaults(float, int) = ios 0x4b66d0;
    FMOD_RESULT setUserData(void*) = ios 0x4b9870;
    FMOD_RESULT addSyncPoint(unsigned int, unsigned int, char const*, FMOD_SYNCPOINT**) = ios 0x4b8780;
    FMOD_RESULT getLoopCount(int*) = ios 0x4b8d80;
    FMOD_RESULT getOpenState(FMOD_OPENSTATE*, unsigned int*, bool*, bool*) = ios 0x4b7c90;
    FMOD_RESULT getSyncPoint(int, FMOD_SYNCPOINT**) = ios 0x4b8424;
    FMOD_RESULT setLoopCount(int) = ios 0x4b8c70;
    FMOD_RESULT getLoopPoints(unsigned int*, unsigned int, unsigned int*, unsigned int) = ios 0x4b9048;
    FMOD_RESULT getMusicSpeed(float*) = ios 0x4b974c;
    FMOD_RESULT getSoundGroup(FMOD::SoundGroup**) = ios 0x4b8218;
    FMOD_RESULT setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int) = ios 0x4b8e7c;
    FMOD_RESULT setMusicSpeed(float) = ios 0x4b9620;
    FMOD_RESULT setSoundGroup(FMOD::SoundGroup*) = ios 0x4b80dc;
    FMOD_RESULT deleteSyncPoint(FMOD_SYNCPOINT*) = ios 0x4b8954;
    FMOD_RESULT getNumSubSounds(int*) = ios 0x4b7898;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x4b61a0;
    FMOD_RESULT getNumSyncPoints(int*) = ios 0x4b8314;
    FMOD_RESULT getSyncPointInfo(FMOD_SYNCPOINT*, char*, int, unsigned int*, unsigned int) = ios 0x4b8584;
    FMOD_RESULT get3DConeSettings(float*, float*, float*) = ios 0x4b6dfc;
    FMOD_RESULT getSubSoundParent(FMOD::Sound**) = ios 0x4b73d8;
    FMOD_RESULT set3DConeSettings(float, float, float) = ios 0x4b6c44;
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*) = ios 0x4b710c;
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int) = ios 0x4b6f98;
    FMOD_RESULT get3DMinMaxDistance(float*, float*) = ios 0x4b6ae4;
    FMOD_RESULT getMusicNumChannels(int*) = ios 0x4b9214;
    FMOD_RESULT set3DMinMaxDistance(float, float) = ios 0x4b6984;
    FMOD_RESULT getMusicChannelVolume(int, float*) = ios 0x4b94ac;
    FMOD_RESULT setMusicChannelVolume(int, float) = ios 0x4b9338;
    FMOD_RESULT lock(unsigned int, unsigned int, void**, void**, unsigned int*, unsigned int*) = ios 0x4b6270;
    FMOD_RESULT getTag(char const*, int, FMOD_TAG*) = ios 0x4b7af4;
    FMOD_RESULT unlock(void*, void*, unsigned int, unsigned int) = ios 0x4b6504;
    FMOD_RESULT getMode(unsigned int*) = ios 0x4b8b74;
    FMOD_RESULT getName(char*, int) = ios 0x4b7420;
    FMOD_RESULT release() = ios 0x4b60b0;
    FMOD_RESULT setMode(unsigned int) = ios 0x4b8a64;
    FMOD_RESULT readData(void*, unsigned int, unsigned int*) = ios 0x4b7e30;
    FMOD_RESULT seekData(unsigned int) = ios 0x4b7fcc;
    FMOD_RESULT getFormat(FMOD_SOUND_TYPE*, FMOD_SOUND_FORMAT*, int*, int*) = ios 0x4b76e0;
    FMOD_RESULT getLength(unsigned int*, unsigned int) = ios 0x4b7580;
}

[[link(win, android, mac)]]
class FMOD::SoundGroup {
    FMOD_RESULT getUserData(void**) = ios 0x4bb0d4;
    FMOD_RESULT setUserData(void*) = ios 0x4baffc;
    FMOD_RESULT getNumSounds(int*) = ios 0x4bad24;
    FMOD_RESULT getMaxAudible(int*) = ios 0x4ba540;
    FMOD_RESULT getNumPlaying(int*) = ios 0x4baf24;
    FMOD_RESULT setMaxAudible(int) = ios 0x4ba468;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x4ba390;
    FMOD_RESULT getMuteFadeSpeed(float*) = ios 0x4ba8a8;
    FMOD_RESULT setMuteFadeSpeed(float) = ios 0x4ba7c8;
    FMOD_RESULT getMaxAudibleBehavior(FMOD_SOUNDGROUP_BEHAVIOR*) = ios 0x4ba6f0;
    FMOD_RESULT setMaxAudibleBehavior(FMOD_SOUNDGROUP_BEHAVIOR) = ios 0x4ba618;
    FMOD_RESULT stop() = ios 0x4bab38;
    FMOD_RESULT getName(char*, int) = ios 0x4babfc;
    FMOD_RESULT release() = ios 0x4ba2cc;
    FMOD_RESULT getSound(int, FMOD::Sound**) = ios 0x4badfc;
    FMOD_RESULT getVolume(float*) = ios 0x4baa60;
    FMOD_RESULT setVolume(float) = ios 0x4ba980;
}

[[link(win, android, mac)]]
class FMOD::System {
    FMOD_RESULT getChannel(int, FMOD::Channel**) = ios 0x4c4310;
    FMOD_RESULT getVersion(unsigned int*) = ios 0x4c3284;
    FMOD_RESULT loadPlugin(char const*, unsigned int*, unsigned int) = ios 0x4c0d14;
    FMOD_RESULT recordStop(int) = ios 0x4c5384;
    FMOD_RESULT createSound(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**) = ios 0x4c3768;
    FMOD_RESULT getCPUUsage(FMOD_CPU_USAGE*) = ios 0x4c354c;
    FMOD_RESULT getUserData(void**) = ios 0x4c6010;
    FMOD_RESULT isRecording(int, bool*) = ios 0x4c545c;
    FMOD_RESULT mixerResume() = ios 0x4c2ff0;
    FMOD_RESULT recordStart(int, FMOD::Sound*, bool) = ios 0x4c5220;
    FMOD_RESULT registerDSP(FMOD_DSP_DESCRIPTION const*, unsigned int*) = ios 0x4c1b90;
    FMOD_RESULT setCallback(FMOD_SYSTEM_CALLBACK, unsigned int) = ios 0x4c0b10;
    FMOD_RESULT setUserData(void*) = ios 0x4c5f48;
    FMOD_RESULT createStream(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**) = ios 0x4c38ec;
    FMOD_RESULT getFileUsage(long long*, long long*, long long*) = ios 0x4c3614;
    FMOD_RESULT loadGeometry(void const*, int, FMOD::Geometry**) = ios 0x4c58a0;
    FMOD_RESULT mixerSuspend() = ios 0x4c2f2c;
    FMOD_RESULT unloadPlugin(unsigned int) = ios 0x4c0e78;
    FMOD_RESULT get3DSettings(float*, float*, float*) = ios 0x4c27b4;
    FMOD_RESULT getDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*) = ios 0x4bf9e8;
    FMOD_RESULT getNumDrivers(int*) = ios 0x4bf910;
    FMOD_RESULT getNumPlugins(FMOD_PLUGINTYPE, int*) = ios 0x4c11dc;
    FMOD_RESULT getPluginInfo(unsigned int, FMOD_PLUGINTYPE*, char*, int, unsigned int*) = ios 0x4c1468;
    FMOD_RESULT registerCodec(FMOD_CODEC_DESCRIPTION*, unsigned int*, unsigned int) = ios 0x4c1a2c;
    FMOD_RESULT set3DSettings(float, float, float) = ios 0x4c2648;
    FMOD_RESULT setFileSystem(FMOD_FILE_OPEN_CALLBACK, FMOD_FILE_CLOSE_CALLBACK, FMOD_FILE_READ_CALLBACK, FMOD_FILE_SEEK_CALLBACK, FMOD_FILE_ASYNCREAD_CALLBACK, FMOD_FILE_ASYNCCANCEL_CALLBACK, int) = ios 0x4c050c;
    FMOD_RESULT setPluginPath(char const*) = ios 0x4c0c3c;
    FMOD_RESULT createGeometry(int, int, FMOD::Geometry**) = ios 0x4c5584;
    FMOD_RESULT createReverb3D(FMOD::Reverb3D**) = ios 0x4c3f10;
    FMOD_RESULT registerOutput(FMOD_OUTPUT_DESCRIPTION const*, unsigned int*) = ios 0x4c1cb8;
    FMOD_RESULT createDSPByType(FMOD_DSP_TYPE, FMOD::DSP**) = ios 0x4c3b98;
    FMOD_RESULT getNestedPlugin(unsigned int, int, unsigned int*) = ios 0x4c1078;
    FMOD_RESULT getNetworkProxy(char*, int) = ios 0x4c5c70;
    FMOD_RESULT getOutputHandle(void**) = ios 0x4c335c;
    FMOD_RESULT getPluginHandle(FMOD_PLUGINTYPE, int, unsigned int*) = ios 0x4c1304;
    FMOD_RESULT setNetworkProxy(char const*) = ios 0x4c5b98;
    FMOD_RESULT attachFileSystem(FMOD_FILE_OPEN_CALLBACK, FMOD_FILE_CLOSE_CALLBACK, FMOD_FILE_READ_CALLBACK, FMOD_FILE_SEEK_CALLBACK) = ios 0x4c07bc;
    FMOD_RESULT createSoundGroup(char const*, FMOD::SoundGroup**) = ios 0x4c3de8;
    FMOD_RESULT getDSPBufferSize(unsigned int*, int*) = ios 0x4c03e4;
    FMOD_RESULT getDSPInfoByType(FMOD_DSP_TYPE, FMOD_DSP_DESCRIPTION const**) = ios 0x4c4438;
    FMOD_RESULT setDSPBufferSize(unsigned int, int) = ios 0x4c02bc;
    FMOD_RESULT createDSPByPlugin(unsigned int, FMOD::DSP**) = ios 0x4c17dc;
    FMOD_RESULT get3DNumListeners(int*) = ios 0x4c29f0;
    FMOD_RESULT getNetworkTimeout(int*) = ios 0x4c5e70;
    FMOD_RESULT getOutputByPlugin(unsigned int*) = ios 0x4c1704;
    FMOD_RESULT getRecordPosition(int, unsigned int*) = ios 0x4c50f8;
    FMOD_RESULT getSoftwareFormat(int*, FMOD_SPEAKERMODE*, int*) = ios 0x4c0140;
    FMOD_RESULT set3DNumListeners(int) = ios 0x4c2918;
    FMOD_RESULT setNetworkTimeout(int) = ios 0x4c5d98;
    FMOD_RESULT setOutputByPlugin(unsigned int) = ios 0x4c162c;
    FMOD_RESULT setSoftwareFormat(int, FMOD_SPEAKERMODE, int) = ios 0x4bffdc;
    FMOD_RESULT createChannelGroup(char const*, FMOD::ChannelGroup**) = ios 0x4c3cc0;
    FMOD_RESULT getChannelsPlaying(int*, int*) = ios 0x4c3434;
    FMOD_RESULT getDSPInfoByPlugin(unsigned int, FMOD_DSP_DESCRIPTION const**) = ios 0x4c1904;
    FMOD_RESULT getSpeakerPosition(FMOD_SPEAKER, float*, float*, bool*) = ios 0x4c2264;
    FMOD_RESULT setSpeakerPosition(FMOD_SPEAKER, float, float, bool) = ios 0x4c20d0;
    FMOD_RESULT getAdvancedSettings(FMOD_ADVANCEDSETTINGS*) = ios 0x4c0a38;
    FMOD_RESULT getDefaultMixMatrix(FMOD_SPEAKERMODE, FMOD_SPEAKERMODE, float*, int) = ios 0x4c3190;
    FMOD_RESULT getGeometrySettings(float*) = ios 0x4c57c8;
    FMOD_RESULT getMasterSoundGroup(FMOD::SoundGroup**) = ios 0x4c4628;
    FMOD_RESULT getNumNestedPlugins(unsigned int, int*) = ios 0x4c0f50;
    FMOD_RESULT getRecordDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*, unsigned int*) = ios 0x4c4e24;
    FMOD_RESULT getRecordNumDrivers(int*, int*) = ios 0x4c4cfc;
    FMOD_RESULT getReverbProperties(int, FMOD_REVERB_PROPERTIES*) = ios 0x4c4a6c;
    FMOD_RESULT getSoftwareChannels(int*) = ios 0x4bff04;
    FMOD_RESULT getStreamBufferSize(unsigned int*, unsigned int*) = ios 0x4c2520;
    FMOD_RESULT setAdvancedSettings(FMOD_ADVANCEDSETTINGS*) = ios 0x4c0960;
    FMOD_RESULT setGeometrySettings(float) = ios 0x4c56e8;
    FMOD_RESULT setReverbProperties(int, FMOD_REVERB_PROPERTIES const*) = ios 0x4c4944;
    FMOD_RESULT setSoftwareChannels(int) = ios 0x4bfe2c;
    FMOD_RESULT setStreamBufferSize(unsigned int, unsigned int) = ios 0x4c23f8;
    FMOD_RESULT getGeometryOcclusion(FMOD_VECTOR const*, FMOD_VECTOR const*, float*, float*) = ios 0x4c5a04;
    FMOD_RESULT set3DRolloffCallback(FMOD_3D_ROLLOFF_CALLBACK) = ios 0x4c2e50;
    FMOD_RESULT getMasterChannelGroup(FMOD::ChannelGroup**) = ios 0x4c4560;
    FMOD_RESULT getSpeakerModeChannels(FMOD_SPEAKERMODE, int*) = ios 0x4c30b4;
    FMOD_RESULT get3DListenerAttributes(int, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*) = ios 0x4c2c8c;
    FMOD_RESULT set3DListenerAttributes(int, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*) = ios 0x4c2ac8;
    FMOD_RESULT attachChannelGroupToPort(FMOD_PORT_TYPE, unsigned long long, FMOD::ChannelGroup*, bool) = ios 0x4c4700;
    FMOD_RESULT detachChannelGroupFromPort(FMOD::ChannelGroup*) = ios 0x4c486c;
    FMOD_RESULT init(int, unsigned int, void*) = ios 0x4c1de0;
    FMOD_RESULT close() = ios 0x4c1f34;
    FMOD_RESULT update() = ios 0x4c200c;
    FMOD_RESULT lockDSP() = ios 0x4c4b94;
    FMOD_RESULT playDSP(FMOD::DSP*, FMOD::ChannelGroup*, bool, FMOD::Channel**) = ios 0x4c417c;
    FMOD_RESULT release() = ios 0x4bf688;
    FMOD_RESULT createDSP(FMOD_DSP_DESCRIPTION const*, FMOD::DSP**) = ios 0x4c3a70;
    FMOD_RESULT getDriver(int*) = ios 0x4bfd54;
    FMOD_RESULT getOutput(FMOD_OUTPUTTYPE*) = ios 0x4bf838;
    FMOD_RESULT playSound(FMOD::Sound*, FMOD::ChannelGroup*, bool, FMOD::Channel**) = ios 0x4c3fe8;
    FMOD_RESULT setDriver(int) = ios 0x4bfc7c;
    FMOD_RESULT setOutput(FMOD_OUTPUTTYPE) = ios 0x4bf760;
    FMOD_RESULT unlockDSP() = ios 0x4c4c48;
}

[[link(win, android, mac)]]
FMOD_RESULT FMOD_Debug_Initialize(unsigned int, FMOD_DEBUG_MODE, FMOD_DEBUG_CALLBACK, char const*) = ios 0x47c63c;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_File_GetDiskBusy(int*) = ios 0x4a0b4c;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_File_SetDiskBusy(int) = ios 0x4a0afc;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Memory_GetStats(int*, int*, int) = ios 0x44a314;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Memory_Initialize(void*, int, FMOD_MEMORY_ALLOC_CALLBACK, FMOD_MEMORY_REALLOC_CALLBACK, FMOD_MEMORY_FREE_CALLBACK, unsigned int) = ios 0x44a1c8;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_System_Create(FMOD_SYSTEM**, unsigned int) = ios 0x44a3f8;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Thread_SetAttributes(FMOD_THREAD_TYPE, long long, int, unsigned int) = ios 0x4cccec;
