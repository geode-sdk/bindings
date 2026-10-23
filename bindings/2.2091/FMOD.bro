[[link(win, android, mac)]]
class FMOD::Channel {
    FMOD_RESULT getChannelGroup(FMOD::ChannelGroup**) = ios 0x57b650;
    FMOD_RESULT getCurrentSound(FMOD::Sound**) = ios 0x57b9e4;
    FMOD_RESULT getFrequency(float*) = ios 0x57b814;
    FMOD_RESULT getIndex(int*) = ios 0x57bac8;
    FMOD_RESULT getLoopCount(int*) = ios 0x57bc84;
    FMOD_RESULT getLoopPoints(unsigned int*, unsigned int, unsigned int*, unsigned int) = ios 0x57befc;
    FMOD_RESULT getPosition(unsigned int*, unsigned int) = ios 0x57b444;
    FMOD_RESULT getPriority(int*) = ios 0x57b238;
    FMOD_RESULT isVirtual(bool*) = ios 0x57b8f8;
    FMOD_RESULT setChannelGroup(FMOD::ChannelGroup*) = ios 0x57b578;
    FMOD_RESULT setFrequency(float) = ios 0x57b734;
    FMOD_RESULT setLoopCount(int) = ios 0x57bbac;
    FMOD_RESULT setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int) = ios 0x57bd68;
    FMOD_RESULT setPosition(unsigned int, unsigned int) = ios 0x57b31c;
    FMOD_RESULT setPriority(int) = ios 0x57b160;
}

