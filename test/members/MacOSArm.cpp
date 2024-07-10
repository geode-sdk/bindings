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


GEODE_SIZE_CHECK(CCTextInputNode, 0x258);

#endif
