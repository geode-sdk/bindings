#include "Common.hpp"

#ifdef GEODE_IS_ARM_MAC

// GEODE_SIZE_CHECK(PlayLayer, 0x3790);
GEODE_MEMBER_CHECK(PlayLayer, m_coinArray, 0x3508);
GEODE_MEMBER_CHECK(PlayLayer, m_unkSomeFloat, 0x35a4);
GEODE_MEMBER_CHECK(PlayLayer, m_jumps, 0x3680);
GEODE_MEMBER_CHECK(PlayLayer, m_hasCompletedLevel, 0x368D);
GEODE_MEMBER_CHECK(PlayLayer, m_endLayerStars, 0x3694);
GEODE_MEMBER_CHECK(PlayLayer, m_isPaused, 0x36F7);

GEODE_MEMBER_CHECK(LevelEditorLayer, m_trailTimer, 0x35b8);

// GEODE_SIZE_CHECK(FMODAudioEngine, 0x648);
GEODE_MEMBER_CHECK(FMODAudioEngine, m_system, 0x1e8);


GEODE_SIZE_CHECK(GJBaseGameLayer, 0x34c0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_groupDict, 0xde0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_massiveFloatArray, 0xf6c);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_attempts, 0x2f14);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_shaderLayer, 0x2fd8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_startPosObject, 0x2fe8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isPracticeMode, 0x3050);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_queuedButtons, 0x3158);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_unk3458, 0x3288);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_uiLayer, 0x3298);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_sections, 0x32f8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_audioVisualizerBG, 0x3420);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_loadingLayer, 0x3498);


// GEODE_SIZE_CHECK(PlayerObject, 0xbe8); 
GEODE_MEMBER_CHECK(PlayerObject, m_mainLayer, 0x550);
// GEODE_MEMBER_CHECK(PlayerObject, m_unk4e8, 0x5a8);
// GEODE_MEMBER_CHECK(PlayerObject, m_unk4f4, 0x5c0);
// GEODE_MEMBER_CHECK(PlayerObject, m_particleSystems, 0x688);
// GEODE_MEMBER_CHECK(PlayerObject, m_unk594, 0x698); // unsure
// GEODE_MEMBER_CHECK(PlayerObject, m_unk5b4, 0x6c0); // unsure
// GEODE_MEMBER_CHECK(PlayerObject, m_rotationSpeed, 0x6e8);
// GEODE_MEMBER_CHECK(PlayerObject, m_isHidden, 0x6f3);
// GEODE_MEMBER_CHECK(PlayerObject, m_hasGhostTrail, 0x6f4);
GEODE_MEMBER_CHECK(PlayerObject, m_ghostTrail, 0x6f8);
// GEODE_MEMBER_CHECK(PlayerObject, m_swingFireMiddle, 0x748);
GEODE_MEMBER_CHECK(PlayerObject, m_regularTrail, 0x768);
GEODE_MEMBER_CHECK(PlayerObject, m_waveTrail, 0x778);
GEODE_MEMBER_CHECK(PlayerObject, m_robotSprite, 0x850);
GEODE_MEMBER_CHECK(PlayerObject, m_gameLayer, 0xbc0);
// GEODE_MEMBER_CHECK(PlayerObject, m_hasCustomGlowColor, 0x910);
// GEODE_MEMBER_CHECK(PlayerObject, m_glowColor, 0x911);
// GEODE_MEMBER_CHECK(PlayerObject, m_isShip, 0x941);
// GEODE_MEMBER_CHECK(PlayerObject, m_isRobot, 0x945);
// GEODE_MEMBER_CHECK(PlayerObject, m_platformerXVelocity, 0xa28);
// GEODE_MEMBER_CHECK(PlayerObject, m_isPlatformer, 0xaa0);

