#include "Common.hpp"

#ifdef GEODE_IS_ANDROID64

using namespace geode::prelude;

GEODE_SIZE_CHECK(CCObject, 0x38);
GEODE_SIZE_CHECK(CCNode, 0x140);
GEODE_SIZE_CHECK(CCNodeRGBA, 0x158);
GEODE_SIZE_CHECK(CCLayer, 0x198);
GEODE_SIZE_CHECK(CCLayerColor, 0x220);
GEODE_SIZE_CHECK(CCSprite, 0x258);
GEODE_SIZE_CHECK(CCLayer, 0x198);

GEODE_SIZE_CHECK(CCMenu, 0x1b8);
GEODE_SIZE_CHECK(CCMenuItem, 0x178);
GEODE_SIZE_CHECK(CCMenuItemSprite, 0x190);

GEODE_MEMBER_CHECK(TableView, m_cellDelegate, 0x268);
GEODE_MEMBER_CHECK(CCTextInputNode, m_textField, 0x1f8);


GEODE_SIZE_CHECK(GJBaseGameLayer, 0x3690);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player1, 0xdb8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player2, 0xdc0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_groupDict, 0xf10);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_unknownE38, 0xf70);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_linkedGroupDict, 0xfc8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_objectLayer, 0xff0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_groundLayer, 0x1018);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_groundLayer2, 0x1020);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_massiveFloatArray, 0x10e4);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_attempts, 0x30b4);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_shaderLayer, 0x3198);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_startPosObject, 0x31a8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isPracticeMode, 0x3210);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_loadingProgress, 0x3214);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_endPortal, 0x3248);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_queuedButtons, 0x3308);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_uiLayer, 0x3468);
// GEODE_MEMBER_CHECK(GJBaseGameLayer, m_started, 0x3490); // wtf is this
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_sections, 0x34a0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_sectionSizes, 0x3548);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_audioVisualizerBG, 0x35f0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_loadingLayer, 0x3668);


GEODE_SIZE_CHECK(PlayLayer, 0x3970);
GEODE_MEMBER_CHECK(PlayLayer, m_circleWaveArray, 0x37b0);
GEODE_MEMBER_CHECK(PlayLayer, m_attemptLabel, 0x37d0);
GEODE_MEMBER_CHECK(PlayLayer, m_progressBar, 0x37e8);
GEODE_MEMBER_CHECK(PlayLayer, m_jumps, 0x3860);
GEODE_MEMBER_CHECK(PlayLayer, m_hasCompletedLevel, 0x386d);
GEODE_MEMBER_CHECK(PlayLayer, m_isPaused, 0x38d7);
GEODE_MEMBER_CHECK(PlayLayer, m_infoLabel, 0x38e0);

GEODE_SIZE_CHECK(DrawGridLayer, 0x260);
GEODE_MEMBER_CHECK(DrawGridLayer, m_editorLayer, 0x200);
GEODE_MEMBER_CHECK(DrawGridLayer, m_gridSize, 0x25c);

GEODE_SIZE_CHECK(LevelEditorLayer, 0x39d8);
GEODE_MEMBER_CHECK(LevelEditorLayer, m_trailTimer, 0x3788);
GEODE_MEMBER_CHECK(LevelEditorLayer, m_drawGridLayer, 0x37b8);

GEODE_SIZE_CHECK(GameObject, 0x538);
GEODE_MEMBER_CHECK(GameObject, m_particleString, 0x310);

GEODE_SIZE_CHECK(PlayerObject, 0xc38);
GEODE_MEMBER_CHECK(PlayerObject, m_spiderSprite, 0x878);
GEODE_MEMBER_CHECK(PlayerObject, m_unk4e4, 0x590);
GEODE_MEMBER_CHECK(PlayerObject, m_unk56c, 0x648);
GEODE_MEMBER_CHECK(PlayerObject, m_particleSystems, 0x678);
GEODE_MEMBER_CHECK(PlayerObject, m_isHidden, 0x703);
GEODE_MEMBER_CHECK(PlayerObject, m_ghostTrail, 0x708);
GEODE_MEMBER_CHECK(PlayerObject, m_iconSprite, 0x710);
GEODE_MEMBER_CHECK(PlayerObject, m_waveTrail, 0x788);
GEODE_MEMBER_CHECK(PlayerObject, m_gv0096, 0x802);
GEODE_MEMBER_CHECK(PlayerObject, m_robotSprite, 0x870);
GEODE_MEMBER_CHECK(PlayerObject, m_landParticles1, 0x8e0);
GEODE_MEMBER_CHECK(PlayerObject, m_hasCustomGlowColor, 0x950);
GEODE_MEMBER_CHECK(PlayerObject, m_isDart, 0x98c);
GEODE_MEMBER_CHECK(PlayerObject, m_vehicleSize, 0x9c0);
GEODE_MEMBER_CHECK(PlayerObject, m_touchingRings, 0xa08);
GEODE_MEMBER_CHECK(PlayerObject, m_unk814, 0xa50);
GEODE_MEMBER_CHECK(PlayerObject, m_position, 0xa58);
GEODE_MEMBER_CHECK(PlayerObject, m_unk880, 0xa88);
GEODE_MEMBER_CHECK(PlayerObject, m_platformerXVelocity, 0xac0);
GEODE_MEMBER_CHECK(PlayerObject, m_isPlatformer, 0xb38);
GEODE_MEMBER_CHECK(PlayerObject, m_unk950, 0xbe8);
GEODE_MEMBER_CHECK(PlayerObject, m_unk948, 0xbe0);
GEODE_MEMBER_CHECK(PlayerObject, m_gameLayer, 0xc10);

// following are from 2.205 so might not all be right

