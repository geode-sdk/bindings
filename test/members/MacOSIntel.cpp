#include "Common.hpp"

#ifdef GEODE_IS_INTEL_MAC

// // PlayerObject
// GEODE_MEMBER_CHECK(PlayerObject, m_collisionLog, 0x518);
// GEODE_MEMBER_CHECK(PlayerObject, m_particleSystems, 0x590);
// GEODE_MEMBER_CHECK(PlayerObject, m_waveTrail, 0x600);
// GEODE_MEMBER_CHECK(PlayerObject, m_objectSnappedTo, 0x690);
// GEODE_MEMBER_CHECK(PlayerObject, m_playerColor1, 0x7c2);

// // EditorUI
// GEODE_MEMBER_CHECK(EditorUI, m_buttonBar, 0x1a0);
// GEODE_MEMBER_CHECK(EditorUI, m_scaleControl, 0x208);
// GEODE_MEMBER_CHECK(EditorUI, m_swipeEnabled, 0x23c);
// GEODE_MEMBER_CHECK(EditorUI, m_updateTimeMarkers, 0x244);
// GEODE_MEMBER_CHECK(EditorUI, m_selectedObjects, 0x260);
// GEODE_MEMBER_CHECK(EditorUI, m_selectedObject, 0x440);
// GEODE_MEMBER_CHECK(EditorUI, m_transformState, 0x1f8);
// GEODE_MEMBER_CHECK(EditorUI, m_updatedSpeedObjects, 0x30c);

// // LevelEditorLayer
// GEODE_MEMBER_CHECK(LevelEditorLayer, m_editorUI, 0x35c0);
// GEODE_MEMBER_CHECK(LevelEditorLayer, m_level, 0x618);
// GEODE_MEMBER_CHECK(LevelEditorLayer, m_coinCount, 0x3534);
// GEODE_MEMBER_CHECK(LevelEditorLayer, m_undoObjects, 0x3598);
GEODE_MEMBER_CHECK(LevelEditorLayer, m_trailTimer, 0x35b8);

// // PlayLayer
// GEODE_MEMBER_CHECK(PlayLayer, unknown518, 0x518);
// GEODE_MEMBER_CHECK(PlayLayer, unknown5f4, 0x5f4);
// GEODE_MEMBER_CHECK(PlayLayer, unknown680, 0x680);
// GEODE_MEMBER_CHECK(PlayLayer, m_replayInputs, 0x6a8);
// GEODE_MEMBER_CHECK(PlayLayer, m_level, 0x728);
// GEODE_MEMBER_CHECK(PlayLayer, m_shouldTryToKick, 0x7a8);
GEODE_MEMBER_CHECK(PlayLayer, m_coinArray, 0x3508);
GEODE_MEMBER_CHECK(PlayLayer, m_unkSomeFloat, 0x35a4);
GEODE_MEMBER_CHECK(PlayLayer, m_hasCompletedLevel, 0x368D);
GEODE_MEMBER_CHECK(PlayLayer, m_endLayerStars, 0x3694);
GEODE_MEMBER_CHECK(PlayLayer, m_isPaused, 0x36F7);

// // GameManager
// GEODE_MEMBER_CHECK(GameManager, m_playLayer, 0x180);
// GEODE_MEMBER_CHECK(GameManager, m_levelEditorLayer, 0x188);
// GEODE_MEMBER_CHECK(GameManager, m_menuLayer, 0x198);
// GEODE_MEMBER_CHECK(GameManager, m_playerUDID, 0x1b8);
// GEODE_MEMBER_CHECK(GameManager, m_playerUserID, 0x1cc);
// GEODE_MEMBER_CHECK(GameManager, m_playerFrame, 0x200);
// GEODE_MEMBER_CHECK(GameManager, m_clickedGarage, 0x2a2); // todo: find why this is not 0x2a2