GEODE_SIZE_CHECK(ShaderLayer, 0x620);
GEODE_MEMBER_CHECK(ShaderLayer, m_antiAlias, 0x450);
GEODE_MEMBER_CHECK(ShaderLayer, m_configuredAntiAlias, 0x451);
GEODE_MEMBER_CHECK(ShaderLayer, m_state, 0x198);
GEODE_MEMBER_CHECK(ShaderLayer, m_shader, 0x438);
GEODE_MEMBER_CHECK(ShaderLayer, m_gameLayer, 0x460);
GEODE_MEMBER_CHECK(ShaderLayer, m_renderTexture, 0x440);
GEODE_MEMBER_CHECK(ShaderLayer, m_sprite, 0x448);
GEODE_MEMBER_CHECK(ShaderLayer, m_textureContentSize, 0x478);
GEODE_MEMBER_CHECK(ShaderLayer, m_targetTextureSizeExtra, 0x488);
GEODE_MEMBER_CHECK(ShaderLayer, m_textureScaleUniform, 0x490);
GEODE_MEMBER_CHECK(ShaderLayer, m_textureScaleInvUniform, 0x494);
GEODE_MEMBER_CHECK(ShaderLayer, m_shaderPositionUniform, 0x498);
GEODE_MEMBER_CHECK(ShaderLayer, m_blurRefColorUniform, 0x49c);
GEODE_MEMBER_CHECK(ShaderLayer, m_blurUseRefUniform, 0x4a0);
GEODE_MEMBER_CHECK(ShaderLayer, m_blurIntensityUniform, 0x4a4);
GEODE_MEMBER_CHECK(ShaderLayer, m_blurOnlyEmptyUniform, 0x4a8);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveTimeUniform, 0x4ac);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveTime1Uniform, 0x4b0);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveTime2Uniform, 0x4b4);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveTime3Uniform, 0x4b8);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveTime4Uniform, 0x4bc);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveStrengthUniform, 0x4c0);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveWavesUniform, 0x4c4);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveCenterUniform, 0x4c8);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveInvertUniform, 0x4cc);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveMinSizeUniform, 0x4d0);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveMaxSizeUniform, 0x4d4);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveMaxDistValUniform, 0x4d8);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveTime1, 0x4dc);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveTime2, 0x4e0);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveTime3, 0x4e4);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveTime4, 0x4e8);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveMaxDistVal, 0x4ec);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveMinSize, 0x4f0);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveMaxSize, 0x4f4);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockWaveUnk46c, 0x4f8);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineTimeUniform, 0x4fc);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineTime1Uniform, 0x500);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineTime2Uniform, 0x504);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineTime3Uniform, 0x508);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineTime4Uniform, 0x50c);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineAxisUniform, 0x510);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineDirectionUniform, 0x514);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineDualUniform, 0x518);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineWavesUniform, 0x51c);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineStrengthUniform, 0x520);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineCenterUniform, 0x524);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineMaxDistValUniform, 0x528);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineTime1, 0x52c);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineTime2, 0x530);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineTime3, 0x534);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineTime4, 0x538);
GEODE_MEMBER_CHECK(ShaderLayer, m_shockLineMaxDistVal, 0x53c);
GEODE_MEMBER_CHECK(ShaderLayer, m_unk4b4, 0x540);
GEODE_MEMBER_CHECK(ShaderLayer, m_unk4b8, 0x544);
GEODE_MEMBER_CHECK(ShaderLayer, m_unk4bc, 0x548);
GEODE_MEMBER_CHECK(ShaderLayer, m_glitchBotUniform, 0x54c);
GEODE_MEMBER_CHECK(ShaderLayer, m_glitchTopUniform, 0x550);
GEODE_MEMBER_CHECK(ShaderLayer, m_glitchXOffsetUniform, 0x554);
GEODE_MEMBER_CHECK(ShaderLayer, m_glitchColOffsetUniform, 0x558);
GEODE_MEMBER_CHECK(ShaderLayer, m_glitchRndUniform, 0x55c);
GEODE_MEMBER_CHECK(ShaderLayer, m_chromaticXOffUniform, 0x560);
GEODE_MEMBER_CHECK(ShaderLayer, m_chromaticYOffUniform, 0x564);
GEODE_MEMBER_CHECK(ShaderLayer, m_cGRGBOffsetUniform, 0x568);
GEODE_MEMBER_CHECK(ShaderLayer, m_cGYOffsetUniform, 0x56c);
GEODE_MEMBER_CHECK(ShaderLayer, m_cGTimeUniform, 0x570);
GEODE_MEMBER_CHECK(ShaderLayer, m_cGStrengthUniform, 0x574);
GEODE_MEMBER_CHECK(ShaderLayer, m_cGHeightUniform, 0x578);
GEODE_MEMBER_CHECK(ShaderLayer, m_cGLineThickUniform, 0x57c);
GEODE_MEMBER_CHECK(ShaderLayer, m_cGLineStrengthUniform, 0x580);
GEODE_MEMBER_CHECK(ShaderLayer, m_lensCircleOriginUniform, 0x584);
GEODE_MEMBER_CHECK(ShaderLayer, m_lensCircleStartUniform, 0x588);
GEODE_MEMBER_CHECK(ShaderLayer, m_lensCircleEndUniform, 0x58c);
GEODE_MEMBER_CHECK(ShaderLayer, m_lensCircleStrengthUniform, 0x590);
GEODE_MEMBER_CHECK(ShaderLayer, m_lensCircleTintUniform, 0x594);
GEODE_MEMBER_CHECK(ShaderLayer, m_lensCircleAdditiveUniform, 0x598);
GEODE_MEMBER_CHECK(ShaderLayer, m_radialBlurCenterUniform, 0x59c);
GEODE_MEMBER_CHECK(ShaderLayer, m_radialBlurValueUniform, 0x5a0);
GEODE_MEMBER_CHECK(ShaderLayer, m_blurFadeUniform, 0x5a4);
GEODE_MEMBER_CHECK(ShaderLayer, m_motionBlurValueUniform, 0x5a8);
GEODE_MEMBER_CHECK(ShaderLayer, m_motionBlurMultUniform, 0x5ac);
GEODE_MEMBER_CHECK(ShaderLayer, m_motionBlurDualUniform, 0x5b0);
GEODE_MEMBER_CHECK(ShaderLayer, m_bulgeValueUniform, 0x5b4);
GEODE_MEMBER_CHECK(ShaderLayer, m_bulgeValue2Uniform, 0x5b8);
GEODE_MEMBER_CHECK(ShaderLayer, m_bulgeOriginUniform, 0x5bc);
GEODE_MEMBER_CHECK(ShaderLayer, m_bulgeRadiusUniform, 0x5c0);
GEODE_MEMBER_CHECK(ShaderLayer, m_pinchValueUniform, 0x5c4);
GEODE_MEMBER_CHECK(ShaderLayer, m_pinchCenterPosUniform, 0x5c8);
GEODE_MEMBER_CHECK(ShaderLayer, m_pinchCalcUniform, 0x5cc);
GEODE_MEMBER_CHECK(ShaderLayer, m_pinchRadiusUniform, 0x5d0);
GEODE_MEMBER_CHECK(ShaderLayer, m_grayscaleValueUniform, 0x5d4);
GEODE_MEMBER_CHECK(ShaderLayer, m_grayscaleTintUniform, 0x5d8);
GEODE_MEMBER_CHECK(ShaderLayer, m_grayscaleUseLumUniform, 0x5dc);
GEODE_MEMBER_CHECK(ShaderLayer, m_sepiaValueUniform, 0x5e0);
GEODE_MEMBER_CHECK(ShaderLayer, m_invertColorValueUniform, 0x5e4);
GEODE_MEMBER_CHECK(ShaderLayer, m_hueShiftCosAUniform, 0x5e8);
GEODE_MEMBER_CHECK(ShaderLayer, m_hueShiftSinAUniform, 0x5ec);
GEODE_MEMBER_CHECK(ShaderLayer, m_colorChangeCUniform, 0x5f0);
GEODE_MEMBER_CHECK(ShaderLayer, m_colorChangeBUniform, 0x5f4);
GEODE_MEMBER_CHECK(ShaderLayer, m_rowmodUniform, 0x5f8);
GEODE_MEMBER_CHECK(ShaderLayer, m_colmodUniform, 0x5fc);
GEODE_MEMBER_CHECK(ShaderLayer, m_rowmodCalcUniform, 0x600);
GEODE_MEMBER_CHECK(ShaderLayer, m_colmodCalcUniform, 0x604);
GEODE_MEMBER_CHECK(ShaderLayer, m_splitXStartUniform, 0x608);
GEODE_MEMBER_CHECK(ShaderLayer, m_splitXRangeUniform, 0x60c);
GEODE_MEMBER_CHECK(ShaderLayer, m_splitXRangeMultUniform, 0x610);
GEODE_MEMBER_CHECK(ShaderLayer, m_splitYStartUniform, 0x614);
GEODE_MEMBER_CHECK(ShaderLayer, m_splitYRangeUniform, 0x618);
GEODE_MEMBER_CHECK(ShaderLayer, m_splitYRangeMultUniform, 0x61c);

GEODE_SIZE_CHECK(GJShaderState, 0x298);
GEODE_MEMBER_CHECK(GJShaderState, m_pixelateTargetX, 0x16c);
GEODE_MEMBER_CHECK(GJShaderState, m_pixelateTargetY, 0x170);

GEODE_SIZE_CHECK(CCTextInputNode, 0x258);

#endif