GEODE_MEMBER_CHECK(SimplePlayer, m_hasCustomGlowColor, 0x29c);

GEODE_MEMBER_CHECK(GameManager, m_playLayer, 0x1d8);
GEODE_MEMBER_CHECK(GameManager, m_levelEditorLayer, 0x1e0);
GEODE_MEMBER_CHECK(GameManager, m_gameLayer, 0x1e8);

GEODE_MEMBER_CHECK(FMODAudioEngine, m_musicVolume, 0x1e8);
GEODE_MEMBER_CHECK(FMODAudioEngine, m_sfxVolume, 0x1ec);
GEODE_MEMBER_CHECK(FMODAudioEngine, m_pulse1, 0x1f8);
GEODE_MEMBER_CHECK(FMODAudioEngine, m_pulse2, 0x1fc);
GEODE_MEMBER_CHECK(FMODAudioEngine, m_pulse3, 0x200);
GEODE_MEMBER_CHECK(FMODAudioEngine, m_metering, 0x208);
GEODE_MEMBER_CHECK(FMODAudioEngine, m_system, 0x218);

GEODE_SIZE_CHECK(SimplePlayer, 0x2a8);
GEODE_SIZE_CHECK(EnhancedGameObject, 0x598);
// GEODE_SIZE_CHECK(EffectGameObject, 0x720);

GEODE_MEMBER_CHECK(GameObject, m_hasExtendedCollision, 0x27c);
GEODE_MEMBER_CHECK(GameObject, m_activeMainColorID, 0x290);
GEODE_MEMBER_CHECK(GameObject, m_glowSprite, 0x2f0);
GEODE_MEMBER_CHECK(GameObject, m_colorSprite, 0x368);
GEODE_MEMBER_CHECK(GameObject, m_baseColor, 0x438);
GEODE_MEMBER_CHECK(GameObject, m_groups, 0x478);
GEODE_MEMBER_CHECK(GameObject, m_isHighDetail, 0x4db);
GEODE_MEMBER_CHECK(GameObject, m_isPassable, 0x4fd);
GEODE_MEMBER_CHECK(GameObject, m_property155, 0x518);

GEODE_MEMBER_CHECK(LevelInfoLayer, m_circle, 0x278);
GEODE_MEMBER_CHECK(LevelInfoLayer, m_challenge, 0x2b0);
GEODE_MEMBER_CHECK(LevelInfoLayer, m_songWidget, 0x2d0);

GEODE_MEMBER_CHECK(LevelEditorLayer, m_editorUI, 0x3790);

GEODE_SIZE_CHECK(FLAlertLayer, 0x278);
GEODE_SIZE_CHECK(BoomListView, 0x1d0);
GEODE_SIZE_CHECK(CustomListView, 0x1d8);
GEODE_SIZE_CHECK(CCMenuItemSpriteExtra, 0x1d8);
GEODE_SIZE_CHECK(LoadingLayer, 0x1c8);
GEODE_SIZE_CHECK(GJDropDownLayer, 0x260);
GEODE_SIZE_CHECK(Slider, 0x1c8);
GEODE_SIZE_CHECK(SliderTouchLogic, 0x1e0);
GEODE_SIZE_CHECK(CCScrollLayerExt, 0x200);
GEODE_SIZE_CHECK(TableView, 0x290);
GEODE_SIZE_CHECK(CCTextInputNode, 0x238);
GEODE_SIZE_CHECK(CCTouchDispatcher, 0x90);

GEODE_SIZE_CHECK(TableViewCell, 0x218);
GEODE_MEMBER_CHECK(TableViewCell, m_tableView, 0x1a0);
GEODE_MEMBER_CHECK(TableViewCell, m_indexPath, 0x1a8);
GEODE_MEMBER_CHECK(TableViewCell, m_unknownString, 0x1f0);
GEODE_MEMBER_CHECK(TableViewCell, m_width, 0x1f8);
GEODE_MEMBER_CHECK(TableViewCell, m_height, 0x1fc);
GEODE_MEMBER_CHECK(TableViewCell, m_mainLayer, 0x208);

GEODE_MEMBER_CHECK(TableView, m_cellDelegate, 0x268);
GEODE_MEMBER_CHECK(CCTextInputNode, m_textField, 0x1f8);

GEODE_MEMBER_CHECK(GameLevelManager, m_commentUploadDelegate, 0x2e8);

GEODE_MEMBER_CHECK(GJAccountManager, m_username, 0x148);
GEODE_MEMBER_CHECK(GJAccountManager, m_GJP2, 0x160);

GEODE_MEMBER_CHECK(EditorUI, m_buttonBar, 0x258);
GEODE_MEMBER_CHECK(EditorUI, m_editButtonBar, 0x2f8);
GEODE_MEMBER_CHECK(EditorUI, m_positionSlider, 0x300);
GEODE_MEMBER_CHECK(EditorUI, m_selectedObjects, 0x338);
GEODE_MEMBER_CHECK(EditorUI, m_selectedMode, 0x4e8);
GEODE_MEMBER_CHECK(EditorUI, m_selectedObject, 0x528);
GEODE_MEMBER_CHECK(EditorUI, m_selectedTab, 0x548);

GEODE_MEMBER_CHECK(ChallengesPage, m_dots, 0x290);
GEODE_MEMBER_CHECK(ChallengesPage, m_challengeNodes, 0x2B8);

GEODE_MEMBER_CHECK(GJEffectManager, m_colorActionDict, 0x260);
//GEODE_MEMBER_CHECK(GJEffectManager, m_itemIDs, 0x318);

GEODE_MEMBER_CHECK(HardStreak, m_pointArray, 0x1a0);

#endif