// // GameObject
// GEODE_MEMBER_CHECK(GameObject, m_baseColorID, 0x27c);
// GEODE_MEMBER_CHECK(GameObject, m_detailColorID, 0x280);
// GEODE_MEMBER_CHECK(GameObject, m_active, 0x2e5);
// GEODE_MEMBER_CHECK(GameObject, m_baseSprite, 0x348);
// GEODE_MEMBER_CHECK(GameObject, m_startPosition, 0x37c);
// GEODE_MEMBER_CHECK(GameObject, m_baseColor, 0x410);
// GEODE_MEMBER_CHECK(GameObject, m_groups, 0x458);
// GEODE_MEMBER_CHECK(GameObject, m_effectManager, 0x4d8);

// // EffectGameObject
// GEODE_MEMBER_CHECK(EffectGameObject, m_duration, 0x4f0);
// GEODE_MEMBER_CHECK(EffectGameObject, m_followMod, 0x530);
// GEODE_MEMBER_CHECK(EffectGameObject, m_hsvValue, 0x560);
// GEODE_MEMBER_CHECK(EffectGameObject, m_spawnDelay, 0x588);
// GEODE_MEMBER_CHECK(EffectGameObject, m_itemBlockAID, 0x5b0);

// // TeleportPortalObject
// GEODE_MEMBER_CHECK(TeleportPortalObject, m_orangePortal, 0x4f8);

// // StartPosObject
// GEODE_MEMBER_CHECK(StartPosObject, m_levelSettings, 0x5e0);

// // SetupPulsePopup
// GEODE_MEMBER_CHECK(SetupPulsePopup, m_currentColorSpr, 0x2d0);
// GEODE_MEMBER_CHECK(SetupPulsePopup, m_pulseMode, 0x38c);

// // ColorSelectPopup
// GEODE_MEMBER_CHECK(ColorSelectPopup, m_copyColor, 0x372);

// // LevelInfoLayer
// GEODE_MEMBER_CHECK(LevelInfoLayer, m_level, 0x1c0);

// // LevelBrowserLayer
// GEODE_MEMBER_CHECK(LevelBrowserLayer, m_rightArrow, 0x1a8);
// GEODE_MEMBER_CHECK(LevelBrowserLayer, m_leftArrow, 0x1b0);
// GEODE_MEMBER_CHECK(LevelBrowserLayer, m_searchObject, 0x1d8);
// GEODE_MEMBER_CHECK(LevelBrowserLayer, m_itemCount, 0x208);

// // LocalLevelManager
// GEODE_MEMBER_CHECK(LocalLevelManager, m_localLevels, 0x140);

// // GameStatsManager
// GEODE_MEMBER_CHECK(GameStatsManager, m_dailyChests, 0x170);
// GEODE_MEMBER_CHECK(GameStatsManager, m_completedLevels, 0x200);
// GEODE_MEMBER_CHECK(GameStatsManager, m_weeklyChest, 0x278);

// // DailyLevelPage
// GEODE_MEMBER_CHECK(DailyLevelPage, m_weekly, 0x291);

// // GameLevelManager
// GEODE_MEMBER_CHECK(GameLevelManager, m_weeklyID, 0x1a8);
// GEODE_MEMBER_CHECK(GameLevelManager, m_gauntletLevels, 0x1b0);
// GEODE_MEMBER_CHECK(GameLevelManager, m_timerDict, 0x1e8);
// GEODE_MEMBER_CHECK(GameLevelManager, m_accountIDtoUserIDDict, 0x1f8);
// GEODE_MEMBER_CHECK(GameLevelManager, m_userIDtoAccountIDDict, 0x200);

// GEODE_MEMBER_CHECK(GameLevelManager, m_mainLevels, 0x158);