[[link(win, android, mac)]]
class FMOD::ChannelControl {
    FMOD_RESULT addDSP(int, FMOD::DSP*) = ios 0x62b74c;
    FMOD_RESULT addFadePoint(unsigned long long, float) = ios 0x62b08c;
    FMOD_RESULT get3DAttributes(FMOD_VECTOR*, FMOD_VECTOR*) = ios 0x62bdcc;
    FMOD_RESULT get3DConeOrientation(FMOD_VECTOR*) = ios 0x62c51c;
    FMOD_RESULT get3DConeSettings(float*, float*, float*) = ios 0x62c2d0;
    FMOD_RESULT get3DCustomRolloff(FMOD_VECTOR**, int*) = ios 0x62c72c;
    FMOD_RESULT get3DDistanceFilter(bool*, float*, float*) = ios 0x62d180;
    FMOD_RESULT get3DDopplerLevel(float*) = ios 0x62cf34;
    FMOD_RESULT get3DLevel(float*) = ios 0x62cd6c;
    FMOD_RESULT get3DMinMaxDistance(float*, float*) = ios 0x62c02c;
    FMOD_RESULT get3DOcclusion(float*, float*) = ios 0x62c98c;
    FMOD_RESULT get3DSpread(float*) = ios 0x62cba4;
    FMOD_RESULT getAudibility(float*) = ios 0x6297d0;
    FMOD_RESULT getDelay(unsigned long long*, unsigned long long*, bool*) = ios 0x62aef8;
    FMOD_RESULT getDSP(int, FMOD::DSP**) = ios 0x62b61c;
    FMOD_RESULT getDSPClock(unsigned long long*, unsigned long long*) = ios 0x62ac28;
    FMOD_RESULT getDSPIndex(FMOD::DSP*, int*) = ios 0x62bb6c;
    FMOD_RESULT getFadePoints(unsigned int*, unsigned long long*, float*) = ios 0x62b438;
    FMOD_RESULT getLowPassGain(float*) = ios 0x629f80;
    FMOD_RESULT getMixMatrix(float*, int*, int*, int) = ios 0x62aa8c;
    FMOD_RESULT getMode(unsigned int*) = ios 0x62a140;
    FMOD_RESULT getMute(bool*) = ios 0x629b58;
    FMOD_RESULT getNumDSPs(int*) = ios 0x62b95c;
    FMOD_RESULT getPaused(bool*) = ios 0x629364;
    FMOD_RESULT getPitch(float*) = ios 0x629998;
    FMOD_RESULT getReverbProperties(int, float*) = ios 0x629d68;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x6290e8;
    FMOD_RESULT getUserData(void**) = ios 0x62d3c4;
    FMOD_RESULT getVolume(float*) = ios 0x629530;
    FMOD_RESULT getVolumeRamp(bool*) = ios 0x6296f0;
    FMOD_RESULT isPlaying(bool*) = ios 0x62a304;
    FMOD_RESULT removeDSP(FMOD::DSP*) = ios 0x62b87c;
    FMOD_RESULT removeFadePoints(unsigned long long, unsigned long long) = ios 0x62b2fc;
    FMOD_RESULT set3DAttributes(FMOD_VECTOR const*, FMOD_VECTOR const*) = ios 0x62bc9c;
    FMOD_RESULT set3DConeOrientation(FMOD_VECTOR*) = ios 0x62c43c;
    FMOD_RESULT set3DConeSettings(float, float, float) = ios 0x62c15c;
    FMOD_RESULT set3DCustomRolloff(FMOD_VECTOR*, int) = ios 0x62c5fc;
    FMOD_RESULT set3DDistanceFilter(bool, float, float) = ios 0x62d014;
    FMOD_RESULT set3DDopplerLevel(float) = ios 0x62ce4c;
    FMOD_RESULT set3DLevel(float) = ios 0x62cc84;
    FMOD_RESULT set3DMinMaxDistance(float, float) = ios 0x62befc;
    FMOD_RESULT set3DOcclusion(float, float) = ios 0x62c85c;
    FMOD_RESULT set3DSpread(float) = ios 0x62cabc;
    FMOD_RESULT setCallback(FMOD_CHANNELCONTROL_CALLBACK) = ios 0x62a220;
    FMOD_RESULT setDelay(unsigned long long, unsigned long long, bool) = ios 0x62ad80;
    FMOD_RESULT setDSPIndex(FMOD::DSP*, int) = ios 0x62ba3c;
    FMOD_RESULT setFadePointRamp(unsigned long long, float) = ios 0x62b1c4;
    FMOD_RESULT setLowPassGain(float) = ios 0x629e98;
    FMOD_RESULT setMixLevelsInput(float*, int) = ios 0x62a7bc;
    FMOD_RESULT setMixLevelsOutput(float, float, float, float, float, float, float, float) = ios 0x62a4d8;
    FMOD_RESULT setMixMatrix(float*, int, int, int) = ios 0x62a8ec;
    FMOD_RESULT setMode(unsigned int) = ios 0x62a060;
    FMOD_RESULT setMute(bool) = ios 0x629a78;
    FMOD_RESULT setPan(float) = ios 0x62a3f0;
    FMOD_RESULT setPaused(bool) = ios 0x629284;
    FMOD_RESULT setPitch(float) = ios 0x6298b0;
    FMOD_RESULT setReverbProperties(int, float) = ios 0x629c38;
    FMOD_RESULT setUserData(void*) = ios 0x62d2ec;
    FMOD_RESULT setVolume(float) = ios 0x629444;
    FMOD_RESULT setVolumeRamp(bool) = ios 0x629610;
    FMOD_RESULT stop() = ios 0x6291b8;
}

[[link(win, android, mac)]]
class FMOD::ChannelGroup {
    FMOD_RESULT addGroup(FMOD::ChannelGroup*, bool, FMOD::DSPConnection**) = ios 0x57f370;
    FMOD_RESULT getChannel(int, FMOD::Channel**) = ios 0x57f978;
    FMOD_RESULT getGroup(int, FMOD::ChannelGroup**) = ios 0x57f578;
    FMOD_RESULT getName(char*, int) = ios 0x57f778;
    FMOD_RESULT getNumChannels(int*) = ios 0x57f8a0;
    FMOD_RESULT getNumGroups(int*) = ios 0x57f4a0;
    FMOD_RESULT getParentGroup(FMOD::ChannelGroup**) = ios 0x57f6a0;
    FMOD_RESULT release() = ios 0x57f2ac;
}

