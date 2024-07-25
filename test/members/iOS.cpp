#include "Common.hpp"

#ifdef GEODE_IS_IOS

// GEODE_SIZE_CHECK(PlayLayer, 0x3790);
GEODE_MEMBER_CHECK(PlayLayer, m_coinArray, 0x2f40);
GEODE_MEMBER_CHECK(PlayLayer, m_unkSomeFloat, 0x2f5c);
GEODE_MEMBER_CHECK(PlayLayer, m_jumps, 0x2fe0);
GEODE_MEMBER_CHECK(PlayLayer, m_hasCompletedLevel, 0x2fed);
GEODE_MEMBER_CHECK(PlayLayer, m_endLayerStars, 0x2ff4);
GEODE_MEMBER_CHECK(PlayLayer, m_isPaused, 0x3000);

GEODE_MEMBER_CHECK(LevelEditorLayer, m_trailTimer, 0x2ff0);

// GEODE_SIZE_CHECK(FMODAudioEngine, 0x648);
GEODE_MEMBER_CHECK(FMODAudioEngine, m_system, 0x1e0);


GEODE_SIZE_CHECK(GJBaseGameLayer, 0x2ef8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_groupDict, 0xd08);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_massiveFloatArray, 0xe30);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_attempts, 0x2d70);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_shaderLayer, 0x2da0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_startPosObject, 0x2db0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isPracticeMode, 0x2db8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_queuedButtons, 0x2e18);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_unk3458, 0x2e30);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_uiLayer, 0x2e40);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_sections, 0x2e70);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_audioVisualizerBG, 0x2eb8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_loadingLayer, 0x2ed0);


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

GEODE_SIZE_CHECK(CCLightFlash, 0x168);
GEODE_SIZE_CHECK(CCLightStrip, 0x160);

#endif