GEODE_MEMBER_CHECK(GJBaseGameLayer, m_level, 0x788);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_effectManager, 0x848);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player1, 0xc98);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_groupDict, 0xde0);
// GEODE_MEMBER_CHECK(GJBaseGameLayer, m_linkedGroupDict, 0xe80);
// GEODE_MEMBER_CHECK(GJBaseGameLayer, m_objectLayer, 0xea8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_massiveFloatArray, 0xf6c);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_shaderLayer, 0x2fd8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_startPosObject, 0x2fe8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isPracticeMode, 0x3050);
// GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isDead, 0x30a2);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_queuedButtons, 0x3158);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_unk3458, 0x3288);
// GEODE_MEMBER_CHECK(GJBaseGameLayer, m_uiLayer, 0x3290);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_sections, 0x32f8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_loadingLayer, 0x3498);

// GEODE_MEMBER_CHECK(PlayLayer, m_circleWaveArray, 0x35a0);
// GEODE_MEMBER_CHECK(PlayLayer, m_attemptLabel, 0x35c0);
// GEODE_MEMBER_CHECK(PlayLayer, m_progressBar, 0x35d8);
// GEODE_MEMBER_CHECK(PlayLayer, m_colorKeyDict, 0x36e0);

// GEODE_SIZE_CHECK(GJDropDownLayer, 0x268);
// GEODE_MEMBER_CHECK(GJDropDownLayer, m_mainLayer, 0x248);

// GEODE_SIZE_CHECK(GJBaseGameLayer, 0x3488);
// GEODE_SIZE_CHECK(GameObject, 0x548);
// GEODE_SIZE_CHECK(PlayLayer, 0x3758);
// GEODE_SIZE_CHECK(GJGameState, 0x5d8);
// GEODE_SIZE_CHECK(UILayer, 0x278);

// GEODE_MEMBER_CHECK(GameObject, m_objectType, 0x398);
// GEODE_MEMBER_CHECK(GameObject, m_realXPosition, 0x3b0);
// GEODE_MEMBER_CHECK(GameObject, m_realYPosition, 0x3b8);
// GEODE_MEMBER_CHECK(GameObject, m_startPosition, 0x3c0);
// GEODE_MEMBER_CHECK(GameObject, m_groups, 0x488);
// GEODE_MEMBER_CHECK(GameObject, m_colorGroups, 0x498);
// GEODE_MEMBER_CHECK(GameObject, m_opacityGroups, 0x4a8);

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
// GEODE_MEMBER_CHECK(PlayerObject, m_hasCustomGlowColor, 0x910);
// GEODE_MEMBER_CHECK(PlayerObject, m_glowColor, 0x911);
// GEODE_MEMBER_CHECK(PlayerObject, m_isShip, 0x941);
// GEODE_MEMBER_CHECK(PlayerObject, m_isRobot, 0x945);
// GEODE_MEMBER_CHECK(PlayerObject, m_platformerXVelocity, 0xa28);
// GEODE_MEMBER_CHECK(PlayerObject, m_isPlatformer, 0xaa0);

// GEODE_SIZE_CHECK(FMODAudioEngine, 0x648);
// GEODE_MEMBER_CHECK(FMODAudioEngine, m_musicVolume, 0x1b8);
// GEODE_MEMBER_CHECK(FMODAudioEngine, m_sfxVolume, 0x1bc);
// GEODE_MEMBER_CHECK(FMODAudioEngine, m_pulse1, 0x1c8);
// GEODE_MEMBER_CHECK(FMODAudioEngine, m_pulse2, 0x1cc);
// GEODE_MEMBER_CHECK(FMODAudioEngine, m_pulse3, 0x1d0);
// GEODE_MEMBER_CHECK(FMODAudioEngine, m_metering, 0x1d8);
GEODE_MEMBER_CHECK(FMODAudioEngine, m_system, 0x1e8);

// GEODE_MEMBER_CHECK(CustomSongCell, m_songInfoObject, 0x230);
// GEODE_MEMBER_CHECK(SongInfoObject, m_songID, 0x13c);

// GEODE_MEMBER_CHECK(GJEffectManager, m_colorActionDict, 0x230);


GEODE_SIZE_CHECK(CCTextInputNode, 0x258);

#endif