[[link(win, android, mac)]]
class FMOD::DSP {
    FMOD_RESULT addInput(FMOD::DSP*, FMOD::DSPConnection**, FMOD_DSPCONNECTION_TYPE) = ios 0x5aac18;
    FMOD_RESULT disconnectAll(bool, bool) = ios 0x5aaeb0;
    FMOD_RESULT disconnectFrom(FMOD::DSP*, FMOD::DSPConnection*) = ios 0x5aad84;
    FMOD_RESULT getActive(bool*) = ios 0x5ab54c;
    FMOD_RESULT getBypass(bool*) = ios 0x5ab718;
    FMOD_RESULT getChannelFormat(unsigned int*, int*, FMOD_SPEAKERMODE*) = ios 0x5abc44;
    FMOD_RESULT getCPUUsage(unsigned int*, unsigned int*) = ios 0x5ad90c;
    FMOD_RESULT getDataParameterIndex(int, int*) = ios 0x5ace60;
    FMOD_RESULT getIdle(bool*) = ios 0x5ad32c;
    FMOD_RESULT getInfo(char*, unsigned int*, int*, int*, int*) = ios 0x5ad0a0;
    FMOD_RESULT getInput(int, FMOD::DSP**, FMOD::DSPConnection**) = ios 0x5ab198;
    FMOD_RESULT getMeteringEnabled(bool*, bool*) = ios 0x5ad6bc;
    FMOD_RESULT getMeteringInfo(FMOD_DSP_METERING_INFO*, FMOD_DSP_METERING_INFO*) = ios 0x5ad7e4;
    FMOD_RESULT getNumInputs(int*) = ios 0x5aafd8;
    FMOD_RESULT getNumOutputs(int*) = ios 0x5ab0b8;
    FMOD_RESULT getNumParameters(int*) = ios 0x5acc80;
    FMOD_RESULT getOutput(int, FMOD::DSP**, FMOD::DSPConnection**) = ios 0x5ab304;
    FMOD_RESULT getOutputChannelFormat(unsigned int, int, FMOD_SPEAKERMODE, unsigned int*, int*, FMOD_SPEAKERMODE*) = ios 0x5abda8;
    FMOD_RESULT getParameterBool(int, bool*, char*, int) = ios 0x5ac948;
    FMOD_RESULT getParameterData(int, void**, unsigned int*, char*, int) = ios 0x5acacc;
    FMOD_RESULT getParameterFloat(int, float*, char*, int) = ios 0x5ac640;
    FMOD_RESULT getParameterInfo(int, FMOD_DSP_PARAMETER_DESC**) = ios 0x5acd48;
    FMOD_RESULT getParameterInt(int, int*, char*, int) = ios 0x5ac7c4;
    FMOD_RESULT getSystemObject(FMOD::System**) = ios 0x5aab50;
    FMOD_RESULT getType(FMOD_DSP_TYPE*) = ios 0x5ad254;
    FMOD_RESULT getUserData(void**) = ios 0x5ad4cc;
    FMOD_RESULT getWetDryMix(float*, float*, float*) = ios 0x5ab97c;
    FMOD_RESULT release() = ios 0x5aaa84;
    FMOD_RESULT reset() = ios 0x5ac004;
    FMOD_RESULT setActive(bool) = ios 0x5ab470;
    FMOD_RESULT setBypass(bool) = ios 0x5ab640;
    FMOD_RESULT setCallback(FMOD_DSP_CALLBACK) = ios 0x5ac0c8;
    FMOD_RESULT setChannelFormat(unsigned int, int, FMOD_SPEAKERMODE) = ios 0x5abae0;
    FMOD_RESULT setMeteringEnabled(bool, bool) = ios 0x5ad594;
    FMOD_RESULT setParameterBool(int, bool) = ios 0x5ac3d4;
    FMOD_RESULT setParameterData(int, void*, unsigned int) = ios 0x5ac4ec;
    FMOD_RESULT setParameterFloat(int, float) = ios 0x5ac1a4;
    FMOD_RESULT setParameterInt(int, int) = ios 0x5ac2bc;
    FMOD_RESULT setUserData(void*) = ios 0x5ad404;
    FMOD_RESULT setWetDryMix(float, float, float) = ios 0x5ab80c;
    FMOD_RESULT showConfigDialog(void*, bool) = ios 0x5acf78;
}

[[link(win, android, mac)]]
class FMOD::DSPConnection {
    FMOD_RESULT getInput(FMOD::DSP**) = ios 0x5b0874;
    FMOD_RESULT getMix(float*) = ios 0x5b0b10;
    FMOD_RESULT getMixMatrix(float*, int*, int*, int) = ios 0x5b0d84;
    FMOD_RESULT getOutput(FMOD::DSP**) = ios 0x5b094c;
    FMOD_RESULT getType(FMOD_DSPCONNECTION_TYPE*) = ios 0x5b0f18;
    FMOD_RESULT getUserData(void**) = ios 0x5b10c8;
    FMOD_RESULT setMix(float) = ios 0x5b0a24;
    FMOD_RESULT setMixMatrix(float*, int, int, int) = ios 0x5b0be8;
    FMOD_RESULT setUserData(void*) = ios 0x5b0ff0;
}

[[link(win, android, mac)]]
class FMOD::Geometry {
    FMOD_RESULT addPolygon(float, float, bool, int, FMOD_VECTOR const*, int*) = ios 0x5d39d0;
    FMOD_RESULT getActive(bool*) = ios 0x5d3ca4;
    FMOD_RESULT getMaxPolygons(int*, int*) = ios 0x5d3a80;
    FMOD_RESULT getNumPolygons(int*) = ios 0x5d3a44;
    FMOD_RESULT getPolygonAttributes(int, float*, float*, bool*) = ios 0x5d3c0c;
    FMOD_RESULT getPolygonNumVertices(int, int*) = ios 0x5d3ac4;
    FMOD_RESULT getPolygonVertex(int, int, FMOD_VECTOR*) = ios 0x5d3b5c;
    FMOD_RESULT getPosition(FMOD_VECTOR*) = ios 0x5d3da4;
    FMOD_RESULT getRotation(FMOD_VECTOR*, FMOD_VECTOR*) = ios 0x5d3d24;
    FMOD_RESULT getScale(FMOD_VECTOR*) = ios 0x5d3e1c;
    FMOD_RESULT getUserData(void**) = ios 0x5d3ed8;
    FMOD_RESULT release() = ios 0x5d39a4;
    FMOD_RESULT save(void*, int*) = ios 0x5d3e58;
    FMOD_RESULT setActive(bool) = ios 0x5d3c68;
    FMOD_RESULT setPolygonAttributes(int, float, float, bool) = ios 0x5d3bb0;
    FMOD_RESULT setPolygonVertex(int, int, FMOD_VECTOR const*) = ios 0x5d3b08;
    FMOD_RESULT setPosition(FMOD_VECTOR const*) = ios 0x5d3d68;
    FMOD_RESULT setRotation(FMOD_VECTOR const*, FMOD_VECTOR const*) = ios 0x5d3ce0;
    FMOD_RESULT setScale(FMOD_VECTOR const*) = ios 0x5d3de0;
    FMOD_RESULT setUserData(void*) = ios 0x5d3e9c;
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
    FMOD_RESULT getSubSoundParent(FMOD::Sound**) = ios 0x5e5864;
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
    FMOD_RESULT attachChannelGroupToPort(FMOD_PORT_TYPE, unsigned long long, FMOD::ChannelGroup*, bool) = ios 0x5f2b8c;
    FMOD_RESULT attachFileSystem(FMOD_FILE_OPEN_CALLBACK, FMOD_FILE_CLOSE_CALLBACK, FMOD_FILE_READ_CALLBACK, FMOD_FILE_SEEK_CALLBACK) = ios 0x5eec48;
    FMOD_RESULT close() = ios 0x5f03c0;
    FMOD_RESULT createChannelGroup(char const*, FMOD::ChannelGroup**) = ios 0x5f214c;
    FMOD_RESULT createDSP(FMOD_DSP_DESCRIPTION const*, FMOD::DSP**) = ios 0x5f1efc;
    FMOD_RESULT createDSPByPlugin(unsigned int, FMOD::DSP**) = ios 0x5efc68;
    FMOD_RESULT createDSPByType(FMOD_DSP_TYPE, FMOD::DSP**) = ios 0x5f2024;
    FMOD_RESULT createGeometry(int, int, FMOD::Geometry**) = ios 0x5f3a10;
    FMOD_RESULT createReverb3D(FMOD::Reverb3D**) = ios 0x5f239c;
    FMOD_RESULT createSound(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**) = ios 0x5f1bf4;
    FMOD_RESULT createSoundGroup(char const*, FMOD::SoundGroup**) = ios 0x5f2274;
    FMOD_RESULT createStream(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**) = ios 0x5f1d78;
    FMOD_RESULT detachChannelGroupFromPort(FMOD::ChannelGroup*) = ios 0x5f2cf8;
    FMOD_RESULT get3DListenerAttributes(int, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*, FMOD_VECTOR*) = ios 0x5f1118;
    FMOD_RESULT get3DNumListeners(int*) = ios 0x5f0e7c;
    FMOD_RESULT get3DSettings(float*, float*, float*) = ios 0x5f0c40;
    FMOD_RESULT getAdvancedSettings(FMOD_ADVANCEDSETTINGS*) = ios 0x5eeec4;
    FMOD_RESULT getChannel(int, FMOD::Channel**) = ios 0x5f279c;
    FMOD_RESULT getChannelsPlaying(int*, int*) = ios 0x5f18c0;
    FMOD_RESULT getCPUUsage(FMOD_CPU_USAGE*) = ios 0x5f19d8;
    FMOD_RESULT getDefaultMixMatrix(FMOD_SPEAKERMODE, FMOD_SPEAKERMODE, float*, int) = ios 0x5f161c;
    FMOD_RESULT getDriver(int*) = ios 0x5ee1e0;
    FMOD_RESULT getDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*) = ios 0x5ede74;
    FMOD_RESULT getDSPBufferSize(unsigned int*, int*) = ios 0x5ee870;
    FMOD_RESULT getDSPInfoByPlugin(unsigned int, FMOD_DSP_DESCRIPTION const**) = ios 0x5efd90;
    FMOD_RESULT getDSPInfoByType(FMOD_DSP_TYPE, FMOD_DSP_DESCRIPTION const**) = ios 0x5f28c4;
    FMOD_RESULT getFileUsage(long long*, long long*, long long*) = ios 0x5f1aa0;
    FMOD_RESULT getGeometryOcclusion(FMOD_VECTOR const*, FMOD_VECTOR const*, float*, float*) = ios 0x5f3e90;
    FMOD_RESULT getGeometrySettings(float*) = ios 0x5f3c54;
    FMOD_RESULT getMasterChannelGroup(FMOD::ChannelGroup**) = ios 0x5f29ec;
    FMOD_RESULT getMasterSoundGroup(FMOD::SoundGroup**) = ios 0x5f2ab4;
    FMOD_RESULT getNestedPlugin(unsigned int, int, unsigned int*) = ios 0x5ef504;
    FMOD_RESULT getNetworkProxy(char*, int) = ios 0x5f40fc;
    FMOD_RESULT getNetworkTimeout(int*) = ios 0x5f42fc;
    FMOD_RESULT getNumDrivers(int*) = ios 0x5edd9c;
    FMOD_RESULT getNumNestedPlugins(unsigned int, int*) = ios 0x5ef3dc;
    FMOD_RESULT getNumPlugins(FMOD_PLUGINTYPE, int*) = ios 0x5ef668;
    FMOD_RESULT getOutput(FMOD_OUTPUTTYPE*) = ios 0x5edcc4;
    FMOD_RESULT getOutputByPlugin(unsigned int*) = ios 0x5efb90;
    FMOD_RESULT getOutputHandle(void**) = ios 0x5f17e8;
    FMOD_RESULT getPluginHandle(FMOD_PLUGINTYPE, int, unsigned int*) = ios 0x5ef790;
    FMOD_RESULT getPluginInfo(unsigned int, FMOD_PLUGINTYPE*, char*, int, unsigned int*) = ios 0x5ef8f4;
    FMOD_RESULT getRecordDriverInfo(int, char*, int, FMOD_GUID*, int*, FMOD_SPEAKERMODE*, int*, unsigned int*) = ios 0x5f32b0;
    FMOD_RESULT getRecordNumDrivers(int*, int*) = ios 0x5f3188;
    FMOD_RESULT getRecordPosition(int, unsigned int*) = ios 0x5f3584;
    FMOD_RESULT getReverbProperties(int, FMOD_REVERB_PROPERTIES*) = ios 0x5f2ef8;
    FMOD_RESULT getSoftwareChannels(int*) = ios 0x5ee390;
    FMOD_RESULT getSoftwareFormat(int*, FMOD_SPEAKERMODE*, int*) = ios 0x5ee5cc;
    FMOD_RESULT getSpeakerModeChannels(FMOD_SPEAKERMODE, int*) = ios 0x5f1540;
    FMOD_RESULT getSpeakerPosition(FMOD_SPEAKER, float*, float*, bool*) = ios 0x5f06f0;
    FMOD_RESULT getStreamBufferSize(unsigned int*, unsigned int*) = ios 0x5f09ac;
    FMOD_RESULT getUserData(void**) = ios 0x5f449c;
    FMOD_RESULT getVersion(unsigned int*) = ios 0x5f1710;
    FMOD_RESULT init(int, unsigned int, void*) = ios 0x5f026c;
    FMOD_RESULT isRecording(int, bool*) = ios 0x5f38e8;
    FMOD_RESULT loadGeometry(void const*, int, FMOD::Geometry**) = ios 0x5f3d2c;
    FMOD_RESULT loadPlugin(char const*, unsigned int*, unsigned int) = ios 0x5ef1a0;
    FMOD_RESULT lockDSP() = ios 0x5f3020;
    FMOD_RESULT mixerResume() = ios 0x5f147c;
    FMOD_RESULT mixerSuspend() = ios 0x5f13b8;
    FMOD_RESULT playDSP(FMOD::DSP*, FMOD::ChannelGroup*, bool, FMOD::Channel**) = ios 0x5f2608;
    FMOD_RESULT playSound(FMOD::Sound*, FMOD::ChannelGroup*, bool, FMOD::Channel**) = ios 0x5f2474;
    FMOD_RESULT recordStart(int, FMOD::Sound*, bool) = ios 0x5f36ac;
    FMOD_RESULT recordStop(int) = ios 0x5f3810;
    FMOD_RESULT registerCodec(FMOD_CODEC_DESCRIPTION*, unsigned int*, unsigned int) = ios 0x5efeb8;
    FMOD_RESULT registerDSP(FMOD_DSP_DESCRIPTION const*, unsigned int*) = ios 0x5f001c;
    FMOD_RESULT registerOutput(FMOD_OUTPUT_DESCRIPTION const*, unsigned int*) = ios 0x5f0144;
    FMOD_RESULT release() = ios 0x5edb14;
    FMOD_RESULT set3DListenerAttributes(int, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*, FMOD_VECTOR const*) = ios 0x5f0f54;
    FMOD_RESULT set3DNumListeners(int) = ios 0x5f0da4;
    FMOD_RESULT set3DRolloffCallback(FMOD_3D_ROLLOFF_CALLBACK) = ios 0x5f12dc;
    FMOD_RESULT set3DSettings(float, float, float) = ios 0x5f0ad4;
    FMOD_RESULT setAdvancedSettings(FMOD_ADVANCEDSETTINGS*) = ios 0x5eedec;
    FMOD_RESULT setCallback(FMOD_SYSTEM_CALLBACK, unsigned int) = ios 0x5eef9c;
    FMOD_RESULT setDriver(int) = ios 0x5ee108;
    FMOD_RESULT setDSPBufferSize(unsigned int, int) = ios 0x5ee748;
    FMOD_RESULT setFileSystem(FMOD_FILE_OPEN_CALLBACK, FMOD_FILE_CLOSE_CALLBACK, FMOD_FILE_READ_CALLBACK, FMOD_FILE_SEEK_CALLBACK, FMOD_FILE_ASYNCREAD_CALLBACK, FMOD_FILE_ASYNCCANCEL_CALLBACK, int) = ios 0x5ee998;
    FMOD_RESULT setGeometrySettings(float) = ios 0x5f3b74;
    FMOD_RESULT setNetworkProxy(char const*) = ios 0x5f4024;
    FMOD_RESULT setNetworkTimeout(int) = ios 0x5f4224;
    FMOD_RESULT setOutput(FMOD_OUTPUTTYPE) = ios 0x5edbec;
    FMOD_RESULT setOutputByPlugin(unsigned int) = ios 0x5efab8;
    FMOD_RESULT setPluginPath(char const*) = ios 0x5ef0c8;
    FMOD_RESULT setReverbProperties(int, FMOD_REVERB_PROPERTIES const*) = ios 0x5f2dd0;
    FMOD_RESULT setSoftwareChannels(int) = ios 0x5ee2b8;
    FMOD_RESULT setSoftwareFormat(int, FMOD_SPEAKERMODE, int) = ios 0x5ee468;
    FMOD_RESULT setSpeakerPosition(FMOD_SPEAKER, float, float, bool) = ios 0x5f055c;
    FMOD_RESULT setStreamBufferSize(unsigned int, unsigned int) = ios 0x5f0884;
    FMOD_RESULT setUserData(void*) = ios 0x5f43d4;
    FMOD_RESULT unloadPlugin(unsigned int) = ios 0x5ef304;
    FMOD_RESULT unlockDSP() = ios 0x5f30d4;
    FMOD_RESULT update() = ios 0x5f0498;
}

[[link(win, android, mac)]]
FMOD_RESULT FMOD_Debug_Initialize(unsigned int, FMOD_DEBUG_MODE, FMOD_DEBUG_CALLBACK, char const*) = ios 0x5aa9fc;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_File_GetDiskBusy(int*) = ios 0x5cf034;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_File_SetDiskBusy(int) = ios 0x5cefe4;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Memory_GetStats(int*, int*, int) = ios 0x578850;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Memory_Initialize(void*, int, FMOD_MEMORY_ALLOC_CALLBACK, FMOD_MEMORY_REALLOC_CALLBACK, FMOD_MEMORY_FREE_CALLBACK, unsigned int) = ios 0x578710;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_System_Create(FMOD_SYSTEM**, unsigned int) = ios 0x578934;
[[link(win, android, mac)]]
FMOD_RESULT FMOD_Thread_SetAttributes(FMOD_THREAD_TYPE, long long, int, unsigned int) = ios 0x5fb344;
